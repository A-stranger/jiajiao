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
j=0;
for(i=0;i<document.form1.chenggong.length;i++)
{
  if(document.form1.chenggong[i].checked==true)
  {
  j++;    
  }
}
if(j==0)
{
 alert('��ѡ��ɹ���¼');
 return false;
}
if( form1.id.value =="") {
alert("\����д��Ա���!")
return false;
}
if( form1.dingdan.value =="") {
alert("\����д����!")
return false;
}
if( form1.nianji.value =="") {
alert("\����дѧУ�꼶!")
return false;
}

if( form1.kemu.value =="") {
alert("\����д���̿�Ŀ!")
return false;
}
if( form1.shijian.value =="") {
alert("\����д�ҽ�ʱ��!")
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
rs.Open "select * from xjilu",conn,1,3
rs.addnew
rs("chenggong")=request.form("chenggong")
rs("userid")=Trim(Request.Form("id"))
rs("dingdan")=trim(request.form("dingdan"))
rs("sex")=trim(request.form("sex"))
rs("kemu")=trim(request.form("kemu"))
rs("shijian")=trim(request.form("shijian"))
rs("nianji")=trim(request.form("nianji"))
rs("chengji1")=trim(request.form("chengji1"))
rs("chengji2")=trim(request.form("chengji2"))
rs("fangfa")=trim(request.form("fangfa"))
rs("pingjia")=trim(request.form("pingjia"))
rs("zongjie")=trim(request.form("zongjie"))
rs("beizhu")=trim(request.form("beizhu"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     ��ӳɹ���');window.location.href='xjilu.asp';</script>"
response.End
end if

 %>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<style type="text/css">
<!--
.STYLE1 {color: #E3E3E3}
-->
</style>
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        ��Ӽ�¼ </font></div></td>
  </tr>
  <tr> 
    <td height="107" align="center" valign="top" bgcolor="#FFFFFF"><form name="form1" method="post" action="xjilunew.asp" onSubmit="return checkdata()">
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
  <tbody>
  <tr>
            <td align="right" class="ziti03">�ɹ���¼��</td>
            <td COLSPAN="2" class="ziti03"><span class="ziti03">
              <label> <input name="chenggong" type="radio" value="��" >
              </label>
              ��
              <label>
              <input  name="chenggong" type="radio" value="��">
              </label>
            ��</span></td>
          </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">��Ա��ţ�</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; T
          <input name="id" type="text" id="id" size="10">
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td width="20%" height="35" align="right" bgcolor="#E3E3E3" class="ziti03">����(���)��</td>
      <td width="80%" bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;S
            <label>
            <input name="dingdan" type="text" id="dingdan" size="5">
            </label>
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">�Ա�</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp;</span></span>
          <label>
          <select name="sex" id="sex">
            <option value="��">��</option>
            <option value="Ů">Ů</option>
          </select>
        </label></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">ѧУ�꼶��</td>
      <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
            <input name="nianji" type="text" id="nianji" size="40">
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">���̿�Ŀ��</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt"> &nbsp;</span>
          <input name="kemu" type="text" id="kemu" size="40"></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">�ҽ�ʱ�䣺</td>
      <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <input name="shijian" type="text" id="shijian" size="40">
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">����ǰ�ɼ���</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <input name="chengji1" type="text" id="chengji1" size="40">
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">������ɼ���</td>
      <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <input name="chengji2" type="text" id="chengji2" size="40">
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">ʹ�ý�ѧ������</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <label>
            <textarea name="fangfa" id="fangfa" cols="45" rows="5"></textarea>
            </label>
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#E3E3E3" class="ziti03">�ҳ����ۣ�</td>
      <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <textarea name="pingjia" id="pingjia" cols="45" rows="5"></textarea>
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">��ѧ�ܽ᣺</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <textarea name="zongjie" id="zongjie" cols="45" rows="5"></textarea>
      </span></td>
    </tr>
    <tr bgcolor="#eeeeee">
      <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">��ע��</td>
      <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
            <textarea name="beizhu" id="beizhu" cols="45" rows="5"></textarea>
      </span></td>
    </tr>
  </tbody>
</table>
<p>
                          <label>
                          <input name="action" type="submit" class="button" id="action" value="�ύ��¼">
</label></p>
    </form></td>
  </tr>
</table>
</body>
</html>

 
 







