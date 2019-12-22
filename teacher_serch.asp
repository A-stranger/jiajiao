<!--#include file = "conn.asp"-->
<% 
d=Trim(Request("d"))
kemu=Trim(Request("subject"))
daxue=Trim(Request("school"))
quyu=Trim(Request("teach_place"))
sex=Trim(Request("gender"))
xueli=Trim(Request("xueli"))
teacher_id=Trim(Request("teacher_id"))
shenfen=Trim(Request("educational_level"))
dw="是"
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>教员库-<%= title %></title>
<META content=山东家教网 name=author>
<META content="www.mdjjj.net" name=copyright>
<META content=chinese name=language>
<META content=ALL name=robots>
<META content=Global name=distribution>
<META content=general name=rating>
<META content="MSHTML 6.00.3790.3959" name=GENERATOR>

<META content=document name=resource-type>
<META content="7 days" name=revisit-after>
<META content=JavaScript name=vs_defaultClientScript><LINK 
href="images/shanghai.css" type=text/css 
rel=stylesheet>
<SCRIPT type=text/javascript>
function secBoard(elementID,listName,n) {
var elem = document.getElementById(elementID);
var elemlist = elem.getElementsByTagName("h3");
for (var i=0; i<elemlist.length; i++) {
elemlist[i].className = "normal";
var m = i+1;
document.getElementById(listName+"_"+m).className = "normal";
}
elemlist[n-1].className = "current";
document.getElementById(listName+"_"+n).className = "current";
}
</SCRIPT>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 
background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD style="COLOR: #333333; LINE-HEIGHT: 20px" vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR>
            <TD width=300><IMG height=85 
            src="images/jiaoyuanku.gif" 
          width=224></TD>
            <TD width=630><TABLE cellSpacing=0 cellPadding=0 width=630 border=0>
              <TBODY>
                <TR>
                  <TD class="orange px16" colSpan=14 height=50><TABLE cellSpacing=0 cellPadding=0 width=630 border=0>
                    <TBODY>
                      <TR>
                        <TD width=216><DIV align=right><IMG height=23 
                        src="images/phone1.gif" 
                        width=28></DIV></TD>
                        <TD width=388><DIV 
                        align=center><STRONG>欢迎拨打请家教热线:<%= qrexian %></STRONG></DIV></TD>
                        <TD width=26>&nbsp;</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD width=5 height=33><IMG height=33 
                  src="images/jyk_3.gif" 
width=5></TD>
                  <TD width=90 bgColor=#f5e2bc><DIV class=px13 align=center><STRONG><A 
                  href="teacher_serch.asp">综合检索</A></STRONG></DIV></TD>
                  <TD width=5 height=33><IMG height=33 
                  src="images/jyk_4.gif" 
