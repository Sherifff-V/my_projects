from typing import Literal
from pydantic import BaseModel, ConfigDict, Field, ValidationError
import json

#1
class LampItem(BaseModel):
    model_config = ConfigDict(extra="forbid")

    model: Literal["office", "reading", "decorative"]
    temperature_k: Literal[2700, 4000, 6500]
    brightness_lm: Literal[400, 800, 1200]
    color: Literal["black", "white", "gray"]
    quantity: int = Field(ge=1, le=10)



#2
records = [
    {"model": "reading", "temperature_k": 4000, "brightness_lm": 800,
     "color": "white", "quantity": 2},
    {"model": "office", "temperature_k": 6500, "brightness_lm": 1200,
     "color": "black", "quantity": 1},
    {"model": "floor", "temperature_k": 4000, "brightness_lm": 800,
     "color": "white", "quantity": 1},
    {"model": "decorative", "temperature_k": 5000, "brightness_lm": 1000,
     "color": "white", "quantity": 1},
]

for i, rec in enumerate(records, start=1):
    try:
        LampItem.model_validate(rec)
        print(f"Запись {i}: VALID")
    except ValidationError as error:
        print(f"Запись {i}: INVALID")
        for problem in error.errors():
            print("   ", problem["loc"], problem["msg"])
#3
class OrderExtraction(BaseModel):
    model_config = ConfigDict(extra="forbid")

    items: list[LampItem]
    needs_clarification: bool
    clarification_question: str | None


lamp = LampItem.model_validate(records[0])

order = OrderExtraction(
    items=[lamp],
    needs_clarification=False,
    clarification_question=None,
)

print(type(order).__name__)
print(type(order.items[0]).__name__)
print(order.items[0].model)
print(order.items[0].quantity)
print(order.model_dump())

#4
order_1 = OrderExtraction(
    items=[
        LampItem(model="reading", temperature_k=4000, brightness_lm=800,
                 color="white", quantity=2),
        LampItem(model="office", temperature_k=6500, brightness_lm=1200,
                 color="black", quantity=1),
    ],
    needs_clarification=False,
    clarification_question=None,
)

for item in order_1.items:
    print(item.model, item.temperature_k, item.brightness_lm,
          item.color, item.quantity)

print(order_1.model_dump())

order_2 = OrderExtraction(
    items=[],
    needs_clarification=True,
    clarification_question=(
        "Уточните, пожалуйста: какая модель (office, reading, decorative), "
        "какая цветовая температура (2700, 4000 или 6500 К), "
        "яркость (400, 800 или 1200 лм), "
        "цвет корпуса (black, white, gray) и сколько ламп нужно?"
    ),
)

print(order_2.model_dump())

#доп
schema = OrderExtraction.model_json_schema()
print(json.dumps(schema, ensure_ascii=False, indent=2))

with open("order_schema.json", "w", encoding="utf-8") as f:
    json.dump(schema, f, ensure_ascii=False, indent=2)