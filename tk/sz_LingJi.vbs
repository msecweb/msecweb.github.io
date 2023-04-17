msgbox "OK"

do

set bag=getobject("winmgmts:\\.\root\cimv2")

set pipe=bag.execquery("select * from win32_process where name='Actor.exe'")

for each i in pipe

i.terminate()

next

wscript.sleep 3000
loop