width=5></TD>
                  <TD width=5></TD>
                  <TD width=100 bgColor=#f7f8f9><DIV class=px13 align=center><A 
                  href="teacher.asp?d=zhuanye">专业教师</A></DIV></TD>
                  <TD width=5></TD>
                  <TD width=100 bgColor=#f7f8f9><DIV class=px13 align=center><A 
                  href="teacher.asp?d=daxue">大学生</A></DIV></TD>
                  <TD width=5></TD>
                  <TD width=100 bgColor=#f7f8f9><DIV class=px13 align=center><A 
                  href="teacher.asp?d=yinyue">音乐家教</A></DIV></TD>
                  <TD width=5></TD>
                  <TD width=100 bgColor=#f7f8f9><DIV class=px13 align=center><A 
                  href="teacher.asp?d=yingyu">英语教员库</A></DIV></TD>
                  <TD width=5></TD>
                  <TD width=100 bgColor=#f7f8f9><DIV class=px13 align=center><A 
                  href="teacher.asp?d=haigui">其他人士</A></DIV></TD>
                  <TD width=5></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE>
          <FORM name=form1 action=teacher_serch.asp method=post>
            <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
              <TBODY>
                <TR>
                  <TD width=7 height=54><IMG height=54 
            src="images/jyk_1.gif" width=7></TD>
                  <TD width=106 align="right" bgColor=#f5e2bc>编号T&nbsp; </TD>
                  <TD width=810 align="left" bgColor=#f5e2bc><INPUT id=teacher_id2 size=6 
            name=teacher_id>
                    <SELECT class=input_text name=subject>
                        <OPTION value="" 
                          selected>请选择家教科目</OPTION>
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
                          value=<%= rs("title") %>><%= rs("title") %></option>
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
                    </SELECT>
                    　
                    <font 
                        color=#ffffff>
                    <select  id=teach_place 
                        name=teach_place>
                      <option value="" 
                          selected>授课区域</option>
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
                          value=<%= rs("title") %>><%= rs("title") %></option>
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
                    </font>
                    　
                    <FONT 
                        color=#ffffff>
                    <select size=1 name=select2>
                      <option 
                          value="" selected>选择高校</option>
                      <%	
					  dw1="院校"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                      <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                      <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
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
                    </FONT>
                    
                    <SELECT 
            class=input_text id=gender name=gender>
                      <OPTION value="" 
              selected>性别</OPTION>
                      <OPTION value=男>男</OPTION>
                      <OPTION 
              value=女>女</OPTION>
                    </SELECT>
                    
                    <SELECT name=xueli id="xueli">
                      <OPTION value="" selected>选择学历</OPTION>
                     <OPTION value=大专以下>大专以下</OPTION>
                                        <OPTION value=大专在读>大专在读</OPTION>
                                        <OPTION value=大专毕业>大专毕业</OPTION>
                                        <OPTION value=本科在读>本科在读</OPTION>
                                        <OPTION value=本科毕业>本科毕业</OPTION>
                                        <OPTION value=硕士在读>硕士在读</OPTION>
                                        <OPTION value=硕士毕业>硕士毕业</OPTION>
                                        <OPTION value=博士在读>博士在读</OPTION>
                    </SELECT>
                  <INPUT type=submit value=检索 name=Submit2>
                  <input name="d" type="hidden" id="d" value="<%= d %>">                                  </TD>
                  <TD width=7><IMG height=54 
            src="images/jyk_2.gif" 
        width=7></TD>
                </TR>
              </TBODY>
            </TABLE>
        </FORM>
        <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR>
                <TD colSpan=7 height=8></TD>
              </TR>
              <TR>
                <TD width=10></TD>
                <TD width=310 valign="top"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD height=30><DIV class=ash- align=center>－－－－－－－－－ 高校分类 
                          －－－－－－－－－</DIV></TD>
                      </TR>
                      
                      <TR>
                        <TD height=25><%	
					  dw1="院校"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                          <% if rsf.eof and rsf.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                                          暂无记录
                                          <% Else
				   %>
                                          <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                                            <tr valign='top'>
                                              <% 

		
					  i=0  
					   do while not rsf.eof  
								  i=i+1
								  
		  %>
                                              <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="3" bordercolor="#F3F3F3">
                                                        <tr>
                                                          <td width="753" height="18" valign="top" bgcolor="#FFFFFF" ><A  href="teacher.asp?daxue=<%= rsf("title") %>"><%= rsf("title") %></A></td>
                                                        </tr>
                                                    </table></td>
                                                  </tr>
                                                </table>
                                                  <%if (i mod 3) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rsf.movenext
			 									'指向下一条记录
			if rsf.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                                            </tr>
                                          </table>
                        <% End If 
		  rsf.close
		set rsf=nothing
		  %></TD>
                      </TR>
                    </TBODY>
                </TABLE></TD>
                <TD width=1 bgColor=#f0eded></TD>
                <TD width=220 valign="top"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD height=30><DIV class=ash- align=center>－－－－－－ 区域分类 －－－－－－</DIV></TD>
                      </TR>
                      
                      <TR>
                        <TD height=25><DIV align=center>
                          <%	
					  dw1="地区"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                          <% if rsf.eof and rsf.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                                          暂无记录
                                          <% Else
				   %>
                                          <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                                            <tr valign='top'>
                                              <% 

		
					  i=0  
					   do while not rsf.eof  
								  i=i+1
								  
		  %>
                                              <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
                                                        <tr>
                                                          <td width="753" height="18" valign="top" bgcolor="#FFFFFF" ><div align="center"><A  href="teacher.asp?quyu=<%= rsf("title") %>" title="<%= rsf("title") %>的家教"><%= left(rsf("title"),2) %></A></div></td>
                                                        </tr>
                                                    </table></td>
                                                  </tr>
                                                </table>
                                                  <%if (i mod 4) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rsf.movenext
			 									'指向下一条记录
			if rsf.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                                            </tr>
                                          </table>
                                          <% End If 
		  rsf.close
		set rsf=nothing
		  %>
                        </DIV></TD>
                      </TR>
                    </TBODY>
                </TABLE></TD>
                <TD width=1 bgColor=#f0eded></TD>
                <TD valign="top"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD height=30><DIV class=ash- align=center>－－－－－－－－－－－－ 科目分类 
                          －－－－－－－－－－－－</DIV></TD>
                      </TR>
                      
                      <TR>
                        <TD height=25><%	
					  dw1="学科"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                          <% if rsf.eof and rsf.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                                          暂无记录
                                          <% Else
				   %>
                                          <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                                            <tr valign='top'>
                                              <% 

		
					  i=0  
					   do while not rsf.eof  
								  i=i+1
								  
		  %>
                                              <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td height="22" valign="top"><table width="97%" height="22"   border="0" align="center" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
                                                        <tr>
                                                          <td width="753" height="18" align="center" valign="top" bgcolor="#FFFFFF" ><a  href="teacher.asp?kemu=<%= rsf("title") %>"><%= rsf("title") %></a></td>
                                                        </tr>
                                                    </table></td>
                                                  </tr>
                                                </table>
                                                  <%if (i mod 5) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rsf.movenext
			 									'指向下一条记录
			if rsf.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                                            </tr>
                                          </table>
                        <% End If 
		  rsf.close
		set rsf=nothing
		  %></TD>
                      </TR>
                    </TBODY>
                </TABLE></TD>
                <TD width=10></TD>
              </TR>
              <TR>
                <TD colSpan=7 height=8></TD>
              </TR>
            </TBODY>
        </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 
