# Import the required modules
import os
import subprocess
from time import sleep
import requests
import json
import sys
import webbrowser
import socket
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
    print("\033[1;39m-------------------")

def exp():
    webbrowser.open(link)
    print("\033[1;33mĐường link tải "+nameexploit+":\033[0;39m",link)  
    


def nhapkey():
   rutgon = requests.get("https://raw.githubusercontent.com/Quyen001/Wuyen/main/3.lua")
   rutgon0 = (rutgon.text.strip())
   print("\033[1;33mLink get key:\033[0;39m "+ rutgon0)
   key = input("\033[1;36mNhập Key: \033[0;39m")
   rkey = requests.get("https://raw.githubusercontent.com/Quyen001/Wuyen/main/2.lua")
   rkey0 = (rkey.text.strip())
   if key == rkey0:
      print("\033[1;32mKey đúng")
      sleep(0.75)
   else:
      print("\033[1;31mKey sai.")
      sleep(1.25)
      clear()
      return nhapkey()
   file = open('key_tool_rejoin.txt', 'w')
   file.write(key)
   file.close()
   clear()
   
def checkkeyfile():
   file = open('key_tool_rejoin.txt', 'r')
   lines = file.readlines()
   key = lines[0].strip()
   file.close()
   rkey = requests.get("https://raw.githubusercontent.com/Quyen001/Wuyen/main/2.lua")
   rkey0 = (rkey.text.strip())
   if key == rkey0:
      pass
      clear()
      pass
   else:
      print("\033[1;31mKey đã hết hạn. Vui lòng lấy key mới")
      nhapkey()
      
clear()     
try:
   file = open('key_tool_rejoin.txt', 'r')
   lines = file.readlines()
   file.close()
   checkkeyfile()
except:
   nhapkey()
   
def bugrp():
       response = requests.get("https://ifconfig.me")
       ip_address = response.text   
       message = f"ip: {ip_address}"
       n = "\n"    
       webhook_url = "https://discord.com/api/webhooks/1169992623822479421/WLwn4J0kBeyi9c4ixNDeDe6skJLSWUQKJvG73dsnyWFDBu0JBtVFak--uUAJwwqcfHgW"
       bugrpmess = input("\033[1;36mNhập Lỗi Bạn Gặp Phải: \033[0;39m")
       bugrplink = "https://discord.com/api/webhooks/1170735901052256256/yLpbqUhTNjMzMzBpihfhyAOvYh0MbWdSItI6kaFWtM9AjXXV-TkEA6a7H4VNlVviX-4N"
       try:
        requests.post(bugrplink, json={"content": message + n + "Lỗi: " + bugrpmess})
        clear()
        print('\033[0;32mĐã gửi thành công')
        print("\033[1;32m1.\033[1;33m Gửi lại\n\033[1;32m2.\033[1;33m Vào Tool Rejoin\n\033[1;32m3.\033[1;33m Tải Fluxus (\033[1;32m Working \033[1;33m)\n\033[1;32m4.\033[1;33m Tải CodeX (\033[1;32m Working \033[1;33m)\n\033[1;32m5.\033[1;33m Thoát Tool")
        chucnang1 = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
        if chucnang1 == "1":
           clear()
           return bugrp()
        elif chucnang1 == "2":
             clear()
             try:
                  file = open('config_tool_rejoin.txt', 'r')
                  lines = file.readlines()
                  file.close()
                  print("\033[1;33mCó Config đã lưu")
                  print("\033[1;32m1. \033[1;33mDùng\n\033[1;32m2. \033[1;33mKhông dùng")
                  chooseconfig = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
                  if chooseconfig == "1":
                     clear()
                     sleep(0.75)
                     main()
                  elif chooseconfig == "2":
                        main0()
                  else:
                    print("\033[1;31mSai lựa chọn") 
             except:
                     main0()
        elif chucnang1 == "3":
              link = "https://drive.google.com/file/d/1V3jUeJlFD0KPysR_VxeuPKTYhEhBMjN7/view?usp=drive_link"
              nameexploit = "Fluxus"
              exp()
              sleep(2.75)
              exit()
        elif chucnang1 == "4":
           link = "https://drive.google.com/file/d/1MPBxFI6sP9v63_AFYl9H3pPq_-QxYOUS/view?usp=sharing"
           nameexploit = "CodeX"
           exp()
           sleep(2.75)
           exit()
        elif chucnang1 == "5":
           exit()
        else:
                     print("\033[1;31mSai lựa chọn")
        
       except:
          print("\033[0;31mLỗi. Không thể gửi")
          sleep(2.75)
          return bugrp()
       
       
