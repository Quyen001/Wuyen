# Import the required modules
import os
import subprocess
from time import sleep
import requests
import json
import sys
# Define a function to clear the screen
def clear():
    if os.name == "nt": # Windows
    # Use the start command to open the link
      os.system("cls")
    elif os.name == "posix": # Linux or Mac
    # Use the xdg-open or open command to open the link
       try:
          os.system("clear")
       except FileNotFoundError:
          os.system("clear")
    else:
       os.system("clear")
       
def canhbao():
    print("\033[1;31mTool beta nếu có lỗi. Hãy Report đến")
    print("\033[1;36mDiscord: \033[1;39mhoangminhlong06")
    sleep(3.55)
    clear()

       
def toolnocf():         
    clear()
    canhbao()
    print("\033[1;33mChọn game bạn muốn treo")
    print("\033[1;32m1.\033[1;33m BloxFruits\n\033[1;32m2.\033[1;33m BladeBall\n\033[1;32m3.\033[1;33m King Legacy\n\033[1;32m4.\033[1;33m Anime Fighters\n\033[1;32m5.\033[1;33m Game khác")
    cplaceid = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
    if cplaceid == "1":
       placeid = "2753915549"
    elif cplaceid == "2":
       placeid = "13772394625"
    elif cplaceid == "3":
       placeid = "4520749081"
    elif cplaceid == "4":
       placeid = "6299805723"
    elif cplaceid == "5":
       sleep(0.75)
       clear()
       print("\033[1;33mNhập PlaceId của game\n\033[1;31mVD: 2753915549\033[0;39m")
       placeid = input("\033[1;36mVui lòng nhập: \033[0;39m")
    else:
       print("\033[1;31mSai lựa chọn")
       return # Return from the function if the input is invalid
    file = open('config_tool_rejoin.txt', 'w')
    file.write(placeid)
    file.write("\n")
    sleep(0.75)
    clear()
    roblox_link = "roblox://placeId="
    print("\033[1;33mNhập thời gian chờ(s)\033[0;39m")
    print("\033[1;31mKhuyến khích: Nên để trên 60 nếu máy mạnh. Trên 120 nếu máy yếu\033[0;39m")
    try: # Use a try-except block to catch errors
        wait = int(input("\033[1;36mVui lòng nhập: \033[0;39m"))
        file.write(str(wait))
        file.write("\n")
        sleep(0.75)
        clear()
        print("\033[1;33mNhập tên tài khoản treo \033[0;39m")
        print("\033[1;31mTên(UserName) không phải DisplayName\033[0;39m")
        username = input("\033[1;36mVui lòng nhập: \033[0;39m")
        file.write(username)
        file.write("\n")
        file.close()
        user_names = [username]
        url = "https://users.roblox.com/v1/usernames/users"
        payload = json.dumps({"usernames": user_names})
        headers = {"Content-Type": "application/json"}
        response = requests.post(url, data=payload, headers=headers)
        data = response.json()
        for user in data["data"]:
            user_id = user["id"]
            user_name = user["name"]
            user_ids = [user_id]
        clear()
    except ValueError: # Handle the error if the input is not an integer
        print("\033[1;31mVui lòng nhập số nguyên\033[0;39m") 
        return
    clear()
    url = "https://presence.roblox.com/v1/presence/users"
    payload = json.dumps({"userIds": user_ids})
    headers = {"Content-Type": "application/json"}
    response = requests.post(url, data=payload, headers=headers)
    data = response.json()
    def joingame():
        roblox_linkP = roblox_link + placeid
        if os.name == "nt": 
           subprocess.run(["start", roblox_linkP], shell=True)
           sleep(wait)
        elif os.name == "posix": # Linux or Mac
           try:
             subprocess.run(["xdg-open", roblox_linkP])
             sleep(wait)
           except FileNotFoundError:
            subprocess.run(["open", roblox_linkP])
            sleep(wait)
        else:
            print("\033[1;31mTool không hỗ trợ thiết bị của bạn !!\033[0;39m")
    so = 1
    while True:
       url = "https://presence.roblox.com/v1/presence/users"
       payload = json.dumps({"userIds": user_ids})
       headers = {"Content-Type": "application/json"}
       response = requests.post(url, data=payload, headers=headers)
       data = response.json()
       for user in data["userPresences"]:
          if so == 1:
           if (user["userPresenceType"]) == 2:
               clear()
               print("\033[0;39m----\033[1;33mThông tin\033[0;39m----")
               print("\033[1;33mPlaceId:\033[0;39m", placeid)
               print("\033[1;33mUserName:\033[0;39m", username)
               print("\033[1;33mUserId:\033[0;39m", int(user_id))
               print("\033[1;39m----\033[0;33mTrạng thái\033[0;39m----")
               print("\033[1;33mTrạng thái: \033[0;32mOnline\033[0;39m | \033[0;32mGame đang chạy...")
               so = so+1
           else:
               clear()
               print("\033[1;39m----\033[0;33mThông tin\033[0;39m----")
               print("\033[1;33mPlaceId:\033[0;39m", placeid)
               print("\033[1;33mUserName:\033[0;39m", username)
               print("\033[1;33mUserId:\033[0;39m", int(user_id))
               print("\033[1;39m----\033[0;33mTrạng thái\033[0;39m----")
               print("\033[1;33mTrạng thái: \033[0;31mOffline\033[0;39m | \033[0;32mVào game...")
               joingame()
               so = so+1
          else:
            if (user["userPresenceType"]) == 2:
               clear()
               print("\033[1;39m----\033[0;33mThông tin\033[0;39m----")
               print("\033[1;33mPlaceId:\033[0;39m", placeid)
               print("\033[1;33mUserName:\033[0;39m", username)
               print("\033[1;33mUserId:\033[0;39m", int(user_id))
               print("\033[1;39m----\033[0;33mTrạng thái\033[0;39m----")
               print("\033[1;33mTrạng thái: \033[0;32mOnline\033[0;39m | \033[0;32mGame đang chạy...")
            else:
               clear()
               print("\033[1;39m----\033[0;33mThông tin\033[0;39m----")
               print("\033[1;33mPlaceId:\033[0;39m", placeid)
               print("\033[1;33mUserName:\033[0;39m", username)
               print("\033[1;33mUserId:\033[0;39m", int(user_id))
               print("\033[1;39m----\033[0;33mTrạng thái\033[0;39m----")
               print("\033[1;33mTrạng thái: \033[0;31mOffline\033[0;39m | \033[0;32mVào lại game...")
               joingame() 
toolnocf()