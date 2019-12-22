<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) %>
<% 
button=Trim(Request.Form("button"))
if button<>"" then
set rs=server.CreateObject("adodb.recordset")
strsql="select * from baozheng"
rs.open strsql,conn,1,3
rs.addnew
rs("userid")=id
rs("beizhu")=trim(request.form("beizhu"))
rs("baozheng")=trim(request.form("baozheng"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     添加成功！');window.location.href='baozheng.asp?id="&id&"';</script>"
response.End
end if
 %>

<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE11 {color: #FF0000}
-->
</style>
<p>
</p>
<table width="683" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26"><div align="center" class="ziti02">保证金管理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="74%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     

	 <tr>
	   <td width="504" height="66" colspan="-2" align="center" valign="top" bgcolor="#FFFFFF" class="ziti03"><form name="form2" method="post" action="baozhengnew.asp">
	     <br>
	     <table width="73%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
           <tr>
             <td height="47" colspan="2" align="center" class="ziti03"><span class="STYLE1">T<%= id %></span>添加保证金</td>
           </tr>
           <tr>
             <td width="41%" height="33" align="center" class="ziti03">所交金额</td>
             <td width="59%" align="center" class="ziti03">备注</td>
           </tr>
           <tr>
             <td height="94" align="center" class="ziti03"><label>
               <input name="baozheng" type="text" id="baozheng" size="10">
元</label></td>
             <td align="center" class="ziti03"><label>
               <textarea name="beizhu" id="beizhu" cols="20" rows="5"></textarea>
             </label></td>
           </tr>
           <tr>
             <td height="43" colspan="2" align="center" class="ziti03"><label>
               <input name="button" type="submit" class="button" id="button" value="提交添加">
               <input name="id" type="hidden" id="id" value="<%= id %>">
             </label></td>
           </tr>
         </table>
              <br>
	   </form>	   </td>
	 </tr>
    </table>
      <br /></td>
  </tr>
</table>



</body>
</html> 