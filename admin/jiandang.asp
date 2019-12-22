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
if button<>"" then
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang"
rs.open strsql,conn,1,3
rs.addnew
rs("userid")=id
rs("rq")=trim(request.form("rq"))
rs("jiandang")=trim(request.form("jiandang"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     添加成功！');window.location.href='jiandang.asp?id="&id&"';</script>"
response.End
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
    <td width="681" height="26"><div align="center" class="ziti02">认证费管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiandang.asp">
         <label></label>
         <div align="center">
           <label>请先输入教员编号：
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input name="Submit" type="submit" class="button" value="查询" />
           </label>
           注意 ： 
           请不要加上 “T”&nbsp;</div>
	     </form><form action="jiandang.asp" method="post" name="form2" class="ziti03" id="form2">
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
       教员编号<span class="STYLE1">T<%= rs("id") %> &nbsp; <%= rs("xingming") %></span>的认证费管理<br />
       查看该教员: <a href="yufu.asp?id=<%= id %>" class="top">&nbsp; 预付费</a>
       <a href="zhongjie.asp?id=<%= id %>" class="top">&nbsp;&nbsp; 中介费</a>      
       <% 
	   End If
	   rs.close
	   set rs=nothing
	    %>       </td>
	   </tr>
	 <tr>
	   <td width="96%" height="66" valign="top" bgcolor="#FFFFFF" class="ziti03">
       <% if id<>"" then %>
       <br>
      <form name="form2" method="post" action="jiandang.asp">
	   
	     <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
           <tr>
             <td height="47" colspan="2" align="center" class="ziti03">添加认证费</td>
           </tr>
           <tr>
             <td width="61%" height="33" align="center" class="ziti03">费用期</td>
             <td width="39%" align="center" class="ziti03">所交费用</td>
           </tr>
           <tr>
             <td height="43" align="center" class="ziti03">
             <%
			  n=year(date()) 
			 y=month(date())
			 r=day(date())
			 n1=n+1
			 %>
             <label>
               <input name="rq" type="text" id="rq" value="<%= n %>.<%= y %>.<%= r %>-<%= n1 %>.<%= y %>.<%= r %>" size="25">
             </label></td>
             <td align="center" class="ziti03"><label>
               <input name="jiandang" type="text" id="jiandang" size="10">
             元/年</label></td>
           </tr>
           <tr>
             <td height="43" colspan="2" align="center" class="ziti03"><label>
               <input name="button" type="submit" class="button" id="button" value="提交添加">
               <input name="id" type="hidden" id="id" value="<%= id %>">
             </label></td>
           </tr>
         </table>
             
	   </form>	   
       <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
         <tr>
           <td height="33" colspan="3" align="center" class="ziti03">认证费状况</td>
           </tr>
         <tr>
           <td width="41%" height="33" align="center" class="ziti03">费用期</td>
           <td width="38%" align="center" class="ziti03">所交费用（元/年）</td>
           <td width="21%" align="center" class="ziti03">删除</td>
         </tr><% 	 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang where userid="&id
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
		he=rs("jiandang")+he
		%>
         <tr>
           <td height="43" align="center" class="ziti03"><%= rs("rq") %></td>
           <td align="center" class="ziti03"><%= rs("jiandang") %></td>
           <td align="center" class="ziti03"><a href="jiandangdel.asp?id=<%= rs("id") %>&userid=<%= id %>" class="top">删除</a></td>
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