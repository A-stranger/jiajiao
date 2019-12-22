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
rs("logocishu")=rs("logocishu")+1
rs("logotime")=now()
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
<title>教员登陆-<%= title %>-本资源来自搜虎精品社区www.souho.net</title>
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
            <TD><FORM action=logoin.asp method=post name="form1" id="form1">
              <TABLE cellSpacing=0 cellPadding=0 width=250 align=center 
                  border=0>
                <TBODY>
                  <TR>
                    <TD colSpan=2 height=30><DIV align=right><A class=orange_ 
                        title="山东家教网"
                        onclick="window.external.addFavorite('<%= url %>/login.asp','山东家教网-会员登录')"
                        onmouseout="window.status='山东家教网-会员登录';return true;"
                        href="#">希望下次快速登陆，点击收藏此页面 
                      &gt;&gt;</A></DIV></TD>
                  </TR>
                  <TR>
                    <TD width=66>&nbsp;</TD>
                    <TD width=184>&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD height=30><DIV align=left>用户名：</DIV></TD>
                    <TD><INPUT id=name size=18 name=name></TD>
                  </TR>
                  <TR>
                    <TD height=30><DIV align=left>密　码：</DIV></TD>
                    <TD><INPUT id=password type=password size=18 
                        name=password></TD>
                  </TR>
                  
                  <TR>
                    <TD colSpan=2 height=50><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                      <TBODY>
                        <TR>
                          <TD width=80><DIV align=right>
                            <INPUT 
                              style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
                              type=image height=20 alt=登陆 width=40 
                              src="images/login_ico.gif" 
                              name=imageField2>
                          </DIV></TD>
                          <TD width=76><DIV align=center><A 
                              href="zhuce.asp"><IMG src="images/zhuce.gif" 
                              width=40 
                              height=20 border="0"></A>
                            <input name="w" type="hidden" id="w" value="1">
                          </DIV></TD>
                          <TD width=94><A 
                              href="getpassword.asp">忘记密码？</A></TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
              </TABLE>
            </FORM></TD>
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
align=center>【提示】登陆越频繁,教员库中排名越靠前.<br><br><a href="http://www.souho.net">搜虎精品社区</a></DIV></TD>
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
