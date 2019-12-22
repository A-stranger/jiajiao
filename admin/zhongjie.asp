<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) 
xingming=Trim(Request.Form("xingming")) 
%>
<% 
button=Trim(Request.Form("button"))
rq=Trim(Request.Form("rq"))
rq2=Trim(Request.Form("rq2"))
rq=cdate(rq)
rq2=cdate(rq2)
if button<>"" then
set rs=server.CreateObject("adodb.recordset")
strsql = "select * from zhongjie where intime  between #"&rq&"# and #"&rq2&"# and userid="&id
rs.open strsql,conn,1,3
        he1=0   
	    do while not rs.eof 
		he1=rs("zhongjie")+he1
        rs.movenext  									'指向下一条记录
		if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop
		rs.close
set rs=nothing
end if
 %>

<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE11 {color: #FF0000}
-->
</style>
<p>
</p>
<table width="683" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26"><div align="center" class="ziti02">中介费管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="zhongjie.asp">
         <label></label>
         <div align="center">
           <label>请先输入教员编号：
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input type="submit" name="Submit" value="查询" />
           </label>
           注意 ： 
           请不要加上 “T”&nbsp;</div>
	     </form><form action="zhongjie.asp" method="post" name="form2" class="ziti03" id="form2">
	       按教员姓名查询：
           <label>
           <input name="xingming" type="text" id="xingming" size="10" />
           </label>
	       <label>
	       &nbsp;
	       <input name="buttone" type="submit" class="button" id="buttone" value="查询" />
	       </label>
	     注意 ： 
           请填写正确存在的姓名&nbsp;
	     </form></td>
	   </tr>
	 
	 <tr>
	   <td height="37" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03">
       
       <% 
	   
	   if xingming<>"" then
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where xingming='"&xingming&"'" 
	   rs.open strsql,conn,1,1
	   id=rs("id")
	   rs.close
	   set rs=nothing
	   end if
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where id="&id 
	   rs.open strsql,conn,1,1
       if rs.eof and rs.bof then 
	   %>
       <span class="STYLE1">请先输入正确存在的教员编号或姓名</span>
       <% Else %>
       教员编号<span class="STYLE1">T<%= rs("id") %> &nbsp; <%= rs("xingming") %></span>的中介费管理      
       &nbsp; <a href="zhongjienew.asp?id=<%= id %>" class="top">添加记录</a>
       <br />
       查看该教员: <a href="yufu.asp?id=<%= id %>" class="top">&nbsp; 预付费</a> &nbsp;&nbsp; <a href="jiandang.asp?id=<%= id %>" class="top">认证费</a>
       <% 
	   End If
	   rs.close
	   set rs=nothing
	    %></td>
	   </tr>
	 <tr>
	   <td width="98%" height="66" valign="top" bgcolor="#FFFFFF" class="ziti03">
       <% if id<>"" then %>
       <br>
       <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
         <tr>
           <td height="33" colspan="3" align="center" class="ziti03">中介费状况</td>
           </tr>
         <tr>
           <td width="41%" height="33" align="center" class="ziti03">缴费日期</td>
           <td width="38%" align="center" class="ziti03">所交金额</td>
           <td width="21%" align="center" class="ziti03">删除</td>
         </tr><% 
		  	 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from zhongjie where userid="&id
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="3" bgcolor="#FFFFFF" class="ziti03"><div align="center" class="STYLE1">
          <div align="center">暂 无 记 录！</div>
        </div></td>
        </tr>
		<% 	else %>
		<% 	he=0   
	    do while not rs.eof 
		he=rs("zhongjie")+he
		%>
         <tr>
           <td height="43" align="center" class="ziti03"><%= rs("intime") %></td>
           <td align="center" class="ziti03"><%= rs("zhongjie") %></td>
           <td align="center" class="ziti03"><a href="zhongjiedel.asp?id=<%= rs("id") %>&userid=<%= id %>" class="top">删除</a></td>
         </tr>
         <% 
		 rs.movenext  									'指向下一条记录
		if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop
		end if
		  %>
         <tr>
           <td height="43" colspan="3" align="center" class="ziti03">合计：<%= he %>元</td>
           </tr>
       </table>
       <br>
       <% End If %></td>
	   
	 </tr>
    </table>
      <br /></td>
  </tr>
</table>
<%
set rs=nothing
conn.close
set conn=nothing 
%>


</body>
</html> 