<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% 
acction=Trim(Request.Form("acction"))

if acction<>"" Then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from dingdan where id="&acction,conn,1,3
rs("xianshi")=trim(request.form("xianshi"))
rs("username")=trim(request.form("name"))
rs("tel")=trim(request.form("telephone_home"))
rs("shouji")=trim(request.form("mobile"))
rs("sex")=trim(request.form("student_sex"))
rs("dizhi")=trim(request.form("dizhi1"))
rs("dizhi1")=trim(request.form("dizhi"))
rs("nianji")=trim(request.form("grade"))
rs("anpai")=trim(request.form("anpai"))
rs("xueke")=trim(request.form("xueke"))
rs("qingkuang")=trim(request.form("explain"))
rs("jsex")=trim(request.form("teacher_sex"))
rs("jqingkuang")=trim(request.form("other"))
rs("fangshi")=trim(request.form("fangshi"))
rs("baochou")=trim(request.form("price"))
rs("baochou2")=trim(request.form("price2"))
rs("chetie")=trim(request.form("chetie"))
rs("zhaungtai")=trim(request.form("zhaungtai"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     �����ɹ� ��');history.go(-1);</script>"
response.End
end if
%>
<%
id=Trim(Request.QueryString("id"))
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from dingdan where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<form id="form1" name="form1" method="post" action="dingdanshow.asp"><table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        ������ϸ </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�Ƿ���ʾ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><label>
              <input type="radio" name="xianshi" value="��" <% If rs("xianshi")="��" Then %>checked <% End If %> />
              ��
              <input type="radio" name="xianshi" value="��"  <% If rs("xianshi")="��" Then %>checked <% End If %>/>
            ��</label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">����״̬��</td>
            <td bgcolor="#EEEEEE" class="ziti03"><label>
              <select name="zhaungtai" id="zhaungtai">
                <option value="<%= rs("zhaungtai") %>" selected="selected"><%= rs("zhaungtai") %></option>
                <option value="δ����">δ����</option>
                <option value="�ѽᵥ">�ѽᵥ</option>
              </select>
            </label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">������ţ�</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;S<%= rs("id") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" class="ziti03"><div align="right">��ϵ�ˣ�</div></td>
            <td width="73%" bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input 
                  name="name" id="name3" value="<%= rs("username") %>" size="12" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">�绰��</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="telephone_home" value="<%= rs("tel") %>" maxlength="50" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#eeeeee" class="ziti03"><div align="right">�ƶ��绰��</div></td>
            <td bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="mobile" value="<%= rs("shouji") %>" size="25" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">ѧԱ�Ա�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;
              <input type="radio" value="��" name="student_sex"  <% If rs("sex")="��" Then %>checked <% End If %>/>
�С� 
<input type="radio" value="Ů" name="student_sex" <% If rs("sex")="Ů" Then %>checked <% End If %> />
Ů</span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">ԤԼ��Ա�� </div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("yuyue") %></span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">��������</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt">
              <input name="dizhi1" id="dizhi1" value="<%= rs("dizhi") %>" size="21" maxlength="100" />
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">����λ�ã�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="dizhi" id="dizhi" value="<%= rs("dizhi1") %>" size="21" maxlength="100" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">ѧԱ�꼶��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select size="1" name="grade">
                <option value="<%= rs("nianji") %>" 
                    selected="selected"><%= rs("nianji") %></option>
                <option value="�׶�">�׶�</option>
                <option 
                    value="һ�꼶">һ�꼶</option>
                <option value="���꼶">���꼶</option>
                <option value="���꼶">���꼶</option>
                <option 
                    value="���꼶">���꼶</option>
                <option value="���꼶">���꼶</option>
                <option value="���꼶">���꼶</option>
                <option value="��һ">��һ</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="��һ">��һ</option>
                <option value="�߶�">�߶�</option>
                <option value="����">����</option>
                <option value="��У��">��У��</option>
                <option value="�Կ���">�Կ���</option>
                <option value="��һ">��һ</option>
                <option value="���">���</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="�����">�����</option>
                <option 
                  value="����">�������</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="35" class="ziti03"><div align="right">�ڿΰ��ţ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea id="anpai" name="anpai" rows="5" cols="35"><%= rs("anpai") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">���ѧ�ƣ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="xueke" id="xueke" value="<%= rs("xueke") %>" size="21" maxlength="100" />
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="110" class="ziti03"><div align="right">ѧԱ���������<br />
              ��ѧԱ�Ļ�����<br />
              ѧϰ״����<br />
              �Ը�ȡ���</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea id="textarea2" name="explain" rows="5" cols="35"><%= rs("qingkuang") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">��Ա�Ա�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("jsex") %></span>
              <input type="radio" value="Ů��Ա" name="teacher_sex"  <% If rs("jsex")="Ů��Ա" Then %>checked <% End If %>/>
ҪŮ��Ա��
<input type="radio" value="�н�Ա" name="teacher_sex" <% If rs("jsex")="�н�Ա" Then %>checked <% End If %>/>
Ҫ�н�Ա��
<input 
                  type="radio" value="����ν" name="teacher_sex" <% If rs("jsex")="����ν" Then %>checked <% End If %>/>
����ν</div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="90" class="ziti03"><div align="right">�Խ�Ա����Ҫ��(�� �ӵ� ��� )��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea name="other" rows="4" cols="35"><%= rs("jqingkuang") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">��ѧ��ʽ��</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><label><span style="font-size: 10pt">&nbsp;
              <input name="fangshi" type="text" id="fangshi" value="<%= rs("fangshi") %>" />
            </span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">���޳�����</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><label></label>
              <label>
              <input type="radio" name="chetie" value="��" <% If rs("chetie")="��" Then %>checked <% End If %>/>
</label>
��
<label>
<input name="chetie" type="radio" value="��" checked="checked" <% If rs("chetie")="��" Then %>checked <% End If %> />
��</label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">���꣺</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span 
                  class="asho_link_9"><span style="font-size: 10pt">
               &nbsp;
               <input name="price" id="price"  value="<%= rs("baochou") %>" size="16" maxlength="30"/>
            </span>Ԫ/Сʱ</span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">���꣺</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp;
              <input name="price2" id="price2"  value="<%= rs("baochou2") %>" size="16" maxlength="30"/>
            </span>Ԫ/��</span></div></td>
          </tr>
        </tbody>
    </table>
      <div align="center"><br />
      
        <input type="submit" name="Submit" value="�ύ" />
        <input type="hidden" name="acction" value="<%= rs("id") %>" />
      </div>
      
       <label></label>       </td></tr>
</table> 
</form>   <%
	      rs.Close
          set rs=nothing
		 %> 
</body>
</html>

 