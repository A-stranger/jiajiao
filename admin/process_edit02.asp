<% 
d=Trim(Request.QueryString("d"))
response.buffer=true 
formsize=request.totalbytes 

formdata=request.binaryread(formsize)
bncrlf=chrB(13) & chrB(10) 
divider=leftB(formdata,clng(instrb(formdata,bncrlf))-1) 
datastart=instrb(formdata,bncrlf & bncrlf)+4 
dataend=instrb(datastart+1,formdata,divider)-datastart 
mydata=midb(formdata,datastart,dataend) 
set connGraph=server.CreateObject("ADODB.connection") 
connGraph.ConnectionString="driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.MapPath("@#$&jiajiaowang.mdb") 
connGraph.Open 
set rec=server.createobject("ADODB.recordset") 
rec.Open "SELECT * FROM linktu where linktu_id="&d,connGraph,1,3 
rec("linktu_img").appendchunk mydata 
rec.update 
rec.close 
set rec=nothing 
set connGraph=nothing 
response.Write("<script>alert('图片重传成功！');history.go(-1);</script>")
%> 


