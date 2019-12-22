<!--#include file = "conn.asp"-->
<% id=Trim(Request.QueryString("dw")) 

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>在线申请订单-<%= title %></title>
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
<script language="JavaScript">
<!--
function checkdata() {
if( form1.name.value =="") {
alert("\请填写用户名!")
return false;
}
if( form1.tepassword.value =="") {
alert("\请填写密码!")
return false;
}
if( form1.title.value =="") {
alert("\请填写标题!")
return false;
}
if( form1.neirong.value =="") {
alert("\请填写内容!")
return false;
}

return true;
}
// -->
</script>


<% 
dingdan_id=Trim(Request.Form("dingdan_id"))
if dingdan_id<>"" Then
username=Trim(Request.Form("name"))
password=Trim(Request.Form("tepassword"))
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

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from yuyue",conn,1,3
rs.addnew
rs("userid")=session("id")
rs("xueyuan")=trim(request.form("dingdan_id"))
rs("title")=trim(request.form("title"))
rs("neirong")=trim(request.form("neirong"))
rs.update
rs.close
set rs=nothing

set rs1=server.CreateObject("adodb.recordset")
 strsql1="select * from dingdan where id="&dingdan_id
 rs1.open strsql1,conn,1,3
  rs1("cishu")=rs1("cishu")+1
  rs1.update
 rs1.close
set rs1=nothing 
response.Write "<script language=javascript>alert('     提交成功，我们会尽快和你联系的！');history.go(-1);</script>"
response.End
end if
%>
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
      <TD height=400><FORM action=shenqing.asp 
method=post name=form1 id="form1" onSubmit="return checkdata()">
        <TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
          <TBODY>
            
            <TR>
              <TD vAlign=top width=500><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD><DIV align=center></DIV></TD>
                    </TR>
                  </TBODY>
              </TABLE>
                  <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#cccccc 
        border=0>
                    <TBODY>
                      <TR>
                        <TD background=images/beijin1.gif bgColor=#f3f3f3 height=69><DIV class=asho_link_9 align=center>
                            <TABLE cellSpacing=0 cellPadding=0 width="95%" border=0>
                              <TBODY>
                                <TR>
                                  <TD><DIV align=left><SPAN 
                  class=buleo2_link_9>　　您可以在线提交表单申请订单，如果申请成功，我们将在12小时内致电给您确认详情；您也可以致电<STRONG> <%= rexian %> </STRONG>由客户服务代表直接申请。<BR>
                                  </SPAN></DIV></TD>
                                </TR>
                              </TBODY>
                            </TABLE>
                        </DIV></TD>
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
                                  <TD background=images/hen1.gif colSpan=2 height=25><DIV class=orange_ align=center><STRONG>订单在线申请 </STRONG></DIV></TD>
                                </TR>
                                <TR>
                                  <TD width=120 height=25 bgcolor="#E3E3E3"><DIV align=right>学员（订单）编号：</DIV></TD>
                                  <TD width=356 bgcolor="#E3E3E3"><DIV align=left>
                                    <INPUT name=dingdan_id type=hidden id="dingdan_id" value=<%= id %>>
                                    &nbsp; S<%= id %> </DIV></TD>
                                </TR>
                                <TR>
                                  <TD colSpan=2 height=30><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                                      <TBODY>
                                        <TR bgColor=#eeeeee>
                                          <TD width="27%" height=35><DIV align=right>用户名：</DIV></TD>
                                          <TD width="73%" bgColor=#eeeeee><DIV align=left>
                                              <INPUT id=name3 maxLength=30 size=12 
                  name=name>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>密码：</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <INPUT name=tepassword type="password" id="tepassword" maxLength=50>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#eeeeee height=35><DIV align=right>标题：</DIV></TD>
                                          <TD bgColor=#eeeeee><DIV align=left>
                                              <INPUT name=title id="title" size=25 maxLength=30>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>正文：</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <TEXTAREA id=explain name=neirong rows=5 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                            </TABLE>
                                      <DIV align=center>
                                        <INPUT type=submit value=　提交　 name=Submit2>
                                        【<A href="javascript:window.close()">关闭窗口</A>】</DIV></TD>
                                </TR>
                                <TR>
                                  <TD colSpan=2><DIV 
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
</BODY></HTML>
