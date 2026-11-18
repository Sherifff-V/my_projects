from tokenizers import Tokenizer

tokenizer_1 = Tokenizer.from_pretrained('FacebookAI/xlm-roberta-base')
tokenizer_2 = Tokenizer.from_pretrained('bert-base-multilingual-cased')

examples = ["пример", "Пример", "ПРИМЕР", " пример", "пример!"]

texts = [
    "Show an example of using the function.",
    "Покажи пример использования функции.",
]

lang = ['EN', 'RU']


# № 1

print('FacebookAI/xlm-roberta-base:', '\n')
for e_1 in examples:
    encoding = tokenizer_1.encode(e_1, add_special_tokens=False)
    print(f"{repr(e_1)} {len(encoding.tokens)}  {encoding.tokens}")

# Регистр меняет разбиение: 'пример'/'Пример' — целые, 'ПРИМЕР' дробится.
# Начальный пробел = '▁' в SentencePiece, но число токенов не меняет.
# '!' — отдельный токен.


# № 2
print('\n')

print('FacebookAI/xlm-roberta-base:', '\n')
for text in texts:
    encoding = tokenizer_1.encode(text, add_special_tokens=False)
    print(f"{lang[texts.index(text)]}: {len(text)} символов, {len(encoding.tokens):2} токенов, {(len(text) / len(encoding.tokens)):.2f} символы/токены ")

print('\n')

print('bert-base-multilingual-cased:', '\n')
for text in texts:
    encoding = tokenizer_2.encode(text, add_special_tokens=False)
    print(f"{lang[texts.index(text)]}: {len(text)} символов, {len(encoding.tokens):2} токенов, {(len(text) / len(encoding.tokens)):.2f} символы/токены ")

# EN: оба токенизатора близки.
# RU: XLM-R покрывает больше целых русских слов → меньше токенов;
#     mBERT дробит русские слова чаще → токенов больше.


# № 3
print('\n')

text = "Пример добавлен в документацию."

plain = tokenizer_1.encode(text, add_special_tokens=False)
full = tokenizer_1.encode(text, add_special_tokens=True)

print(f"Без спецтокенов: {plain.ids} - ids, \n {plain.tokens} - tokens, \n {plain.special_tokens_mask} - mask, \n {tokenizer_1.decode(plain.ids)!r} - decode")
print(f"Со спецтокенами: {full.ids} - ids, \n {full.tokens} - tokens, \n {full.special_tokens_mask} - mask, \n {tokenizer_1.decode(full.ids, skip_special_tokens=True)!r} - decode")
print({t: tokenizer_1.token_to_id(t) for t in ['<s>', '</s>', '<pad>', '<unk>', '<mask>']})

# Без спецтокенов маска вся из 0.
# С спецтокенами добавились <s> в начало и </s> в конец → в маске 1 на их позициях.
# <pad>, <unk>, <mask> сами не добавляются.