<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
id=Trim(Request.QueryString("id")) 
d=Trim(Request.Form("d"))
d1=Trim(Request.Form("d1"))
if d<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d
  rs.open strsql,conn,1,3
  rs("renzheng")="��֤"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if d1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d1
  rs.open strsql,conn,1,3
  rs("mingxing")="��"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if

 %>
<%

 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        ��Ա��ϸ </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">��Ա��ţ�</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("id") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" class="ziti03"><div align="right">�û�����</div></td>
            <td width="73%" bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("username") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">������</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"><%= rs("xingming") %></span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">�Ա�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("sex") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#eeeeee" class="ziti03"><div align="right">������ݣ�</div></td>
            <td bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("shengr") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">רҵ��</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("zhuanye") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">Ŀǰѧ���� </div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;<%= rs("xueli") %></span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">���֤/���գ�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;<%= rs("shenfenzheng") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">����/��ѧ���ң�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("shengfen") %></span></div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="35" class="ziti03"><div align="right">Ŀǰ��ݣ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("gongzuo") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">������ʡ�ݣ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("shengfen") %></span></div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="29" class="ziti03"><div align="right">��ҵ/�Ͷ���У��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("daxue") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">����ĸУ��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("gaozhong") %></span></div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="19" class="ziti03"><div align="right">ְ�Ƶȼ���</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("dengji") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">(���)��ְѧУ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><label><span style="font-size: 10pt">&nbsp; <%= rs("dengji") %></span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">���䣺</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><label></label>
            <label><span style="font-size: 10pt">&nbsp; <%= rs("jiaoling") %></span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ν�ѧ�ƣ�</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("xueke") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ν��꼶��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; <%= rs("leibie") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">����ס����</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("shenghuo") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">��ͥס��:</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("jiating") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�绰��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("tel") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ֻ���</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("shouji") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">MSN��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("msn") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">QQ:</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("qq") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">E_mail��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("mail") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">ͨ�ŵ�ַ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("tongxin") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ʱࣺ</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("youbian") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ɽ��ڿ�Ŀ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("kemu") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">��ְ��ʦ ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("zhunaye") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">����ר�ţ�</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("yinyue") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">����������</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("miaoshu") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">���ڿ�����</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("quyu") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ҽ̳ɹ���</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("chengguo") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">нˮҪ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; <%= rs("xinshui") %></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ɸ�����ʽ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt"> &nbsp;<%= rs("fangshi") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">���֤���� �� </div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp;<% If rs("images")<>"" Then %>
              <a href="showimg01.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>
            <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">ѧ��֤��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp; <% If rs("images")<>"" Then %> 
              <a href="showimg02.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>
              <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">��ʦ�ʸ�֤��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
                <% If rs("images")<>"" Then %>
              <a href="showimg03.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>
              <% End If %>
            </div></td>
          </tr>
        </tbody>
    </table>
      <div align="center">
        <table width="43%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="53%" height="53">&nbsp;
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
            <input name="dw" type="submit" id="dw" value="ͨ�������֤" />
            <input name="d" type="hidden" id="d" value="<%= id %>" />
                </form></td>
              <td width="47%">&nbsp;
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="dw1" type="submit" id="dw1" value="��Ϊ���ǽ�Ա" />
                  <input name="d1" type="hidden" id="d1" value="<%= id %>" />
              </form></td>
            </tr>
        </table>
          <%
	      rs.Close
          set rs=nothing
		 %>
      </div></td></tr>
</table>
</body>
</html>









