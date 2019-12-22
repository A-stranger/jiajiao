<!--#include file="conn.asp"-->

<% 
id=session("id")
idd=Trim(Request.QueryString("id"))
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from xjilu where id="&idd
  rs.open strsql,conn,1,3
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
          background=images/my_1_2.gif class=white_link_9><strong><strong><img src="images/my_1_4.gif" width="142" height="58" align="middle"><strong><span class="t">&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;家教记录</span></strong></strong></strong></TD>
                            <TD width="4%" 
            height=56 align=right valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><span class="t"><img src="images/my_1_3.gif" width="12" height="58"></span></strong></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                        <form name="form1" method="post" action="guanli_xjiluedit.asp" onSubmit="return checkdata()">
                          <br>
                          <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
                            <tbody>
                              <tr bgcolor="#eeeeee">
                                <td width="20%" height="35" align="right" bgcolor="#E3E3E3" class="black9">订单：</td>
                                <td width="80%" bgcolor="#E3E3E3" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp;<%= rs("dingdan") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">性别：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp; <%= rs("sex") %></span></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#E3E3E3" class="black9">学校年级：</td>
                                <td bgcolor="#E3E3E3" class="black9"><div align="left"><span style="font-size: 10pt"> &nbsp; <%= rs("nianji") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">所教科目：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span style="font-size: 10pt"> &nbsp; <%= rs("kemu") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#E3E3E3" class="black9">家教时间：</td>
                                <td bgcolor="#E3E3E3" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("shijian") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">辅导前成绩：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("chengji1") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#E3E3E3" class="black9">辅导后成绩：</td>
                                <td bgcolor="#E3E3E3" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("chengji2") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">使用教学方法：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("fangfa") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#E3E3E3" class="black9">家长评价：</td>
                                <td bgcolor="#E3E3E3" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("pingjia") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">教学总结：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("zongjie") %></span></div></td>
                              </tr>
                              <tr bgcolor="#eeeeee">
                                <td height="35" align="right" bgcolor="#EEEEEE" class="black9">备注：</td>
                                <td bgcolor="#EEEEEE" class="black9"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("beizhu") %></span></div></td>
                              </tr>
                            </tbody>
                          </table>
                          <p>
                            <label></label>
                          </p>
                        </form>
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