def suggest():
       response = requests.get("https://ifconfig.me")
       ip_address = response.text   
       message = f"ip: {ip_address}"
       n = "\n"    
       webhook_url = "https://discord.com/api/webhooks/1169992623822479421/WLwn4J0kBeyi9c4ixNDeDe6skJLSWUQKJvG73dsnyWFDBu0JBtVFak--uUAJwwqcfHgW"
       suggestmess = input("\033[1;36mNhập Ý Kiến Của Bạn: \033[0;39m")
       suggestlink = "https://discord.com/api/webhooks/1170740555878240357/9LSSpPII4OJEtyfhfZZXAroK0sRvfwXweIE7rvAGexu5bZ0mcZtndzCY35nsQmnLtNMd"
       try:
        requests.post(suggestlink, json={"content": message + n + "Ý Kiến: " + suggestmess})
        clear()
        print('\033[0;32mĐã gửi thành công')
        print("\033[1;32m1.\033[1;33m Gửi lại\n\033[1;32m2.\033[1;33m Vào Tool Rejoin\n\033[1;32m3.\033[1;33m Tải Fluxus (\033[1;32m Working \033[1;33m)\n\033[1;32m4.\033[1;33m Tải CodeX (\033[1;32m Working \033[1;33m)\n\033[1;32m5.\033[1;33m Thoát Tool")
        chucnang1 = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
        if chucnang1 == "1":
           clear()
           return suggest()
        elif chucnang1 == "2":
             clear()
             try:
                  file = open('config_tool_rejoin.txt', 'r')
                  lines = file.readlines()
                  file.close()
                  print("\033[1;33mCó Config đã lưu")
                  print("\033[1;32m1. \033[1;33mDùng\n\033[1;32m2. \033[1;33mKhông dùng")
                  chooseconfig = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
                  if chooseconfig == "1":
                     clear()
                     sleep(0.75)
                     main()
                  elif chooseconfig == "2":
                        main0()
                  else:
                    print("\033[1;31mSai lựa chọn") 
             except:
                     main0()
        elif chucnang1 == "3":
              link = "https://drive.google.com/file/d/1V3jUeJlFD0KPysR_VxeuPKTYhEhBMjN7/view?usp=drive_link"
              nameexploit = "Fluxus"
              exp()
              sleep(2.75)
              exit()
        elif chucnang1 == "4":
           link = "https://drive.google.com/file/d/1MPBxFI6sP9v63_AFYl9H3pPq_-QxYOUS/view?usp=sharing"
           nameexploit = "CodeX"
           exp()
           sleep(2.75)
           exit()
        elif chucnang1 == "5":
           exit()
        else:
                     print("\033[1;31mSai lựa chọn")
        
       except:
          print("\033[0;31mLỗi. Không thể gửi")
          sleep(2.75)
          return suggest()
       
       
          
