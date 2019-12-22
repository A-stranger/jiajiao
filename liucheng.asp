<!--#include file = "conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>请家教流程-<%= title %></title>
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
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 
background=images/top_2_1.gif></TD>
    <TD width=15 bgColor=#ffffff>&nbsp;</TD>
    <TD vAlign=top bgColor=#ffffff>
      <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
        <TR>
          <TD colSpan=3 height=12></TD></TR>
        <TR>
          <TD vAlign=top width=712><TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; FONT-SIZE: 13px; BORDER-LEFT: #ebecee 1px solid; LINE-HEIGHT: 20px; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=710 align=center 
              bgColor=#ffffff>
              <TBODY>
                <TR>
                  <TD colSpan=3 height=10></TD>
                </TR>
                <TR>
                  <TD class=ash><%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select luxian from xinxi ",conn,1,1
		%>
                    <%= rs("luxian") %>
                    <%
	      rs.Close
          set rs=nothing
		 %>
<BR>
                      <TABLE cellSpacing=0 cellPadding=0 width=710 border=0>
                        <TBODY>
                          <TR>
                            <TD></TD>
                          </TR>
                        </TBODY>
                      </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE>
            <BR></TD>
          <TD width=12></TD>
          <TD vAlign=top width=206>
          <TABLE cellSpacing=0 cellPadding=0 width=206 border=0>
        <TBODY>
        <TR>
        
          <TD width=14><IMG height=95 
            src="images/t_info_1.gif" width=14></TD>
          <TD width=66 
          background=images/t_info_2.gif>
            <DIV align=center><IMG height=23 
            src="images/phone2.gif" 
          width=28></DIV></TD>
          <TD class="height20 orange" width=114 
          background=images/t_info_2.gif>
            <DIV 
            align=left><STRONG>请家教热线：<BR><%= qrexian %></STRONG></DIV></TD>
          <TD width=12><IMG height=95 
            src="images/t_info_3.gif" 
        width=12></TD></TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width=206 border=0>
              <TBODY>
              <TR>
                <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_8.gif" 
                width=6></TD>
                <TD 
                style="BORDER-TOP: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
                vAlign=top align=middle>
                  <DIV align=center><IMG height=29 
                  src="images/t_info_6.gif" 
                  width=167></DIV>
                  <TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                        <TBODY>
                          <TR>
                            <TD height=10></TD>
                          </TR>
                          <% 	 
