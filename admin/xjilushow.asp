<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->

<%
id=Trim(Request.QueryString("id"))
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from xjilu where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        详细记录 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">成功：</td>
            <td bgcolor="#EEEEEE" >&nbsp;<span class="ziti03"><span style="font-size: 10pt"><%= rs("chenggong") %></span></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">教员编号:</td>
            <td bgcolor="#EEEEEE" >&nbsp;<a href="jiaoyuanshow.asp?id=<%= rs("userid") %>" class="top">T<%= rs("userid") %></a></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="20%" height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">订单：</div></td>
            <td width="80%" bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;<%= rs("dingdan") %></span></td>
          </tr>
          
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">性别：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp; <%= rs("sex") %></span></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">学校年级：</td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt"> &nbsp; <%= rs("nianji") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">所教科目：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt"> &nbsp; <%= rs("kemu") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">家教时间：</td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("shijian") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">辅导前成绩：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("chengji1") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">辅导后成绩：</td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("chengji2") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">使用教学方法：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("fangfa") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">家长评价：</td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("pingjia") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">教学总结：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("zongjie") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">备注：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("beizhu") %></span></td>
          </tr>
        </tbody>
    </table>
      <br />
      <%
	      rs.Close
          set rs=nothing
		 %>
    </td></tr>
</table>
</body>
</html>