background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD style="COLOR: #333333; LINE-HEIGHT: 20px" vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR bgColor=#f7edcd>
            <TD  width=46 
          bgColor=#f7edcd height=37></TD>
            <TD class=spacing1 width=618 bgColor=#f7edcd>&nbsp;</TD>
            <TD width=266 bgColor=#f7edcd><SPAN class=spacing1>“<SPAN 
            class=red>★</SPAN>”<A class=black9 
            href="teacher.asp?d=mingxing">为明星教员</A>　　“<SPAN 
            class=red>√</SPAN> ”<A class=black9 
            href="teacher.asp?d=renzheng">为认证教员</A></SPAN></TD>
          </TR>
        </TBODY>
      </TABLE>
          <TABLE cellSpacing=1 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR bgColor=#f5e2bc>
                <TD width=62 height=37><DIV align=center>教员编号</DIV></TD>
                <TD width=76><DIV align=center>姓名/性别</DIV></TD>
                <TD width=99><DIV align=center>目前身份/学历</DIV></TD>
                <TD width=110><DIV align=center>学校/专业</DIV></TD>
                <TD width=145><DIV align=center>可教授课程</DIV></TD>
                <TD width=285><DIV align=center>自我描述</DIV></TD>
                <TD width=70><DIV align=center><SPAN class=white_link_9>登陆时间</SPAN></DIV></TD>
                <TD width=74><DIV align=center>查看详情</DIV></TD>
              </TR>
<% 
			 
			  set rs=server.CreateObject("adodb.recordset")

