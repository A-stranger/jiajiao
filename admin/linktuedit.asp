<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<script language="JavaScript">
<!--
function checkdata() {

if( form1.shuoming.value =="") {
alert("\��������������!")
return false;
}
return true;
}
// -->
</script>

<%
dim action
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from linktu where linktu_id="&action,conn,1,3
rs("user")=trim(request.form("user"))
rs("shuoming")=trim(request.form("shuoming"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('    �޸ĳɹ���');history.go(-1);</script>"
response.End
end if
id=Trim(Request.QueryString("id"))
%>
<title>��ҵ��Ϣ����</title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td height="26"> <div align="center"><font color="#FFFFFF">
       
        <span class="ziti02">�޸�����ͼƬ</span> </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="64%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="guanli_linktuedit.asp" onSubmit="return checkdata()">
          <%
		    set rs=server.CreateObject("adodb.recordset")
            rs.Open "select * from linktu where linktu_id="&id,conn,1,1
			session("shuoming")=rs("linktu_url")
		  %>
            <tr> 
            <td width="22%" class="ziti03">�������֣�</td>
            <td width="78%" COLSPAN="2"><input name="shuoming" type="text" class="button" id="shuoming" value="<%=trim(rs("linktu_url"))%>" size="28">
              <span class="ziti05">��ʽ��http://www.aaa.com</span></td>
          </tr>
          
          <tr> 
            <td class="ziti03">����ͼƬ��</td>
            <td COLSPAN="2">
		 	<img src="showimg04.asp?id=<%=rs("linktu_id")%>">
			<span class="ziti03">&nbsp;&nbsp;&nbsp; <a href="upimg_edit02.asp?d=<%= rs("linktu_id") %>" target="_self" class="top">�ش�ͼƬ</a></span>						</td>
          </tr>
          
          
          
          <tr> 
            <td height="22" colspan="3"> <div align="center"> 
                <input name="Submit" type="submit" class="button" value="�� ��">
                <input name="action" type="hidden" value="<%= rs("id") %>" />
                <input name="Submit2" type="button" class="button" onClick="MM_goToURL('self','guanli_links.asp');return document.MM_returnValue" value="�� ��">
            </div></td>
          </tr>
        </form>
      </table>
      <%
	   rs.Close
          set rs=nothing
		  conn.close
		  set conn = Nothing
		  
	 %>
    </td>
  </tr>
</table>
</body></html>

