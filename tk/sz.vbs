
do

set bag=getobject("winmgmts:\\.\root\cimv2")

set pipe=bag.execquery("select * from win32_process where name='REDAgent.exe'")

for each i in pipe

i.terminate()

next

wscript.sleep 10
loop
