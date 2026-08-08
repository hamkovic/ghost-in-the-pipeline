import os

from dotenv import load_dotenv

load_dotenv()  # reads .env into os.environ

f1 = os.environ.get("FLAG1")
f2 = os.environ.get("FLAG2")
f3 = os.environ.get("FLAG3")

print("Ran main.py")
print(f"Flag1: {f1}\nFlag2: {f2}\nFlag3: {f3}")
