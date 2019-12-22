<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<head>
<link href="css.css" rel="stylesheet" type="text/css">
</head>

<br>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td height="26"><div align="center" class="ziti02">管理员管理注意事项</div></td>
  </tr>
  <tr>
    <td height="95" bgcolor="#FFFFFF"><table width="46%" height="64" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><p class="ziti03">1. 如果是第一次登陆后台请先修改管理员密码。</p>          </td>
      </tr>
      <tr>
        <td><span class="ziti03">2. 请不要在网吧等公共场所登陆后台。</span></td>
      </tr>
      <tr>
        <td><span class="ziti03">3. 退出时请点击“注销登陆”正常退出。</span></td>
      </tr>
      
    </table></td>
  </tr>
</table>
