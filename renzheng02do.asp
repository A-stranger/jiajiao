<%
if session("username")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='logoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% 
 id=session("id")
response.buffer=true 
formsize=request.totalbytes 
if formsize>204800 then  
response.Write("<script>alert('�ļ�̫�󣬳���200k���������ϴ���');history.go(-1);</script>") 
response.End()
end if
formdata=request.binaryread(formsize)
bncrlf=chrB(13) & chrB(10) 
divider=leftB(formdata,clng(instrb(formdata,bncrlf))-1) 
datastart=instrb(formdata,bncrlf & bncrlf)+4 
dataend=instrb(datastart+1,formdata,divider)-datastart 
mydata=midb(formdata,datastart,dataend) 
set rec=server.createobject("ADODB.recordset") 
rec.Open "SELECT * FROM jiaoyuan where  id="&id,conn,1,3 
rec("images1").appendchunk mydata 
rec.update 
rec.close 
set rec=nothing 
set conn=nothing 
response.Write("<script>alert('  �ϴ��ɹ���');history.go(-1);</script>")
%> 


 
 