dw2="寻找合适的教员"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                          <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                            <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                              <% End If %>
                            </A></TD>
                          </TR>
                          
                          <TR>
                            <TD height=1 align="left" bgColor=#ebecee></TD>
                          </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		rs.close
		set rs=nothing
 %>
                          <TR>
                            <TD height=12></TD>
                          </TR>
                        </TBODY>
                      </TABLE></TD>
                <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_9.gif" 
                width=6></TD></TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width=203 border=0>
              <TBODY>
              <TR>
                <TD height=12></TD></TR>
              <TR>
                <TD background=images/t_info_11.gif 
                height=74>
                  <DIV class=white_16 align=center><A class=white 
                  href="teacher_serch.asp">优秀教员<BR>
                    更多选择条件</A></DIV></TD></TR>
              <TR>
                <TD><A 
                  href="teacher_serch.asp"><IMG 
                  src="images/t_info_12.gif" 
                  width=203 
                  height=71 border="0"></A></TD>
              </TR>
              <TR>
                <TD height=12></TD></TR></TBODY></TABLE>
            <TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=206>
              <TBODY>
              <TR>
                <TD>
                  <DIV align=center><IMG height=28 
                  src="images/t_info_13.gif" 
                  width=167></DIV></TD></TR>
              <TR>
                <TD height=10></TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>中小学课程类</SPAN></TD>
              </TR>
              <TR>
                <TD height=30>　<A 
                  href="teacher.asp?kemu=语文">语文</A> 
                  <A 
                  href="teacher.asp?kemu=数学">数学</A> 
                  <A 
                  href="teacher.asp?kemu=英语">英语</A> 
                  <A 
                  href="teacher.asp?kemu=化学">化学</A> 
                  <A 
                  href="teacher.asp?kemu=物理">物理</A> 
                  <A 
                  href="teacher.asp?kemu=奥数">奥数</A></TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>语言外语类</SPAN></TD>
              </TR>
              <TR>
                <TD height=30>　<A 
                  href="teacher.asp?kemu=韩语">韩语</A> 
                  <A 
                  href="teacher.asp?kemu=德语">德语</A> 
                  <A 
                  href="teacher.asp?kemu=法语">法语</A> 
                  <A 
                  href="teacher.asp?kemu=日语">日语</A> 
                  <A 
                  href="teacher.asp?kemu=汉语">汉语</A> 
                  <A 
                  href="teacher.asp?kemu=俄语">俄语</A></TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>音乐艺术类</SPAN></TD>
              </TR>
              <TR>
                <TD class=height20 height=50>　<A 
                  href="teacher.asp?kemu=钢琴">钢琴</A> 
                  <A 
                  href="teacher.asp?kemu=小提琴">小提琴</A> 
                  <A 
                  href="teacher.asp?kemu=电子琴">电子琴</A> 
                  <A 
                  href="teacher.asp?kemu=萨克斯">萨克斯</A> 
                  <A 
                  href="teacher.asp?kemu=吉他">吉他</A><BR>　<A 
                  href="teacher.asp?kemu=大提琴">大提琴</A> 
                  <A 
                  href="teacher.asp?kemu=打击乐">打击乐</A> 
                  <A 
                  href="teacher.asp?kemu=单簧管">单簧管</A> 
                  <A 
                  href="teacher.asp?kemu=古筝">古筝</A> 
                  <A 
                  href="teacher.asp?kemu=美术">美术</A> 
                </TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>体育益智类</SPAN></TD>
              </TR>
              <TR>
                <TD height=30>　<A 
                  href="teacher.asp?kemu=网球">网球</A> 
                  <A 
                  href="teacher.asp?kemu=羽毛球">羽毛球</A> 
                  <A 
                  href="teacher.asp?kemu=乒乓">乒乓</A> 
                  <A 
                  href="teacher.asp?kemu=围棋">围棋</A> 
                  <A 
                  href="teacher.asp?kemu=国际象棋">国际象棋</A></TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>服务以下地区</SPAN></TD>
              </TR>
              <TR>
                <TD class=height20 height=50><P class=p_2>
                  <%	
					  dw1="地区"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 20 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                  <% if rs.eof and rs.bof then %>
  &nbsp;&nbsp;&nbsp;&nbsp;
                  暂无记录
                  <% Else
				   %>
                </P>
                  <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                    <tr valign='top'>
                      <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
                      <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
                                <tr>
                                  <td width="753" height="21" valign="top" bgcolor="#FFFFFF" ><div align="center"><A href="teacher.asp?quyu=<%= rs("title") %>"><%= rs("title") %></A></div></td>
                                </tr>
                            </table></td>
                          </tr>
                        </table>
                          <%if (i mod 4) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                    </tr>
                  </table>
                  <div align="center">
                    <% End If 
		  rs.close
		set rs=nothing
		  %>
                  <a href="teacher.asp"></a></div></TD></TR>
              <TR>
                <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>包揽名校师资</SPAN></TD>
              </TR>
              <TR>
                <TD class=height20 height=90><P class=p_2>
                  <%	
					  dw1="院校"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 15 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                  <% if rs.eof and rs.bof then %>
  &nbsp;&nbsp;&nbsp;&nbsp;
                  暂无记录
                  <% Else
				   %>
                </P>
                  <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                    <tr valign='top'>
                      <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
                      <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="3" bordercolor="#F3F3F3">
                                <tr>
                                  <td width="200" height="18" valign="top" bgcolor="#FFFFFF" ><A  href="teacher.asp?daxue=<%= rs("title") %>" ><%= rs("title") %></A></td>
                                </tr>
                            </table></td>
                          </tr>
                        </table>
                          <%if (i mod 3) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                    </tr>
                  </table>
                  <div align="center">
                    <% End If 
		  rs.close
		set rs=nothing
		  %>
                  <a href="teacher.asp"></a></div></TD></TR>
              <TR>
                <TD height=20></TD></TR></TBODY></TABLE><BR><!--      
          <table width="206" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">

            <tr>
              <td height="300"><div align="center" class="product_name">广告位 206*300</div></td>
            </tr>
          </table>
          --></TD></TR></TBODY></TABLE></TD>
    <TD width=15 bgColor=#ffffff>&nbsp;</TD>
    <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD></TR></TBODY></TABLE>
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
