<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% 
id=Trim(Request("id")) 
idd=Trim(Request("idd"))
xingming=Trim(Request("xingming"))
username=Trim(Request("username"))
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
    <td width="681" height="26"><div align="center" class="ziti02">教员详细家教记录</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="101%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="8" bgcolor="#FFFFFF" class="ziti03"><form id="form2" name="form2" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>教员编号：
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;  
          <input name="Submit" type="submit" class="button" value="查询" />
           </label>
           注意 ： 
	     请不要加上 “T” </div>
	   </form>	 <form id="form1" name="form1" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>按教员姓名查询：
           <input name="xingming" type="text" id="xingming" size="10" />
&nbsp;
<input name="buttone" type="submit" class="button" id="buttone" value="查询" />
注意 ： 
           请填写正确存在的姓名&nbsp; </label>
	     </div>
	   </form>    <form id="form2" name="form2" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>学员编号：
           <input name="idd" type="text" id="idd" size="10" />
           </label>
           <label>
          &nbsp;  
          <input name="Submit" type="submit" class="button" value="查询" />
           </label>
           注意 ： 
	     请不要加上 “S” </div>
	   </form>	 </td>
	 </tr>
	 <tr>
	   <td width="63" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >教员编号 </div></td>
        <td width="90" align="center" bgcolor="#E8E8E8" class="ziti03">订单(学员编号)</td>
        <td width="96" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">上课时间</span></td>
        <td width="105" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">上课内容</span></td>
        <td width="64" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">所获报酬</span></td>
        <td width="106" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">备注</span></td>
        <td width="70" bgcolor="#E8E8E8" class="ziti03"><div align="center" >录入时间</div></td>
        <td width="78" bgcolor="#E8E8E8" class="ziti03"><div align="center" >管理员操作</div></td>
      </tr> <% 	 
dim counts
if xingming<>"" then
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where xingming='"&xingming&"'" 
	   rs.open strsql,conn,1,1
	   id=rs("id")
	   rs.close
	   set rs=nothing
	   end if

set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jilu where userid='"&id&"'"
end if
if username<>"" then
set rs1=server.CreateObject("adodb.recordset")
	   strsql="select * from dingdan where username='"&username&"'" 
	   rs1.open strsql,conn,1,1
	   idd=rs1("id")
	   rs1.close
	   set rs1=nothing
end if
if idd<>"" then
strsql="select * from jilu where dingdan="&idd
end if
if idd="" and id=""  and username=""  then
strsql="select * from jilu order by id desc"
end if
  
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="8" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">暂 无 记 录！</div>
        </div></td>
        </tr>
		<% 	else %>
		 <% 
	    counts=30											
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
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><a href="dingdanshow.asp?id=<%= rs("dingdan") %>" class="top">S<%= rs("dingdan") %></a></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("shijian") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("neirong") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("baochou") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("beizhu") %></span></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href="javascript:if(confirm('确认要删除吗？'))location='jiludel.asp?id=<%= rs("id") %> '" class="top">删 除</a></div></td>
      </tr>
       <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
    </table>
      <table width="73%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"个记录 "  
if page = 1 then  											'到达第一页
	response.write "<font color=darkgray>首页 前页</font>"  
else  														'不是第一页
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&id="&id&"&idd="&idd&" class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&id="&id&"&idd="&idd&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=darkgray> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&id="&id&"&idd="&idd&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&id="&id&"&idd="&idd&" class='top'><font size=2>末页</font></a>"  
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