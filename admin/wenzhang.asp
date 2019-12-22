
<!--#include file="conn.asp"-->
<% 
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
dim counts,dw
dw=Trim(Request.QueryString("dw")) %>
<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE10 {font-size: 9pt}
-->
</style>
<p>
</p>
<form name="form1" method="post" action="">
<table width="683" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26" background="images/admin_bg_1.gif"><div align="center" class="ziti02"><%= dw %>管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      
      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="20" colspan="5" bgcolor="#FFFFFF" class="ziti03"><a href="wenzhang_new.asp?type=<%= dw %>" class="top">添加新的文章</a></td>
	   </tr>
	 <tr>
	   <td width="97" bgcolor="#E8E8E8" class="ziti03"><div align="center">所属分类</div></td>
	   <td width="304" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >文章标题</div></td>
        <td width="60" bgcolor="#E8E8E8" class="ziti03"><div align="center">点击次数</div></td>
        <td width="97" bgcolor="#E8E8E8" class="ziti03"><div align="center" >录入时间</div></td>
        <td width="49" bgcolor="#E8E8E8" class="ziti03"><div align="center" >选 择</div></td>
      </tr> <% 	 

set rs=server.CreateObject("adodb.recordset")
strsql="select * from news where type='"&dw&"' order by id desc"
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="5" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">暂无任何相关记录！</div>
        </div></td>
        </tr>
		<% 	else %>
		 <% 
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
	    do while not rs.eof and counts>0
	   %>
  
      <tr>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><%= rs("type") %></div></td>
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><a href='wenzhang_edit.asp?id=<%= rs("id") %>'  class="top" title="点击查看修改"><%= rs("title") %></a></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("cishu") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff">
          <input name="shenhe" type="checkbox" class="button" id="shenhe" value="<%=rs("id")%>" />
        </div></td>
      </tr>
       <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
    </table>
      <table width="615" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="600" align="right"><br />
            <input name="Submit2" type="button" class="button" onclick="this.form.action='wenzhang_del.asp';this.form.submit()" value="删 除 选 中" />
&nbsp;
<input type="hidden" name="dw" id="dw"  value="<%= dw %>"/>
<span class="ziti03">&nbsp;全选 </span>
<input name="checkbox" type="checkbox" class="button" onclick="mm()" value="Check All" /></td>
          <td width="15" align="right"><div align="left"></div></td>
        </tr>
      </table>
      <table width="61%" border="0" align="center" cellpadding="0" cellspacing="0" class="zhengwen" >
        <tr>
          <% er=dw %>
          <td height="18" class="ziti03"><div align="right" class="top">
              <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"条记录"  
if page = 1 then  											'到达第一页
	response.write "<font color=#66666>&nbsp;&nbsp;首页 前页</font>"  
else  														'不是第一页
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&dw="&er&" class='top'><font size=2>&nbsp;&nbsp;首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&dw="&er&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=#66666> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&dw="&er&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&dw="&er&" class='top'><font size=2>末页</font></a>"  
end if  

response.write " 第"&page&"页 共"&allpages&"页 " 		 	'显示当前页数信息
%>
          </div></td>
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
<%  end if %>
</form>
</body>
</html> 
<script language=javascript>
function mm()
{
   var a = document.getElementsByTagName("input");
   if(a[0].checked==true){
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = false;
   }
   else
   {
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = true;
   }
}
</script>
