msgbox "OK"

For t = 0 to 10 step 1
set bag=getobject("winmgmts:\\.\root\cimv2")

set pipe=bag.execquery("select * from win32_process where name='Actor.exe'")

for each i in pipe

i.terminate()

next

wscript.sleep 10000

next
