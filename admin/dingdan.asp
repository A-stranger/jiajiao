<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
shijian=Trim(Request.QueryString("shijian"))

id=Trim(Request("id"))
xing=Trim(Request.Form("xing"))
tel=Trim(Request.Form("tel"))
dizhi=Trim(Request.Form("dizhi"))
Submit=Trim(Request.Form("Submit"))
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
    <td width="681" height="26"><div align="center" class="ziti02">学员订单</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="97%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 
	 <tr>
	   <td height="19" colspan="8" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="dingdan.asp">
	     <label></label>
	     <div align="center">
	       <label></label>
	       <label></label>

<table width="71%" height="77" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td colspan="2" class="ziti03"><label>订单编号：
                 <input name="id" type="text" id="id" size="10" />
             </label>
               <label> &nbsp;</label>
注意：请不要加上 “S”</td>
             </tr>
           <tr>
             <td class="ziti03">学员姓氏：
               <input name="xing" type="text" id="xing" size="10" /></td>
             <td class="ziti03">教学区域：&nbsp; <font 
                        color="#ffffff">
             <select class="button" id="dizhi" 
                        name="dizhi">
               <option value="" 
                          selected="selected">请选择</option>
               <%	
					  dw1="地区"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
               <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
               <option 
                          value="<%= rs("title") %>"><%= rs("title") %></option>
               <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
               <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
             </select>
             </font></td>
             </tr>
           <tr>
             <td class="ziti03">电话号码：
               <input name="tel" type="text" id="tel" size="10" /></td>
             <td class="ziti03"><input name="Submit" type="submit" class="button" value="开始查询" />
             &nbsp;&nbsp; <a href="dingdan.asp?shijian=1" class="top">重新生成订单录入时间</a></td>
             </tr>
         </table>
	     </div>
	   </form>	     <a href="dingdannew.asp" class="top"></a></td>
	   </tr>
	 <tr>
	   <td width="55" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >订单编号 </div></td>
        <td width="106" bgcolor="#E8E8E8" class="ziti03"><div align="center">请教科目 </div></td>
        <td width="62" align="center" bgcolor="#E8E8E8" class="ziti03">家教记录</td>
        <td width="103" align="center" bgcolor="#E8E8E8" class="ziti03">家教详细记录</td>
        <td width="72" bgcolor="#E8E8E8" class="ziti03"><div align="center" >录入时间</div></td>
        <td width="77" align="center" bgcolor="#E8E8E8" class="ziti03">服务记录</td>
        <td width="70" align="center" bgcolor="#E8E8E8" class="ziti03">定单状态</td>
        <td width="107" bgcolor="#E8E8E8" class="ziti03"><div align="center" >管理员操作</div></td>
      </tr> <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
if Submit<>"" then
if id<>"" then
 strsql="select * from dingdan where  id="&id
 else
strsql="select * from dingdan where dizhi like '%" & dizhi & "%' and  tel like '%" & tel & "%'  and  username like '%" & xing & "%' "
end if
else
strsql="select * from dingdan  order by id desc"
end if

rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="8" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">暂 无 订 单！</div>
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
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt">S<%= rs("id") %></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span class="STYLE11"><% If rs("yuyue")<>"" Then %>已经预约T<%= rs("yuyue") %>教员<% End If %></span><%= rs("xueke") %></div></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><a href="xjilu.asp?idd=<%= rs("id") %>" class="top">查看</a></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><a href="jilu.asp?idd=<%= rs("id") %>" class="top">查看</a></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td align="center" bgcolor="#FFFFFF" ><a href="fuwu.asp?idd=<%= rs("id") %>" class="top">查看</a> / <a href="fuwunew.asp?id=<%= rs("id") %>" class="top">添加</a></td>
        <td align="center" bgcolor="#FFFFFF" ><span style="font-size: 10pt"><%= rs("zhaungtai") %></span></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href='dingdanshow.asp?id=<%= rs("id") %>' class="top">查看详细 </a>/<a href="javascript:if(confirm('确认要删除吗？'))location='dingdandel.asp?id=<%= rs("id") %> '" class="top">删 除</a></div></td>
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

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"个订单 "  
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
