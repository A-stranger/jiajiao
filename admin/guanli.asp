<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<head>
<link href="css.css" rel="stylesheet" type="text/css">
</head>

<br>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td height="26"><div align="center" class="ziti02">����Ա����ע������</div></td>
  </tr>
  <tr>
    <td height="95" bgcolor="#FFFFFF"><table width="46%" height="64" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><p class="ziti03">1. ����ǵ�һ�ε�½��̨�����޸Ĺ���Ա���롣</p>          </td>
      </tr>
      <tr>
        <td><span class="ziti03">2. �벻Ҫ�����ɵȹ���������½��̨��</span></td>
      </tr>
      <tr>
        <td><span class="ziti03">3. �˳�ʱ������ע����½�������˳���</span></td>
      </tr>
      
    </table></td>
  </tr>
</table>
