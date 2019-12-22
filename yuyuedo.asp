<!--#include file="conn.asp"-->
<%
id= trim(request.form("teacher_id"))
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from dingdan",conn,1,3
rs.addnew
rs("username")=trim(request.form("name"))
rs("tel")=trim(request.form("telephone_home"))
rs("shouji")=trim(request.form("mobile"))
rs("sex")=trim(request.form("student_sex"))
rs("dizhi")=trim(request.form("road1"))
rs("nianji")=trim(request.form("grade"))
rs("anpai")=trim(request.form("anpai"))
rs("xueke")=trim(request.form("subject"))
rs("qingkuang")=trim(request.form("explain"))
rs("jsex")=trim(request.form("teacher_sex"))
rs("jqingkuang")=trim(request.form("other"))
rs("fangshi")=trim(request.form("fangshi"))
rs("baochou")=trim(request.form("price"))
rs("baochou2")=trim(request.form("price2"))
rs("chetie")=trim(request.form("chetie"))
rs("yuyue")=trim(request.form("teacher_id"))
rs.update
rs.close
set rs=nothing
set rs1=server.CreateObject("adodb.recordset")
rs1.Open "select * from jiaoyuan where id="&id,conn,1,3
rs1("yuyue")=rs1("yuyue")+1
rs1.update
rs1.close
set rs1=nothing
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>在线预约-<%= title %></title>
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
      <TD height=111><table  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        
        <tr>
          <td width="500" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="35"><div align="center"><span class="buleo2_link_11"><strong>预约成功</strong></span></div></td>
              </tr>
            </table>
              <table width="100%" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                <tr>
                  <td height="50" background="images/beijin1.gif" bgcolor="#F3F3F3"><div align="center" class="asho_link_9">
                      <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><div align="left">　　<span class="buleo2_link_9">我们已经收到您的预约申请，我们将在12小时内致电给您确认具体授课情况并及时联系该教员；若此教员因某些原因无法授课，我们会根据您的要求推荐其他同等水平教员！<br />
                          </span></div></td>
                        </tr>
                      </table>
                  </div></td>
                </tr>
              </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><div align="center"><span class="asho_link_9"><br />
                    【<a href="javascript:window.close()">关闭窗口</a>】</span></div></td>
                </tr>
            </table></td>
          </tr>
        <tr>
          <td></td>
          </tr>
      </table></TD>
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
