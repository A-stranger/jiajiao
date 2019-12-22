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
<title>网上认证-<%= title %></title>
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
.STYLE4 {font-size: 10pt;
	color: #FF0000;
}
.STYLE5 {	font-size: 10pt;
	font-weight: bold;
}
-->
</style>
</HEAD>
<BODY><Script language="javascript">
function mysubmit(theform)
{
if(theform.mefile.value=="")
{
alert("请点击浏览按钮，选择您要上传的jpg或gif文件!")
theform.mefile.focus;
return (false);
}
else
{
str= theform.mefile.value;
strs=str.toLowerCase();
lens=strs.length;
extname=strs.substring(lens-4,lens);
if(extname!=".jpg" && extname!=".gif")
{
alert("请选择jpg或gif文件!");
return (false);
}
}
return (true);
}
</script>
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
      <TD height=161 align="center" valign="middle"><span class="STYLE5">学生证上传</span>
        <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#cccccc 
        border=0>
        <TBODY>
          <TR>
            <TD height=100 valign="top" background=images/beijin1.gif bgColor=#f3f3f3><FORM name=mainForm enctype="multipart/form-data" onSubmit="return mysubmit(this)" action=renzheng02do.asp method=post>
                <DIV class=asho_link_9 align=center>
                  <label></label>
                  <div align="center"> <br>
                      <span class="STYLE4">图片不要超过200k,不然不能传！</span><br>
                      <input name=mefile type=file class="button" size="50">
                    &nbsp;
                    <input name=ok type=submit class="button" value="上传">
                    &nbsp;
                    <label></label>
                  </div>
                  <br>
                </DIV>
            </FORM></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
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
