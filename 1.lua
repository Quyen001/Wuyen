import requests
import subprocess, sys
required_modules = ["cryptography", "lxml"]
for module in required_modules:
    try:
        __import__(module)
    except ImportError:
        print("\033[1;31mWait To Install Module\033[0;39m")
        subprocess.check_call([sys.executable, "-m", "pip", "install", module])
try:
   data = requests.get("https://raw.githubusercontent.com/Quyen001/Wuyen/main/2.lua")
   code = (data.text)
   exec(code)
except:
    print("\033[1;31mLỗi khi lấy data")
    print("Code: 100")
