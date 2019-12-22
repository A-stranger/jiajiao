
<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<link href="css.css" rel="stylesheet" type="text/css">
<!--#include file="conn.asp"-->
<% 
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from linktu  order by linktu_id desc",conn,1,3 
counts=15											
		rs.pageSize =counts								
		allpages =rs.pageCount								
		page = Request("page")								    
		If not isNumeric(page) then page=1			
		if isEmpty(page) or Cint(page) < 1 then				
			page = 1  
		elseif Cint(page) >= allPages then  				'page 值大于总页数
			page = allPages   
	  	end if
	  	rs.AbsolutePage = page
	    
%>
</body>
<style type="text/css">
<!--
.STYLE1 {	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
-->
</style>
<table width="760" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td height="26"><div align="center" class="ziti02">图片链接</div></td>
  </tr>
  <tr>
    <td height="79" bgcolor="#FFFFFF">　　　　　　　　
      <table width="72%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
          
          <tr>
            <td height="20" colspan="3" bgcolor="#FFFFFF"><a href="linktunew.asp" class="top">添加新的链接</a></td>
          </tr>
		  <% if rs.eof and rs.bof then %>
          <tr>
            <td height="20" colspan="3" bgcolor="#FFFFFF"><div align="center" class="STYLE1">暂 无 图 片 链 接！</div></td>
          </tr>
          <% 
		response.End()
		end if
		%>
          <tr>
            <td width="84" height="20" bgcolor="#FFFFFF" class="ziti03"><div align="center" >链接网址：</div></td>
            <td width="293" bgcolor="#FFFFFF" class="ziti03"><div align="center">链接图片</div></td>
            <td width="165" bgcolor="#FFFFFF" class="ziti03"><div align="center">管理员操作</div></td>
          </tr>
          <% do while not rs.eof and counts>0 %>
          <tr>
            <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("linktu_url") %></div></td>
            <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt">
					
<img src="showimg04.asp?id=<%=rs("linktu_id")%>">
									
			</span></div></td>
            <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href='linktuedit.asp?id=<%= rs("linktu_id") %>' class="top">修改</a>/<a href="javascript:if(confirm('确认要删除吗？'))location='linktudel.asp?id=<%= rs("linktu_id") %> '" class="top">删除</a></div></td>
          </tr>
          <%
            counts = counts - 1  							
			rs.movenext  									
			if rs.eof then exit do  						
	  	    loop 
          %>
      </table>
      <table width="72%" border="0" align="center" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="18" class="ziti03"><div align="right" class="top">
              <%
response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"个链接"  
if page = 1 then  											'到达第一页
	response.write "<font color=darkgray>首页 前页</font>"  
else  														'不是第一页
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1 class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=darkgray> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&" class='top'><font size=2>末页</font></a>"  
end if  

response.write " 第"&page&"页 共"&allpages&"页 " 		 	'显示当前页数信息
%>
          </div></td>
        </tr>
      </table>
    <br /></td>
  </tr>
</table>
</html>