<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->

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
    <td width="681" height="26"><div align="center" class="ziti02">教员认证费管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="79%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 
	 <tr>
	   <td height="75" colspan="4" align="center" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiandang.asp">
         <label></label>
         <div align="center">
           <label>请先输入教员编号：
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input name="Submit" type="submit" class="button" value="查询" />
           </label>
           注意 ： 
           请不要加上 “T”&nbsp;<br />
         </div>
	     </form>
	     <form action="jiandang.asp" method="post" name="form2" class="ziti03" id="form2">
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
	     </form>	     </td>
	 </tr>
	 <tr>
	   <td width="97" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >教员编号 </div></td>
        <td width="162" bgcolor="#E8E8E8" class="ziti03"><div align="center">所交费用（元/年）</div></td>
        <td width="183" align="center" bgcolor="#E8E8E8" class="ziti03">费用期</td>
        <td width="91" bgcolor="#E8E8E8" class="ziti03"><div align="center" >删除</div></td>
        </tr> <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang   order by id desc"
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="4" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">暂 无 信 息！</div>
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
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><a href="jiaoyuan.asp?id=<%= rs("userid") %>" class="top">T<%= rs("userid") %></a></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><%= rs("jiandang") %></div></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("rq") %></span></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><a href="jiandangdel.asp?id=<%= rs("id") %>&amp;userid=<%= id %>" class="top">删除</a></div></td>
        </tr>
       <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
    </table>
      <table width="67%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"条记录 "  
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
