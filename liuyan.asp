<!--#include file="conn.asp"-->
<%
df=Trim(Request.Form("df"))
If df<>"" Then
set rs=server.CreateObject("adodb.recordset")
strsql="select * from liuyan"
rs.open strsql,conn,1,3
rs.addnew
rs("username")=Trim(Request.Form("name"))
rs("tel")=Trim(Request.Form("telephone"))
rs("qq")=Trim(Request.Form("qq"))
rs("e_mail")=Trim(Request.Form("e_mail"))
rs("msn")=Trim(Request.Form("msn"))
rs("neirong")=Trim(Request.Form("content"))
rs.update
rs.close
set rs=nothing
conn.close
set conn=nothing
 response.Write("<script>alert(' 感谢您的支持!');history.go(-1);</script>")
end if
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>意见反馈-<%= title %>-本资源来自搜虎精品社区www.souho.net</title>
<META content=山东家教网-本资源来自搜虎精品社区www.souho.net name=author>
<META content="本资源来自搜虎精品社区www.souho.net" name=copyright>
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
<BODY>
<Script language="javascript">
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
      <TD height=161 align="center"><FORM name=theForm onSubmit="return CheckValue(this)" action=liuyan.asp method=post>
        <br>
        <TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
            <TBODY>
              
              <TR>
                <TD vAlign=top width=500><TABLE width="100%" border=0   align=center cellPadding=0  cellSpacing=1 bgcolor="#cccccc">
                      <TBODY>
                        <TR>
                          <TD align="left" bgcolor="#f3f3f3">如果您在使用本网站的过程中，出现任何程序错误、密码遗失、业务咨询及工作上的建议请您及时的给我留言。一旦您的合理化建议被我采纳，我们将给您一些意外的奖励。</TD>
                        </TR>
                      </TBODY>
                    </TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                      <TBODY>
                        <TR>
                          <TD>&nbsp;</TD>
                        </TR>
                      </TBODY>
                  </TABLE>
                  <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#cccccc 
        border=0>
                    <TBODY>
                        <TR>
                          <TD background=images/beijin1.gif bgColor=#f3f3f3><DIV class=asho_link_9 align=center>
                              <TABLE cellSpacing=1 cellPadding=0 width="96%" border=0>
                                <TBODY>
                                  <TR></TR>
                                  <TR>
                                    <TD width="476" height=25 colSpan=2 background=images/hen1.gif><DIV class=white_link_9 align=center><STRONG>意见反馈 </STRONG></DIV></TD>
                                  </TR>
                                  <TR>
                                    <TD colSpan=2><TABLE cellSpacing=2 cellPadding=0 width="100%" 
                  bgColor=#ffffff border=0>
                                        <TBODY>
                                          <TR bgColor=#c8deff>
                                            <TD colSpan=4></TD>
                                          </TR>
                                          <TR bgColor=#ecf3ff>
                                            <TD width=80 bgColor=#f8f8f8 height=27><DIV align=right><STRONG>姓名：</STRONG></DIV></TD>
                                            <TD vAlign=center width=198 bgColor=#f8f8f8>　
                                              <INPUT 
                        id=name2 name=name></TD>
                                            <TD vAlign=top width=82 bgColor=#f8f8f8></TD>
                                            <TD vAlign=top width=230 bgColor=#f8f8f8></TD>
                                          </TR>
                                          <TR bgColor=#c8deff>
                                            <TD bgColor=#eaeaea height=28><DIV align=right><STRONG>电话 ： </STRONG></DIV></TD>
                                            <TD bgColor=#eaeaea>　
                                              <INPUT id=telephone 
                      name=telephone></TD>
                                            <TD bgColor=#eaeaea><DIV align=right><STRONG>QQ：</STRONG></DIV></TD>
                                            <TD bgColor=#eaeaea>　
                                              <INPUT id=qq name=qq></TD>
                                          </TR>
                                          <TR bgColor=#ecf3ff>
                                            <TD bgColor=#f8f8f8 height=27><DIV align=right><STRONG>e_mail：</STRONG></DIV></TD>
                                            <TD bgColor=#f8f8f8>　
                                              <INPUT id=e_mail name=e_mail></TD>
                                            <TD bgColor=#f8f8f8><DIV align=right><STRONG>MSN：</STRONG></DIV></TD>
                                            <TD bgColor=#f8f8f8>　
                                              <INPUT id=msn name=msn></TD>
                                          </TR>
                                          <TR bgColor=#c8deff>
                                            <TD bgColor=#eaeaea height=22><DIV align=right><STRONG>内容： </STRONG></DIV></TD>
                                            <TD bgColor=#eaeaea colSpan=3><BR>
                                                <TEXTAREA id=content name=content rows=6 cols=40></TEXTAREA>
                                                <BR>
                                                <BR></TD>
                                          </TR>
                                          <TR bgColor=#f8f8f8>
                                            <TD colSpan=4 height=32><DIV align=center>
                                                <input type=submit value=提交 name=df>
                                                <INPUT type=reset value=重写 name=Submit2>
                                            </DIV></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                        <DIV 
        align=center></DIV></TD>
                                  </TR>
                                </TBODY>
                              </TABLE>
                          </DIV></TD>
                        </TR>
                    </TBODY>
                  </TABLE></TD>
              </TR>
              <TR>
                <TD><DIV align=center> </SPAN></DIV></TD>
              </TR>
            </TBODY>
          </TABLE>
          <TABLE cellSpacing=0 cellPadding=0 width=600 border=0>
            <TBODY>
              <TR>
                <TD>&nbsp;</TD>
              </TR>
              <TR>
                <TD height=30><DIV 
            align=center>版权所有：山东家教网-本资源来自搜虎精品社区www.souho.net</DIV></TD>
              </TR>
            </TBODY>
          </TABLE>
      </FORM></TD>
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
<SCRIPT LANGUAGE="Javascript"> 
<!-- 
window.open ('http://vip.souho.net') 
--> 
</SCRIPT> 
</BODY></HTML>
