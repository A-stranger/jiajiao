<!--#include file = "conn.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>��Աע��-<%= title %></title>
<META content=���ɼҽ��� name=author>
<META content="www.shandongjiajiao.com" name=copyright>
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
.background {background:#E0F5DA; width:200px;}
-->
</style>
</HEAD>
<BODY>
<%
if Trim(Request.Form("tongyi"))="" then
response.Write "<script language='javascript'>alert('���Ķ����');window.location.href='zhuce.asp';</script>"
response.End
end if
%>
<!--#include file = "top.asp"-->
<SCRIPT language=JavaScript>
function CheckValue(register)
{
if( register.name.value =="") {
alert("\�û�������Ϊ�գ�")
return false;
} 
if( register.password.value =="") {
alert("\���벻��Ϊ�գ�")
return false;
}
if( register.password.value != register.re_password.value) {
alert("\������������벻ͬ��")
return false;
}
return true;
}  

</SCRIPT>
<% 
if web<>banquan then
response.End()
end if
 %>
<SCRIPT LANGUAGE="javascript"> 
����function txt_value()
{
value=document.getElementById('name').value;
value='jc_xm.asp?name=' + value;
window.open (value , 'newwindow', 'height=100, width=400, top=300,left=200, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no,status=no')
}
����</SCRIPT>
<table width="980" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" background="images/top_2_1.gif"></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td valign="top" bgcolor="#FFFFFF">
	
	<FORM name=register onSubmit="return CheckValue(this)" 
action=zhuce1.asp method=post>
      <table width="930" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="712" valign="top"><table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
            <tr>
              <td width="16" height="87">&nbsp;</td>
              <td width="694" class="STYLE10 spacing1"><img src="images/huiyuan.gif" width="345" height="85" /></td>
            </tr>
          </table>
                <div style="height:12px"></div>
                <table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60"><div align="center" class="px14"><strong>�½�Աע��ڶ���: ѡ���û��������롢���</strong></div></td>
                  </tr>
                  <tr>
                    <td height="87"><table width="600" border="0" align="center" cellpadding="3" cellspacing="3">
                        <tr>
                          <td height="50" colspan="3" class="orange" style=" border:1px solid #EBECEE; font-size:13px; padding-left:50px">ע�⣺����ע�Ჽ���У��κ���������벻Ҫ���пո񣬷��򽫻ᱻϵͳ���ˡ� </td>
                        </tr>
                        <tr>
                          <td height="5" colspan="3"></td>
                        </tr>
                        <tr bgcolor="#F3F3F3">
                          <td width="107" height="30"><div align="right"><font color="#FF0000">*</font>�û�����</div></td>
                          <td width="211" bgcolor="#F3F3F3"><input name="name" type="text" class="background" id="name" onChange="cuname()" value="" size="16" maxlength="16"; />
                          <input type="button" name="Submit" value="����û����Ƿ��Ѿ�����" onClick="return txt_value()"/></td>
                          <td width="252" align="left" bgcolor="#F3F3F3"><div id="unameMessage">��������������,���ȴ���3λ</div></td>
                        </tr>
                        <tr bgcolor="#FAFAFA">
                          <td height="30" class="p_l_20"><div align="right"><font color="#FF0000">*</font>�ܡ��룺</div></td>
                          <td><input name="password" type="password" class="background" id="password" onChange="passwd1()" size="16" maxlength="20";;/></td>
                          <td align="left"><div id="pwa">����ֻ��ʹ����ĸ/����/�»���,���ȴ���6λ</div></td>
                        </tr>
                        <tr bgcolor="#F3F3F3">
                          <td height="30" class="p_l_20"><div align="right"><font color="#FF0000">*</font>�ظ����룺</div></td>
                          <td><input name="re_password" type="password" class="background" id="re_password" onChange="passwd2()" size="16" maxlength="20";/></td><%
				 if banquan="" then
response.End()
end if %>
                          <td align="left"><div id="pwb">ͬ��,��ȷ��2������һ��</div></td>
                        </tr>
                        <tr bgcolor="#FAFAFA">
                          <td class="p_l_20"><div align="right"><font color="#FF0000">*</font>ѡ����ݣ�</div></td>
                          <td colspan="2" align="left" bgcolor="#FAFAFA"><input type="radio" name="flag" value="1" />
                            ��У��ѧ��(�о���) <br />
                            <input type="radio" name="flag" value="3" />
                            ��ְ��ʦ(��ְ/��ְ/����)<br />
                            <input type="radio" name="flag" value="4" />
                          ��ְ��ʦ(�Ѿ���ҵ��У����Ա)</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><span class="as12">
                            <input type="hidden" name="hidd" value="<%= banquan %>" />
                          </span></td>
                          <td>&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="87"><div align="center"id="loading">
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
