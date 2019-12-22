<!--#include file = "conn.asp"-->
<%
w=Trim(Request.Form("w"))
if w<>"" then
dim  username,password
username=Trim(Request.Form("name"))
password=Trim(Request.Form("password"))
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from jiaoyuan where username='"&username&"' and password='"&password&"'"
rs.open strsql,conn,1,3
if not(rs.bof and rs.eof) then
session("username")=rs("username")
session("cishu")=rs("cishu")
session("id")=rs("id")
rs("intime")=date()
rs.update
else
response.Write("<script>alert('用户名或密码有误,请检查后重新输入!');history.go(-1);</script>")
response.end
end if
rs.close
set rs=nothing
response.Redirect("guanli.asp")
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>找回密码-<%= title %></title>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<TABLE cellSpacing=0 cellPadding=0 width=680 align=center bgColor=#ffffff 
      border=0>
  <TBODY>
    <TR>
      <TD width=16><IMG height=17 src="images/center_2_1.gif" 
            width=16></TD>
      <TD background=images/center_2_2.gif>&nbsp;</TD>
      <TD width=15><IMG height=17 src="images/center_2_3.gif" 
            width=15></TD>
    </TR>
    <TR>
      <TD background=images/center_3_1.gif>&nbsp;</TD>
      <TD height=400><TABLE height=250 cellSpacing=0 cellPadding=0 width=600 align=center 
            border=0>
        <TBODY>
          <TR>
            <TD width=250><TABLE cellSpacing=0 cellPadding=0 width=200 align=center 
                  border=0>
              <TBODY>
                <TR>
                  <TD><A title=家教 href="<%= url %>"><IMG 
src="<%= bookpic %>" border="0"></A></TD>
                </TR>
                <TR>
                  <TD height=30>&nbsp;</TD>
                </TR>
                <TR>
                  <TD><DIV align=right><IMG height=55 
                        src="images/hydl.gif" 
                    width=175></DIV></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#cccccc></TD>
            <TD><TABLE height=60 cellSpacing=1 cellPadding=0 width="100%" 
      border=0>
              <FORM name=theForm action=getpassworddo.asp method=post>
                <TBODY>
                  <TR>
                    <TD vAlign=top><DIV class=asho_link_9 align=center>
                        <TABLE cellSpacing=0 cellPadding=0 width="96%" border=0>
                          <TBODY>
                            <TR>
                              <TD vAlign=top align=middle><DIV align=left><BR>
                                      <TABLE class=p2 cellSpacing=0 cellPadding=0 width="94%" 
                  align=center border=0>
                                        <TBODY>
                                          <TR>
                                            <TD align=right height=30><DIV 
                        align=left>如果忘记了您的密码，请认真填写以下几项，若您所填写的真实姓名、身份证号码、邮件与您注册信息相符，则密码将会显示出来。 </DIV></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                <BR>
                                      <TABLE cellSpacing=0 cellPadding=0 width="89%" align=center 
                  border=0>
                                        <TBODY>
                                          <TR>
                                            <TD width=80 height=30><FONT 
                      color=#ff0000>*</FONT>真实姓名：</TD>
                                            <TD width=150><INPUT id=name2 maxLength=20 size=16 
                        name=name2></TD>
                                          </TR>
                                          <TR>
                                            <TD height=30><font 
                      color=#ff0000>*</font>身份证号码：</TD>
                                            <TD><input id=content2 maxlength=19 size=16 
                      name=content2></TD>
                                          </TR>
                                          <TR>
                                            <TD height=30><font 
color=#ff0000>*</font>电话：</TD>
                                            <TD><input id=telephone2 maxlength=16 size=16 
                        name=telephone2></TD>
                                          </TR>
                                          <TR>
                                            <TD height=30><font 
                      color=#ff0000>*</font>电子邮件：</TD>
                                            <TD><input id=e_mail2 size=16 name=e_mail2></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                <DIV align=center><BR>
                                          <INPUT type=submit value=提交 name=Submit3>
                                          <INPUT type=reset value=重写 name=Submit22>
                                          <BR>
                                      </DIV>
                              </DIV></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                      <BR>
                    </DIV></TD>
                  </TR>
                  </FORM>
            </TABLE></TD>
          </TR><TR>
              <TD vAlign=top >&nbsp;</TD>
          </TR>
          
        </TBODY>
      </TABLE>
          <TABLE cellSpacing=0 cellPadding=0 width=600 border=0>
            <TBODY>
              <TR>
                <TD>&nbsp;</TD>
              </TR>
              <TR>
                <TD height=30><DIV class=orange 
align=center>【提示】登陆越频繁,教员库中排名越靠前.</DIV></TD>
              </TR>
              <TR>
                <TD height=30><DIV 
            align=center><%= title %></DIV></TD>
              </TR>
            </TBODY>
          </TABLE></TD>
      <TD background=images/center_3_2.gif>&nbsp;</TD>
    </TR>
    <TR>
      <TD><IMG height=15 src="images/center_1_1.gif" 
width=16></TD>
      <TD background=images/center_1_2.gif>&nbsp;</TD>
      <TD><IMG height=15 src="images/center_1_3.gif" 
        width=15></TD>
    </TR>
  </TBODY>
</TABLE>
</BODY></HTML>
