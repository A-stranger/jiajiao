<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
  id=Trim(Request.QueryString("id"))
  if id<>"" then
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from yuyue where id="&id
  rs.open strsql,conn,1,3
  response.Redirect "jdingdan.asp"
   End If 
  %> 

<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {font-size: 9pt; }
-->
</style>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <% 
  userid=Trim(Request.Form("userid"))
   xueyuan=Trim(Request.Form("xueyuan"))
  set rs=server.CreateObject("adodb.recordset")
 if userid<>"" then 
strsql="select * from yuyue where userid='"&userid&"'"
 ElseIf xueyuan<>"" Then
 strsql="select * from yuyue where xueyuan='"&xueyuan&"'"
 else
  strsql="select * from yuyue"
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then %>
  <tr>
    <td colspan="6"><div align="center" class="STYLE1">暂无信息 </div></td>
  </tr>
  <% Else %>
  
  <tr>
    <td height="18" colspan="6" valign="bottom" bgcolor="#CCCCCC"><form name="form1" method="post" action="jdingdan.asp">
        <label></label><label></label>
        <div align="center">
          <label><span class="STYLE3">教员编号：</span>
          <input name="userid" type="text" id="userid" size="6">
          </label>
          <label>
         &nbsp;
         <input type="submit" name="Submit" value="查询">
          </label>
</div>
    </form>      <form name="form2" method="post" action="jdingdan.asp">
        <label></label><label></label>
        <div align="center">
          <label><span class="STYLE3">订单编号</span>
 ：          
 <input name="xueyuan" type="text" id="xueyuan" size="6">
          </label>
          <label>
         &nbsp; 
         <input type="submit" name="Submit2" value="查询">
          </label>
</div>
      </form></td>
  </tr>
  <tr>
    <td width="12%" height="21" bgcolor="#66CCCC"><div align="center" class="STYLE3">教员编号</div></td>
    <td width="15%" bgcolor="#66CCCC"><div align="center" class="STYLE3">订单编号 </div></td>
    <td width="16%" align="center" bgcolor="#66CCCC">状态</td>
    <td width="19%" align="center" bgcolor="#66CCCC">标题</td>
    <td width="19%" bgcolor="#66CCCC"><div align="center" class="STYLE3">申请时间</div></td>
    <td width="19%" bgcolor="#66CCCC"><div align="center" class="STYLE3">管理员操作</div></td>
  </tr><% 
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
  do while not rs.eof and counts>0 %>
  <tr>
    <td height="22" bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="jiaoyuanshow.asp?id=<%= rs("userid") %>">T<%= rs("userid") %></a></div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="dingdanshow.asp?id=<%= rs("xueyuan") %>">S<%= rs("xueyuan") %></a></div></td>
    <td align="center" bgcolor="#FFFFFF"><span class="STYLE3"><%= rs("zhuangtai") %></span></td>
    <td align="center" bgcolor="#FFFFFF"><span class="STYLE3"><%= rs("title") %></span></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><%= rs("intime") %></div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="jdingdan-show.asp?id=<%= rs("id") %>">查看正文</a>/ <a href="jdingdan.asp?id=<%= rs("id") %>" target="_self">删除</a></div></td>
  </tr>
  <% 
  counts = counts - 1 
  rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		set rs=nothing
conn.close
set conn=nothing%>
  <% End If %>
</table>
<br>
<table width="32%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td height="18" class="ziti03"><div align="right" class="top STYLE3">
      <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"个记录 "  
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
 







