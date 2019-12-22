<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) 
dw=Trim(Request("dw"))
xing=Trim(Request("xing"))
sex=Trim(Request("sex"))
kemu=Trim(Request("kemu"))
xueli=Trim(Request("xueli"))
shenfen=Trim(Request("shenfen"))
tel=Trim(Request("tel"))
quyu=Trim(Request("quyu"))
%>
<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE12 {font-size: 10pt}
-->
</style>
<p>
</p>
<table width="727" height="199" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26"><div align="center" class="ziti02">教员管理<% If dw<>"" Then %>(<% If dw=1 Then %>认证教员<% End If %> <% If dw=2 Then %>未认证教员<% End If %> <% If dw=3 Then %>付费教员<% End If %> <% If dw=4 Then %>明星教员<% End If %><% If dw=5Then %> 有证件<% End If %><% If dw=6 Then %> 审核 <% End If %><% If dw=7 Then %>未审核<% End If %>
      )
          <% End If %>
    </div></td>
  </tr>
  <tr>
    <td height="14" valign="top" bgcolor="#FFFFFF"><div align="center"><a href="jiaoyuan.asp?dw=1" class="top">认证教员</a> <a href="jiaoyuan.asp?dw=2" class="top">未认证教员</a> <a href="jiaoyuan.asp?dw=3" class="top">付费教员</a> <a href="jiaoyuan.asp?dw=4" class="top">明星教员</a> <a href="jiaoyuan.asp?dw=5" class="top">有证件</a> <a href="jiaoyuan.asp?dw=6" class="top">审核</a> <a href="jiaoyuan.asp?dw=7" class="top">未审核</a></div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="92%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="10" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiaoyuan.asp">
	     <label></label>
	     <div align="center">
	       <label>教员编号：
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;</label>
           注意：请不要加上 “T”&nbsp; 
           <table width="78%" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="14%" class="ziti03"><label>姓氏:</label></td>
               <td width="23%" class="ziti03"><input name="xing" type="text" id="xing" size="8" /></td>
               <td width="14%" class="ziti03">性别:</td>
               <td width="49%" class="ziti03"><label>
                 <select name="sex" class="button" id="sex">
                   <option selected="selected" value="不限">不限</option>
                   <option value="男">男</option>
                   <option value="女">女</option>
                 </select>
              &nbsp;&nbsp;</label></td>
             </tr>
             <tr>
               <td class="ziti03">科目:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="kemu" 
                        name="kemu">
                   <option value="" 
                          selected="selected">不限</option>
                   <%	
					  dw1="学科"				
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
               <td class="ziti03">电话号码 :</td>
               <td class="ziti03"><input type="text" name="tel" id="tel" /></td>
             </tr>
             <tr>
               <td class="ziti03">教员身份:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="shenfen" 
                        name="shenfen">
                   <option value="" 
                          selected="selected">不限</option>
                  <option value="1">大学生</option>
                  <option value="2">教师</option>
                  <option value="3">外籍人士</option>
                  <option value="4">其他</option>
                 </select>
               </font></td>
               <td class="ziti03">教学区域:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="quyu" 
                        name="quyu">
                   <option value="" 
                          selected="selected">不限</option>
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
               </font>&nbsp;&nbsp;&nbsp; <label>
                 <input name="button" type="submit" class="button" id="button" value="开始查询" />
                 </label></td>
             </tr>
           </table>
	     </div>
	   </form>	     <a href="jiaoyuannew.asp" class="top"></a></td>
	   </tr>
	 <tr>
	   <td width="49" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >编号 </div></td>
        <td width="55" bgcolor="#E8E8E8" class="ziti03"><div align="center">教员姓名 </div></td>
        <td width="84" bgcolor="#E8E8E8" class="ziti03"><div align="center">是否接收短信</div></td>
        <td width="46" bgcolor="#E8E8E8" class="ziti03"><div align="center">认证</div></td>
        <td width="47" bgcolor="#E8E8E8" class="ziti03"><div align="center">明星</div></td>
        <td width="46" bgcolor="#E8E8E8" class="ziti03"><div align="center">审核</div></td>
        <td width="70" bgcolor="#E8E8E8" class="ziti03"><div align="center">付费</div></td>
        <td width="75" align="center" bgcolor="#E8E8E8" class="ziti03">家教记录</td>
        <td width="71" bgcolor="#E8E8E8" class="ziti03"><div align="center" >录入时间</div></td>
        <td width="113" bgcolor="#E8E8E8" class="ziti03"><div align="center" >管理员操作</div></td>
      </tr> <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jiaoyuan where id="&id
 else
 if dw=1 then 
strsql="select * from jiaoyuan where renzheng='认证' order by id desc"
end if
 if dw=2 then 
strsql="select * from jiaoyuan where renzheng='未认证' order by id desc"
end if
 if dw=3 then 
strsql="select * from jiaoyuan where fufei='已付费' order by id desc"
end if
if dw=4 then 
strsql="select * from jiaoyuan where mingxing='是' order by id desc"
end if
if dw=5 then 
strsql="select * from jiaoyuan where images<>'' or images1<>'' or images2<>''  order by id desc"
end if
if dw=6 then 
strsql="select * from jiaoyuan where kongkai='是'  order by id desc"
end if
if dw=7 then 
strsql="select * from jiaoyuan where kongkai='否'  order by id desc"
end if
if dw="" then
if sex=""  then
strsql="select * from jiaoyuan where   tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%'  and  shenfen like '%" & shenfen & "%' order by id desc"
end if
if sex="不限"  then
strsql="select * from jiaoyuan where   tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%'  and  shenfen like '%" & shenfen & "%' order by id desc"
end if
if sex<>"不限" and sex<>"" then
strsql="select * from jiaoyuan where  sex='" &sex& "' and  tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and    shenfen like '%" & shenfen & "%' order by id desc"
end if
end if
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="10" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
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
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("duanxin") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("renzheng") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("mingxing") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("kongkai") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><a href="jiandang.asp?id=<%= rs("id") %>" class="top">查看</a></div></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><a href="xjilu.asp?id=<%= rs("id") %>" class="top">查看</a></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff">
          <div align="right"><a href='jiaoyuanshow.asp?id=<%= rs("id") %>&e=<%= dw %>' class="top">查看详细</a> / <a href="javascript:if(confirm('确认要删除吗？'))location='jiaoyuandel.asp?id=<%= rs("id") %>&dw=<%= dw %> '" class="top">删 除</a></div>
        </div></td>
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
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&dw="&dw&" class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&dw="&dw&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=darkgray> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&dw="&dw&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&dw="&dw&" class='top'><font size=2>末页</font></a>"  
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
 






