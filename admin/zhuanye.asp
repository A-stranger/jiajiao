<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request.Form("id")) %>
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
    <td width="681" height="26"><div align="center" class="ziti02">专业教员管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="85%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="5" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="zhuanye.asp">
	     <label></label>
	     <div align="center">
	       <label>教员编号：
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;  
          <input type="submit" name="Submit" value="查询" />
           </label>
           注意 ： 
	     请不要加上 “T” </div>
	   </form>	     <a href="jiaoyuannew.asp" class="top"></a></td>
	   </tr>
	 <tr>
	   <td width="103" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >教员编号 </div></td>
        <td width="201" bgcolor="#E8E8E8" class="ziti03"><div align="center">教员姓名 </div></td>
        <td width="140" bgcolor="#E8E8E8" class="ziti03"><div align="center">认证</div></td>
        <td width="140" bgcolor="#E8E8E8" class="ziti03"><div align="center" >录入时间</div></td>
        <td width="130" bgcolor="#E8E8E8" class="ziti03"><div align="center" >管理员操作</div></td>
      </tr> <% 	 
dim counts
dw="是"
set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jiaoyuan where zhunaye='"&dw&"' and id="&id
 else
strsql="select * from jiaoyuan where zhunaye='"&dw&"' order by id desc"
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="5" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">暂 无 教 员！</div>
        </div></td>
        </tr>
		<% 	else %>
		 <% 
	    counts=20											
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
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt">T<%= rs("id") %></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("xingming") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("renzheng") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href='jiaoyuanshow.asp?id=<%= rs("id") %>' class="top">查看详细 </a>/<a href="javascript:if(confirm('确认要删除吗？'))location='jiaoyuandel.asp?id=<%= rs("id") %> '" class="top">删 除</a></div></td>
      </tr>
       <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
    </table>
      <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"个教员 "  
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
<%
set rs=nothing
conn.close
set conn=nothing 
%>
<%  end if %>

</body>
</html> 








