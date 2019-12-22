<!--#include file = "conn.asp"-->
<% d=Trim(Request("d")) 
dw="是"
daxue=Trim(Request("daxue"))
kemu=Trim(Request("kemu"))
quyu=Trim(Request("quyu"))

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>教员库-<%= title %>-本资源来自搜虎精品社区www.souho.net</title>
<META content=山东家教网-本资源来自搜虎精品社区www.souho.net name=author>
<META content="www.mdjjj.net-本资源来自搜虎精品社区www.souho.net" name=copyright>
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
                        name=seteach_place>
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
                      <OPTION 
              value=大专在读学生>大专在读学生</OPTION>
                      <OPTION value=本科大一学生>本科大一学生</OPTION>
                      <OPTION value=本科大二学生>本科大二学生</OPTION>
                      <OPTION 
              value=本科大三学生>本科大三学生</OPTION>
                      <OPTION value=本科大四学生>本科大四学生</OPTION>
                      <OPTION value=本科大五学生>本科大五学生</OPTION>
                      <OPTION 
              value=在读硕士生>在读硕士生</OPTION>
                      <OPTION value=在读博士生>在读博士生</OPTION>
                      <OPTION value=其他学生>其他学生</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=离职幼儿教师>离职幼儿教师</OPTION>
                      <OPTION 
              value=退休幼儿教师>退休幼儿教师</OPTION>
                      <OPTION value=进修幼儿教师>进修幼儿教师</OPTION>
                      <OPTION value=在职幼儿教师>在职幼儿教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=离职小学教师>离职小学教师</OPTION>
                      <OPTION 
              value=退休小学教师>退休小学教师</OPTION>
                      <OPTION value=进修小学教师>进修小学教师</OPTION>
                      <OPTION value=在职小学教师>在职小学教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=离职初中教师>离职初中教师</OPTION>
                      <OPTION 
              value=退休初中教师>退休初中教师</OPTION>
                      <OPTION value=进修初中教师>进修初中教师</OPTION>
                      <OPTION value=在职初中教师>在职初中教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=离职高中教师>离职高中教师</OPTION>
                      <OPTION 
              value=退休高中教师>退休高中教师</OPTION>
                      <OPTION value=进修高中教师>进修高中教师</OPTION>
                      <OPTION value=在职高中教师>在职高中教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=离职大学教师>离职大学教师</OPTION>
                      <OPTION 
              value=退休大学教师>退休大学教师</OPTION>
                      <OPTION value=在职大学教师>在职大学教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION 
              value=离职专业培训机构教师>离职专业培训机构教师</OPTION>
                      <OPTION 
              value=退休专业培训机构教师>退休专业培训机构教师</OPTION>
                      <OPTION 
              value=进修专业培训机构教师>进修专业培训机构教师</OPTION>
                      <OPTION 
              value=在职专业培训机构教师>在职专业培训机构教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=其它教师>其它教师</OPTION>
                      <OPTION value=""></OPTION>
                      <OPTION value=海外工作归国人员>海外工作归国人员</OPTION>
                      <OPTION 
              value=海外留学归国人员>海外留学归国人员</OPTION>
                      <OPTION value=外籍教师>外籍教师</OPTION>
                      <OPTION value=外籍留学生>外籍留学生</OPTION>
                    </SELECT>
                  <INPUT type=submit value=检索 name=Submit2>                  </TD>
                  <TD width=7><IMG height=54 
            src="images/jyk_2.gif" 
        width=7></TD>
                </TR>
              </TBODY>
            </TABLE>
        </FORM>
        </TD>
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
                <TD width=99><DIV align=center>目前学历</DIV></TD>
                <TD width=110><DIV align=center>学校/专业</DIV></TD>
                <TD width=145><DIV align=center>擅长课程</DIV></TD>
                <TD width=285><DIV align=center>自我推荐</DIV></TD>
                <TD width=70><DIV align=center><SPAN class=white_link_9>登陆日期</SPAN></DIV></TD>
                <TD width=74><DIV align=center>查看详情</DIV></TD>
              </TR>
			  <% 
			 
			  set rs=server.CreateObject("adodb.recordset")
if d="mingxing" then
strsql="select * from jiaoyuan where mingxing='"&dw&"' and kongkai='"&dw&"' order by logotime desc"
end if
if d="zhuanye" then

strsql="select * from jiaoyuan where zhunaye='"&dw&"' and kongkai='"&dw&"' order by logotime desc"
end if
if d="yinyue" then

strsql="select * from jiaoyuan where yinyue='"&dw&"' and kongkai='"&dw&"' order by logotime desc"
end if
if d="renzheng" then
renzheng="认证"
strsql="select * from jiaoyuan where renzheng='"&renzheng&"' and kongkai='"&dw&"' order by logotime desc"
end if
if d="yingyu" then
yi="英语"
strsql="select * from jiaoyuan where kemu like '%" & yi & "%' and kongkai='"&dw&"' order by logotime desc"
end if
if d="daxue" then
daxue=1
strsql="select * from jiaoyuan where shenfen=1 and kongkai='"&dw&"' order by logotime desc"
end if
if d="haigui" then
haigui=4
strsql="select * from jiaoyuan where shenfen=4 and kongkai='"&dw&"' order by logotime desc"
end if

if d="" then
strsql="select * from jiaoyuan where  kongkai='"&dw&"' order by logotime desc"
if daxue<>"" then
strsql="select * from jiaoyuan where daxue like '%" & daxue & "%' and kongkai='"&dw&"' order by logotime desc"
end if
if kemu<>"" then
strsql="select * from jiaoyuan where kemu like '%" & kemu & "%' and kongkai='"&dw&"' order by logotime desc"
end if
if quyu<>"" then
strsql="select * from jiaoyuan where quyu like '%" & quyu & "%' and kongkai='"&dw&"' order by logotime desc"
end if
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
                <TD class=p10 width=110><DIV align=center><span style="font-size: 10pt"><%= rs("zhuanye") %><br><%= rs("daxue") %></span></DIV></TD>
                <TD class=p10 width=145><span style="font-size: 10pt"><%= rs("kemu") %></span></TD>
                <TD class=p10 width=285><%= rs("miaoshu") %></TD>
                <TD width=70><DIV align=center><FONT 
            color=#000000><span style="font-size: 10pt"><%= month(rs("logotime")) %>-<%= day(rs("logotime")) %></span></FONT></DIV></TD>
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
if page=1 then  											'到达第一页
	response.write "<font color=#66666>&nbsp;&nbsp;首页 前页</font>"  
else  														'不是第一页
	response.write "&nbsp;&nbsp;<a href="&request.ServerVariables("script_name")&"?page=1&kemu="&kemu&"&daxue="&daxue&"&quyu="&quyu&"&d="&d&" class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&kemu="&kemu&"&daxue="&daxue&"&quyu="&quyu&"&d="&d&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=#66666> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&kemu="&kemu&"&daxue="&daxue&"&quyu="&quyu&"&d="&d&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&kemu="&kemu&"&daxue="&daxue&"&quyu="&quyu&"&d="&d&" class='top'><font size=2>末页</font></a>"  
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