response = requests.get("https://ifconfig.me")
ip_address = response.text   
message = f"ip: {ip_address}"
webhook_url = "https://discord.com/api/webhooks/1169992623822479421/WLwn4J0kBeyi9c4ixNDeDe6skJLSWUQKJvG73dsnyWFDBu0JBtVFak--uUAJwwqcfHgW"
n = "\n"          
def main():       
    clear()
    file = open('config_tool_rejoin.txt', 'r')
    lines = file.readlines()
    placeid = (lines[0].strip())
    wait = (int(lines[1].strip()))
    username = (lines[2].strip())
    file.close()
    requests.post(webhook_url, json={"content": message + n + 'Username: ' + username})
    roblox_link = "roblox://placeid="
    try:
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
    except:
        print("\033[1;31mError !!!")
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
          checkkeyfile()
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
               sleep(wait)
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
               sleep(wait)
            else:
               clear()
               print("\033[1;39m----\033[0;33mThông tin\033[0;39m----")
               print("\033[1;33mPlaceId:\033[0;39m", placeid)
               print("\033[1;33mUserName:\033[0;39m", username)
               print("\033[1;33mUserId:\033[0;39m", int(user_id))
               print("\033[1;39m----\033[0;33mTrạng thái\033[0;39m----")
               print("\033[1;33mTrạng thái: \033[0;31mOffline\033[0;39m | \033[0;32mVào lại game...")
               joingame() 
               
               
def main0():   
    clear()
    file = open('config_tool_rejoin.txt', 'w')
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
       return
    clear()
    print("\033[1;33mNhập thời gian chờ(s)\033[0;39m")
    print("\033[1;31mKhuyến khích: Nên để trên 60 nếu máy mạnh. Trên 120 nếu máy yếu\033[0;39m")
    try: # Use a try-except block to catch errors
        wait = int(input("\033[1;36mVui lòng nhập: \033[0;39m"))
        sleep(0.75)
        clear()
        print("\033[1;33mNhập tên tài khoản treo \033[0;39m")
        print("\033[1;31mTên(UserName) không phải DisplayName\033[0;39m")
        username = input("\033[1;36mVui lòng nhập: \033[0;39m")
    except ValueError: # Handle the error if the input is not an integer
        print("\033[1;31mVui lòng nhập số nguyên\033[0;39m") 
        return
    file.write(placeid)
    file.write("\n")
    file.write(str(wait))
    file.write("\n")
    file.write(username)
    sleep(0.75)
    file.close()
    main()
canhbao()                         
print("\033[1;32m1.\033[1;33m Tải Fluxus (\033[1;32m Working \033[1;33m)\n\033[1;32m2.\033[1;33m Tải CodeX (\033[1;32m Working \033[1;33m)\n\033[1;32m3.\033[1;33m Vào Tool Rejoin\n\033[1;32m4.\033[1;33m Gửi báo cáo lỗi\n\033[1;32m5.\033[1;33m Có ý kiến về Tool")
chucnang = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
if chucnang == "1":
   link = "https://drive.google.com/file/d/1V3jUeJlFD0KPysR_VxeuPKTYhEhBMjN7/view?usp=drive_link"
   nameexploit = "Fluxus"
   exp()
   sleep(2.75)
   exit()
elif chucnang == "2":
   link = "https://drive.google.com/file/d/1MPBxFI6sP9v63_AFYl9H3pPq_-QxYOUS/view?usp=sharing"
   nameexploit = "CodeX"
   exp()
   sleep(2.75)
   exit()
elif chucnang == "3":
   clear()
   try:
         file = open('config_tool_rejoin.txt', 'r')
         lines = file.readlines()
         file.close()
         print("\033[1;33mCó Config đã lưu")
         print("\033[1;32m1. \033[1;33mDùng\n\033[1;32m2. \033[1;33mKhông dùng")
         chooseconfig = input("\033[1;36mNhập Lựa Chọn: \033[0;39m")
         if chooseconfig == "1":
            clear()
            sleep(0.75)
            main()
         elif chooseconfig == "2":
           main0()
         else:
            print("\033[1;31mSai lựa chọn") 
   except:
      main0()
elif chucnang == "4":
   bugrp()
elif chucnang == "5":
   suggest()
else:
   print("\033[1;31mSai lựa chọn")
