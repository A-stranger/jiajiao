<% 
response.buffer=true 
formsize=request.totalbytes 
formdata=request.binaryread(formsize)
bncrlf=chrB(13) & chrB(10) 
divider=leftB(formdata,clng(instrb(formdata,bncrlf))-1) 
datastart=instrb(formdata,bncrlf & bncrlf)+4 
dataend=instrb(datastart+1,formdata,divider)-datastart 
mydata=midb(formdata,datastart,dataend) 
set conn=server.CreateObject("ADODB.connection") 
conn.ConnectionString="driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.MapPath("@#$&jiajiaowang.mdb") 
conn.Open 
set rec=server.createobject("ADODB.recordset") 
rec.Open "SELECT * FROM linktu ",conn,1,3
rec.addnew
rec("linktu_url")=session("shuoming")
rec("linktu_img").appendchunk mydata 
rec.update 
rec.close 
set rec=nothing 
set conn=nothing 
response.Write("<script>alert('ÃÌº”Õº∆¨≥…π¶£°');history.go(-1);</script>")
%> 