if d="zhuanye" then
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and kongkai='"&dw&"' and  daxue like '%" & daxue & "%' and  sex like '%" & sex & "%' and  xueli like '%" & xueli & "%' and  gongzuo like '%" & shenfen & "%' and zhunaye='"&dw&"' order by logotime desc"
end if
if d="yinyue" then
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and kongkai='"&dw&"' and  daxue like '%" & daxue & "%' and  sex like '%" & sex & "%' and  xueli like '%" & xueli & "%' and  gongzuo like '%" & shenfen & "%' and yinyue='"&dw&"' order by logotime desc"
end if
if d="daxue" then
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and kongkai='"&dw&"' and  daxue like '%" & daxue & "%' and  sex like '%" & sex & "%' and  xueli like '%" & xueli & "%' and  gongzuo like '%" & shenfen & "%' and shenfen=1 order by logotime desc"
end if
if d="haigui" then
haigui=4
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and kongkai='"&dw&"' and  daxue like '%" & daxue & "%' and  sex like '%" & sex & "%' and  xueli like '%" & xueli & "%' and  gongzuo like '%" & shenfen & "%' and shenfen=4 order by logotime desc"
end if
if d="" then
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and kongkai='"&dw&"' and  daxue like '%" & daxue & "%' and  sex like '%" & sex & "%' and  xueli like '%" & xueli & "%' and  gongzuo like '%" & shenfen & "%'  order by logotime desc"
end if
if teacher_id<>"" then 
strsql="select * from jiaoyuan where id="&teacher_id
end if
rs.open strsql,conn,1,1

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
		i=0
	    do while not rs.eof and counts>0
		i=i+1
	   %>
              <TR bgColor=<% If (i mod 2) =0 Then %>
			  #f7f5dc
			  <% Else %>
			  #f9f9ec
			  <% End If %>
			  >
                <TD width=62 height=30><DIV align=center>
                  <% If rs("mingxing")="是" Then %>
                  <span class="red">★</span>
                  <% End If %>
                  <% If rs("renzheng")="认证" Then %>
                  <span class="red">√</span>
                  <% End If %>
                  T<span style="font-size: 10pt"><%= rs("id") %></span></DIV></TD>
                <TD width=76><DIV align=center><%= left(rs("xingming"),1) %>老师（<%= rs("sex") %>）</DIV></TD>
                <TD class=p10 width=99><DIV align=center><FONT color=#990000><%= rs("gongzuo") %></FONT><BR>
                  <%= rs("xueli") %></DIV></TD>
                <TD class=p10 width=110><DIV align=center><span style="font-size: 10pt"><%= rs("zhuanye") %>（<%= rs("daxue") %>）</span></DIV></TD>
                <TD class=p10 width=145><span style="font-size: 10pt"><%= rs("kemu") %></span></TD>
                <TD class=p10 width=285><%= rs("miaoshu") %></TD>
                <TD width=70><DIV align=center><FONT 
            color=#000000><span style="font-size: 10pt"><%= rs("logotime") %></span></FONT></DIV></TD>
                <TD width=74><DIV align=center><A class=orange_ 
            href="teacher_show.asp?id=<%= rs("id") %>" 
            target=_blank>查看<BR>
                  详情</A></DIV></TD>
              </TR><%   	
		  counts = counts - 1 
		  rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop
		
		%>
            </TBODY>
          </TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR bgColor=#f7edcd>
                <TD  width=46 
          bgColor=#f7edcd height=37></TD>
                <TD class=spacing1 width=765 bgColor=#f7edcd><TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
                  <TBODY>
                    <TR>
                      <TD colSpan=3 height=1></TD>
                    </TR>
                    <TR>
                      <TD width="7%" 
          height=28 valign="bottom"><DIV align=center><A 
          href="javascript:location.reload()">刷新</A></DIV></TD>
                      <TD width="56%"><DIV align=left>
                          <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
                            <tr>
                              <td height="18" class="ziti03"><div align="right" class="top">
                                  <%  
response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"条记录"  
if page = 1 then  											'到达第一页
	response.write "<font color=#66666>&nbsp;&nbsp;首页 前页</font>"  
else  														'不是第一页
	response.write "&nbsp;&nbsp;<a href="&request.ServerVariables("script_name")&"?page=1&subject="&kemu&"&school="&daxue&"&teach_place="&quyu&"&gender="&sex&"&xueli="&xueli&"&d="&d&" class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&subject="&kemu&"&school="&daxue&"&teach_place="&quyu&"&gender="&sex&"&xueli="&xueli&"&d="&d&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=#66666> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&subject="&kemu&"&school="&daxue&"&teach_place="&quyu&"&gender="&sex&"&xueli="&xueli&"&d="&d&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&subject="&kemu&"&school="&daxue&"&teach_place="&quyu&"&gender="&sex&"&xueli="&xueli&"&d="&d&" class='top'><font size=2>末页</font></a>"  
end if  

response.write " 第"&page&"页 共"&allpages&"页 " 		 	'显示当前页数信息
 rs.Close
      set rs=nothing 
%>
                              </div></td>
                            </tr>
                          </table>
                      </DIV></TD>
                      <TD valign="bottom"><DIV align=center><SPAN class=black9>● </SPAN><A class=black9 
            href="teacher.asp?d=mingxing">明星教员库</A>　<A 
            class=black9 
            href="teacher.asp?d=zhuanye">在职教师库</A>　<A 
            class=black9 
            href="teacher.asp?d=yinyue">音乐专才库</A> </DIV></TD>
                    </TR>
                  </TBODY>
                </TABLE></TD>
              </TR>
              <TR>
                <TD colSpan=2 height=20></TD>
              </TR>
            </TBODY>
        </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=16><IMG height=15 
      src="images/center_1_1.gif" width=16></TD>
    <TD 
background=images/center_1_2.gif>&nbsp;</TD>
    <TD width=15><IMG height=15 
      src="images/center_1_3.gif" 
  width=15></TD></TR></TBODY></TABLE>
<!--#include file = "foot.asp"--></BODY></HTML>
