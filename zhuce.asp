<!--#include file = "conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>��Աע��-<%= title %></title>
<META content=ɽ���ҽ��� name=author>
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
<% 
if web<>banquan then

response.End()

end if %>
<style type="text/css">
<!--
.background {background:#E0F5DA; width:200px;}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->

<table width="980" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" background="images/top_2_1.gif"></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td valign="top" bgcolor="#FFFFFF">
	
	<FORM name=register onSubmit="return CheckValue(this)" 
action=zhuce2.asp method=post>
      <table width="930" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="712" align="left" valign="top"><table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
            <tr>
              <td width="16" height="87">&nbsp;</td>
              <td width="694" class="STYLE10 spacing1"><img src="images/huiyuan.gif" width="345" height="85" /></td>
            </tr>
          </table>
                <div style="height:12px"></div>
            <table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60"><div align="center" class="px14"><strong>�½�Աע���һ��: �Ķ���Աע��Э��</strong></div></td>
                  </tr>
                  <tr>
                    <td height="87"><table width="89%" height="14" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select xieyi from body ",conn,1,1
		%>
                          <%= rs("xieyi") %>
                          <%
				 if web="" then
response.End()
end if %>
                          <%
	      rs.Close
          set rs=nothing
		  %></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="87"><div align="center"id="loading">
                        <label>
                        <input name="tongyi" type="checkbox" id="tongyi" value="ͬ��" checked>
                        </label>
�ҿ�����������<br>
<input name="imageField2" style="border:0" type="image" src="images/reg_1_2.gif" alt="��һ��" width="345" height="41" />
                    </div></td>
                  </tr>
                  <tr>
                    <td height="40">&nbsp;</td>
                  </tr>
            </table></td>
          <td width="12"></td>
          <td width="206" valign="top"><table width="206" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
            <tr>
              <td><div align="center">
                <table width="190" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>&nbsp;</td>
                    <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13"><strong>���ǵķ�������</strong></div></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
              </div></td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                <TBODY>
                  <TR>
                    <TD height=10></TD>
                  </TR>
                  <% 	 
dw2="���ǵķ�������"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                  <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                    <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                      <% End If %>
                    </A></TD>
                  </TR>
                  <TR>
                    <TD height=1 align="left" bgColor=#ebecee></TD>
                  </TR>
                  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                </TBODY>
              </TABLE></td>
            </tr>
          </table>
                <table width="206" style=" border:1px solid #EBECEE; margin-top:12px" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><div align="center">
                        <table width="190" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;</td>
                            <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13">
                                <div align="center"><strong>���ҽ̳����ĵ�</strong></div>
                            </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=10></TD>
                        </TR>
                        <% 	 
dw2="���ҽ̳����ĵ�"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                        <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                          <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                            <% End If %>
                          </A></TD>
                        </TR>
                        <TR>
                          <TD height=1 align="left" bgColor=#ebecee></TD>
                        </TR>
                        <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
                        <TR>
                          <TD height=12></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
                  </tr>
                </table>
            <table width="206" style=" border:1px solid #EBECEE; margin-top:12px" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><div align="center">
                        <table width="190" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;</td>
                            <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13">
                                <div align="center"><strong>�� �� �� �� ��</strong></div>
                            </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=10></TD>
                        </TR>
                        <% 	 
dw2="���ҽ�����"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                        <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                          <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                            <% End If %>
                          </A></TD>
                        </TR>
                        <TR>
                          <TD height=1 align="left" bgColor=#ebecee></TD>
                        </TR>
                        <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
                        <TR>
                          <TD height=12></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
                  </tr>
              </table>
            <br /></td>
        </tr>
      </table>
    </form></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="10" background="images/top_3_2.gif">&nbsp;</td>
  </tr>
</table>
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
