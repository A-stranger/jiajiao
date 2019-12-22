<!--#include file="conn.asp"-->
<%if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
else
ps=instr(session("flag"),"0") 
	if ps=0 then
response.Write "<p align=center><font color=red>您没有此项目管理权限！</font></p>"
response.End
end if
end if
%>

<!--#include file="md5.asp"-->
<%dim action,admin,adminid
action=request.QueryString("action")
adminid=request.QueryString("id")
admin=trim(request("admin"))
select case action
'//修改数据
case "edit"
if request("admin")="" then
 
 response.Write "<script language=javascript>alert('请输入管理员ID！');location.href=""manageadmin.asp"";</script>"
response.End
end if




set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from admin where adminid="&adminid,conn,1,3
rs("admin")=admin
if trim(request("password"))<>"" then
rs("password")=md5(trim(request("password")))
end if
rs("username")=trim(request("username"))

rs.Update
rs.Close
set rs=nothing
response.Write "<script language=javascript>alert('修改成功！');location.href=""manageadmin.asp"";</script>"
response.End
'//添加新数据
case "add" 

if request("admin2")="" then
 
 response.Write "<script language=javascript>alert('请输入管理员ID！');location.href=""manageadmin.asp"";</script>"
response.End
end if
 if request("password2")="" then
 
 response.Write "<script language=javascript>alert('请输入密码！');location.href=""manageadmin.asp"";</script>"
response.End
end if




set rs=server.CreateObject("adodb.recordset")
rs.open "select * from admin",conn,1,3
rs.addnew
rs("admin")=trim(request("admin2"))
rs("password")=md5(trim(request("password2")))
rs("username")=trim(request("username2"))

rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('添加成功！');location.href=""manageadmin.asp"";</script>"
response.End
'//删除数据
case "del"
conn.execute ("delete from admin where adminid="&request.QueryString("id"))
response.Redirect "manageadmin.asp"
end select
%>
