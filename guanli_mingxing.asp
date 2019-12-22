<!--#include file="conn.asp"-->

<%
if session("username")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='logoin.asp';</script>"
response.End
end if
%>
<%
agree=Trim(Request.Form("agree"))
id=Trim(Request.Form("id"))
content=Trim(Request.Form("content"))

if id<>"" then 
if agree="" then 
response.Write("<script>alert('您没同意明星教员协议!');history.go(-1);</script>")
response.end
end if
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from mingxing"
 rs.open strsql,conn,1,3
 rs.addnew
 rs("userid")=id
 rs("neirong")=content
 rs.update
 response.Write("<script>alert(' 申请已经提交!');history.go(-1);</script>")
end if
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>会员中心-<%= title %></title>
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
<style type="text/css">
<!--
.STYLE12 {color: #FFFFFF}
.STYLE1 {color: #FF0000}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 
background=images/top_2_1.gif></TD>
    <TD vAlign=top bgColor=#ffffff><TABLE width="948" border=0 align=center cellPadding=0 cellSpacing=0 bgColor=#ffffff>
      <TBODY>
        
        <TR>
          <TD vAlign=top align=middle width=948><TABLE width="98%" height=60 
      border=0 align="center" cellPadding=0 cellSpacing=1 bgColor=#cccccc>
              <TBODY>
                <TR>
                  <TD vAlign=center background=images/beijin1.gif 
          bgColor=#f3f3f3><DIV align=center><SPAN class=buleo2_link_9>欢迎您</SPAN><SPAN 
            class=red_10><%= session("username") %></SPAN>，<SPAN 
            class=buleo2_link_9>您的教员编号是</SPAN><SPAN 
            class=red_10>T<%= session("id") %></SPAN><SPAN 
            class=buleo2_link_9>,您的简历已被浏览过</SPAN><SPAN 
            class=red_link_10><%= session("cishu") %></SPAN><SPAN 
            class=buleo2_link_9>次！</SPAN><BR>
                          <SPAN 
            class=buleo2_link_9>为了保证您的个人资料不被他人修改或窃取，请务必在离开前退出并关闭浏览器窗口！</SPAN> <BR>
                  </DIV></TD>
                </TR>
              </TBODY>
            </TABLE>
          <BR>
            <BR>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD width=169 height="650" vAlign=top><!--#include file="left.asp"-->                    </TD>
                    <TD vAlign=top width=10><TABLE width=1 height="650" border=0 align=center cellPadding=0 cellSpacing=0 
            bgColor=#3366cc>
                        <TBODY>
                          <TR>
                            <TD width="1" height=400></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                    <TD width="778" align=center vAlign=top bgcolor="#ffffff"><TABLE width=100% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD width="96%" align=left valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><strong><img src="images/my_1_4.gif" width="142" height="58" align="middle"><strong><span class="t">&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;申请明星教员</span></strong></strong></strong></TD>
                            <TD width="4%" 
            height=56 align=right valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><span class="t"><img src="images/my_1_3.gif" width="12" height="58"></span></strong></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                        <br>
                        <TABLE cellSpacing=1 cellPadding=0 width=712 bgColor=#cccccc border=0>
                          <TBODY>
                            <TR>
                              <TD vAlign=top align=middle background=images/beijin1.gif 
    bgColor=#ffffff><TABLE width=716 border=0 align="center" cellPadding=0 cellSpacing=1>
                                    <TBODY>
                                      <TR>
                                        <TD class=buleo2_link_9 height=28><% 
id=session("id")
set rsw=server.CreateObject("adodb.recordset")
strsqlw="select * from mingxing where userid="&id
rsw.open strsqlw,conn,1,1
if rsw.eof and rsw.bof then 
%>
                                            <P class=buleo2_link_11 align=center><STRONG>明星教员协议　</STRONG></P>
                                          <P>
                                            <%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select mxieyi from body ",conn,1,1
		%>
                                            <%= rs("mxieyi") %>
                                            <%
	      rs.Close
          set rs=nothing
		  %>
                                          </P>
                                        </TD>
                                      </TR>
                                      <TR>
                                        <TD align=middle height=28><SPAN class=buleo2_link_9>申请前请详细阅读<SPAN 
            class=o_link_9>《明星教员协议》</SPAN>,若明显不合适,将不予回复,请见谅!</SPAN></TD>
                                      </TR>
                                    </TBODY>
                                  </TABLE>
                                <BR>
                                  <form action="guanli_mingxing.asp" method="post" name="form" id="form" >
                                    <TABLE width=530 border=0 align="center" cellPadding=0 cellSpacing=0>
                                      <TBODY>
                                        <TR>
                                          <TD class=buleo2_link_9 height=30><DIV align=center>请填写您的优秀事绩(限400字) </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD 
          align=middle><TEXTAREA name=content cols=70 rows=10 id="content"></TEXTAREA></TD>
                                        </TR>
                                        <TR>
                                          <TD><DIV align=center><BR>
                                                  <SPAN class=o_link_9>
                                                  <INPUT id=agree 
            type=checkbox CHECKED value=1 name=agree>
                                                  </SPAN><SPAN 
            class=red_link_9>我已认真阅读并接受《明星教员协议》各项条款（接受本协议是申请前提） </SPAN>
                                                  <P>
                                                    <INPUT type=submit value=申请 name=Submit3>
                                                    <INPUT type=reset value=放弃 name=Submit3>
                                                    <input type="hidden" name="id" id="hiddenField" value="<%= session("id") %>">
                                                  </P>
                                          </DIV></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE>
                                  </form>
                                <% Else %>
                                  <% dw="是"
set rsr=server.CreateObject("adodb.recordset")
strsqlr="select * from jiaoyuan where mingxing='"&dw&"' and id="&id
rsr.open strsqlr,conn,1,1
er=rsr("id")
rsw.close
set rsw=nothing
rsr.close
set rsr=nothing
 %>
                                  <% If er="" Then %>
                                审核中...
                                <% Else %>
                                已通过审核，你已经是明星教员了
                                <% End If %>
                                <% End If %>
                                <BR></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                        <p>&nbsp;</p>
                        </TD>
                  </TR>
                </TBODY>
              </TABLE>
            <BR>
            <BR>
            <BR></TD>
          </TR>
        <TR>
          <TD><DIV align=center> </SPAN></DIV></TD>
          </TR>
      </TBODY>
    </TABLE></TD>
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
