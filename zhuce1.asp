<!--#include file="conn.asp"-->

<% dd=Trim(Request.Form("name")) 
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from jiaoyuan where username='"&dd&"'"
rs.open strsql,conn,1,1
if not(rs.eof and rs.bof) then
response.Write("<script>alert('���û����Ѿ���ע����!');history.go(-1);</script>")
response.end
rs.close
set rs=nothing
end if

%>
<%
flag=Trim(Request.Form("flag"))
acction=Trim(Request.Form("acction"))
If  flag="" Then 
response.Write "<script language=javascript>alert('     ��ѡ����ݣ�');history.go(-1);</script>"
response.End
end if 
if acction<>"" Then

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from jiaoyuan",conn,1,3
rs.addnew
rs("username")=trim(request.form("name"))
rs("password")=trim(request.form("password"))
rs("shenfen")=flag
rs("xingming")=trim(request.form("real_name"))
rs("sex")=trim(request.form("gender"))
rs("shengr")=trim(request.form("birthday"))
rs("zhuanye")=trim(request.form("major"))
rs("xueli")=trim(request.form("educational_level"))

rs("shenfenzheng")=trim(request.form("idcard"))
rs("shengfen")=trim(request.form("native_place"))
rs("gongzuo")=trim(request.form("identity"))
if trim(request.form("school"))="" then
rs("daxue")=trim(request.form("school1"))
else
rs("daxue")=trim(request.form("school"))
end if
if web<>banquan then
response.End()
end if
rs("gaozhong")=trim(request.form("high_school"))
rs("shenghuo")=trim(request.form("address1"))
rs("jiating")=trim(request.form("address2"))
rs("tel")=trim(request.form("telephone"))
rs("shouji")=trim(request.form("mobile"))
rs("msn")=trim(request.form("msn"))
rs("qq")=trim(request.form("qq"))
rs("mail")=trim(request.form("e_mail"))
rs("tongxin")=trim(request.form("address3"))
rs("youbian")=trim(request.form("post_code"))
rs("kemu")=trim(request.form("position"))
rs("yinyue")=trim(request.form("yinyue"))
rs("zhunaye")=trim(request.form("zhuanye"))
rs("shijian")=trim(request.form("shijian"))
rs("miaoshu")=trim(request.form("miaoshu"))
rs("quyu")=trim(request.form("teach_place"))
rs("chengguo")=trim(request.form("chengguo"))
rs("xinshui")=trim(request.form("xinshui"))
rs("fangshi")=trim(request.form("fangshi"))
rs("dengji")=trim(request.form("technical_level"))
rs("xuexiao")=trim(request.form("teach_school"))
rs("jiaoling")=trim(request.form("teach_age"))
rs("xueke")=trim(request.form("teach_subject"))
rs("leibie")=trim(request.form("important_level"))
rs.update


neirong="<table width='600' height='360' border='0' cellpadding='5' cellspacing='1' bgcolor='#CCCCCC'><tr>"
neirong=neirong&"<td width='212' align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��ԱԱ��ţ�</span></td>"
neirong=neirong&"<td width='388' bgcolor='#FFFFFF'>T"&rs("id")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&" <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�û�����</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("username")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>������</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xingming")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�Ա�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("sex")&"</td>"
neirong=neirong&"  </tr>"
neirong=neirong&"  <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>Ŀǰѧ����</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xueli")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>Ŀǰ��ݣ�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("gongzuo")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>ְ�Ƶȼ���</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dengji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�绰��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("tel")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�ֻ���</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("shouji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>E_mail��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("mail")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�ɽ��ڿ�Ŀ��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("kemu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��ְ��ʦ��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("zhunaye")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>����ר�ţ�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jqingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>����������</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("miaoshu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>���ڿ�����</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("quyu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>нˮҪ��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xinshui")&"Ԫ/Сʱ</td>"
neirong=neirong&"</tr>"
neirong=neirong&"</table>"

dim jmail
set jmail=server.createobject("Jmail.message")
jmail.silent=true
jmail.charset="gb2312"
jmail.ContentType="text/html" 
jmail.fromname="�����ҽ���" '�����Ƿ��������ƣ����Դ����ݿ�����ȡֵ
jmail.from="jj0453@126.com" '�����Ƿ��������䣬���Դ����ݿ�����ȡֵ������ʽһ��Ҫ��ȷ
jmail.addrecipient "jj0453@126.com","��վ����Ա"
jmail.subject="���½�Աע����" '��ֵ���Դ����ݿ�����ȡֵ
jmail.Body=neirong

jmail.mailserverusername="jj0453" '�ʼ����ͷ�������¼����
jmail.mailserverpassword="9911010448" '�ʼ����ͷ�������¼����
jmail.maildomain="mail.126.com" '�ʼ����ͷ���������
sendok=jmail.send("smtp.126.com") 'smtp����������

rs.close
set rs=nothing


response.Write "<script language=javascript>alert('����ע��ɹ�,���ǻ�����������������ˣ�ͨ��������ʾ�����ȷ��ҳ�潫����ת�������д�ע��ҳ��');window.location.href='guanli.asp';</script>"
response.End

end if
%>
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
rel=stylesheet><SCRIPT src="moveloc.js" type=text/javascript></SCRIPT>
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
.style1 {	COLOR: #cc0000
}
-->
</style>
<script language="JavaScript">
<!--

function GetItemID(ObjName) //�����Ƶõ������
{
  for (var ObjID=0; ObjID < window.register.elements.length; ObjID++)
    if ( window.register.elements[ObjID].name == ObjName )
    {  return(ObjID);
       break; 
    }
  return(-1);
}
function AddItem(ObjName, DesName,FirstName,SecondName) //��������������Ϣ��ӵ��ұ�������
{
  ObjID    = GetItemID(ObjName);
  DesObjID = GetItemID(DesName);
  if (FirstName !="")
  {
   FirstID = GetItemID(FirstName);
  }
  SecondID = GetItemID(SecondName);
  j = document.register.elements[DesObjID].options.length;
  for (k=0; k<j; k++ ) {
  if (document.register.elements[DesObjID].options[k].value == "0000")
  { 
    window.alert('���Ѿ�ѡ���˲��ޣ�');
    return;
   }
  }
  var totalSelect=10000; 
  k=0;
  i = document.register.elements[ObjID].options.length;
  if (i==0) return;
  maxsel=0;
  for (h=0; h<i; h++)
     if (document.register.elements[ObjID].options[h].selected ) {
         k=k+1;
         maxsel=h+1;
         }
  if (maxsel>=i) maxsel=0;
  if ( document.register.elements[DesObjID].length + k >totalSelect ) {
    window.alert('����ѡ��'+totalSelect+'�');
    return;
    }
  if ( ObjID != -1 && DesObjID != -1 )
  { i = document.register.elements[ObjID].options.length;
    j = document.register.elements[DesObjID].options.length;
    for (h=0; h<i; h++)
    { if (document.register.elements[ObjID].options[h].selected )
      {  
	    if (FirstName !="")
		{ 
         Text = document.register.elements[ObjID].options[h].text;
         }
		 else
		 {
         Text = document.register.elements[ObjID].options[h].text;
		 }
		 Code = document.register.elements[ObjID].options[h].value;
         K_Select = false;
		 if (Code=="")
		 {
		   K_Select = true;
		   window.alert('����ѡ��ѡ���ٵ����ӣ�');
           return;
		 }
		 else
		{
		 j = document.register.elements[DesObjID].options.length;
         for (k=0; k<j; k++ ) {
           if (document.register.elements[DesObjID].options[k].value == Code)
           { 
		    K_Select = true; 
		    window.alert('����ѡ���˸��');
            return;
           }
		   else
		  {
		    if (document.register.elements[DesObjID].options[k].value == Code.substr(0,4))
            { 
			 K_Select = true; 
		     window.alert('����ѡ���˸����������Ĳ��ޣ�');
             return;
            }
			else
			{
			  if (document.register.elements[DesObjID].options[k].value.substr(0,4) == Code)
             {
			  K_Select = true;  
		      window.alert('����ѡ���˸�����������е����');
              return;
             }
			}
		  } 
         }
		 }
         if ( K_Select == false)
         { document.register.elements[DesObjID].options[j] = new Option(Text, Code);
         }
         document.register.elements[ObjID].options[h].selected =false;
       }
    }
    document.register.elements[ObjID].options[maxsel].selected =true;
  }
}
function DelItem(ObjName)  ////���ұ����������Ϣɾ��
{
  ObjID = GetItemID(ObjName);
  min_sel=0;
  if ( ObjID != -1 )
  {
    for (i=window.register.elements[ObjID].length-1; i>=0; i--)
    {  if (window.register.elements[ObjID].options[i].selected)
       { 
          if (min_sel==0 || i<min_sel)
            min_sel=i;
          window.register.elements[ObjID].options[i] = null;
       }
    }
    i=window.register.elements[ObjID].length;

    if (i>0)  {
        if (min_sel>=i)
           min_sel=i-1;
        window.register.elements[ObjID].options[min_sel].selected=true;
        }
  }
}
function GetItemvalue(ObjName)  //�õ�����������ѡ���ֵ
{ 
  ObjID = GetItemID(ObjName);
  Itemvalue="" ;
  i = document.register.elements[ObjID].options.length;
  for (h=0; h<i; h++) 
  {
   if (h==0)
   {
    Itemvalue=document.register.elements[ObjID].options[h].value;
   }
   else
   {
    Itemvalue=Itemvalue+","+document.register.elements[ObjID].options[h].value;
   }
  }
  return (Itemvalue);
}
function Juge(theForm)
{
document.register.teach_place.value="";//��ʼ��
for(i=0;i<document.register.SecondTeachPlace.length;i++)
 {
	document.register.teach_place.value=document.register.teach_place.value+document.register.SecondTeachPlace.options[i].value+",";
	if(i>18)
	 {
	 alert("��ѡ����ڿ����򳬹���18�������ʵ�ɾ����������");
	 return (false);
	 }
 }
  theForm.position.value=GetItemvalue("tempposition");
  if(document.register.real_name.value=="")
{
alert("����д��ʵ������")
document.register.real_name.focus();
return (false);
}

 else if(document.register.idcard.value=="")
 {
	 alert("����д ���֤/���� ���룡")
	 document.register.idcard.focus();
	 return (false);
 }
 else if(document.register.birthday.value=="")
 {
	 alert("��ѡ�������ݣ�")
	 document.register.birthday.focus();
	 return (false);
 }
 else if(document.register.educational_level.value=="")
 {
	 alert("��ѡ��Ŀǰѧ����")
	 document.register.educational_level.focus();
	 return (false);
 }
 else if(document.register.identity.value=="")
 {
	 alert("��ѡ��Ŀǰ��ݣ�")
	 document.register.identity.focus();
	 return (false);
 }
else if(document.register.native_place.value=="")
 {
	 alert("��ѡ�������ʡ�ݻ���ң�")
	 document.register.native_place.focus();
	 return (false);
 }
 else if(document.register.major.value=="")
 {
	 alert("����д��ѧרҵ��")
	 document.register.major.focus();
	 return (false);
 }
 else if(document.register.school.value=="" && document.register.school1.value=="")
 {
	 alert("��ѡ���ڶ���У��")
	 document.register.school.focus();
	 return (false);
 }
  
 else if(document.register.telephone.value=="")
 {
	 alert("����ϸ��д������ϵ�绰��")
	 document.register.telephone.focus();
	 return (false);
 }
 else if(document.register.e_mail.value=="")
 {
	 alert("����E_mail��ַ�Ƿ���д��ȷ��")
	 document.register.e_mail.focus();
	 return (false);
 }
  else if(document.register.address1.value=="")
 {
	 alert("������д��������ס��")
	 document.register.address1.focus();
	 return (false);
  }
  else if(document.register.address3.value=="")
 {
	 alert("������дͨ�ŵ�ַ��")
	 document.register.address3.focus();
	 return (false);
  }
    else if(document.register.post_code.value=="")
 {
	 alert("������дͨ���ʱ࣡")
	 document.register.post_code.focus();
	 return (false);
  }
  else if(document.register.position.value=="")
 {
	 alert("��ѡ�����Ŀɽ��ڿ�Ŀ��");
	 return (false);
 }
 if(document.register.shijian.value=="")
 {
	 alert("   ���ڿ�ʱ�䰮�㲻��Ϊ�գ�")
	 document.register.shijian.focus();
	 return (false);
 } 
if(document.register.miaoshu.value=="")
 {
	 alert("   ������������Ϊ�գ�")
	 document.register.miaoshu.focus();
	 return (false);
 }   
 if(document.register.teach_place.value=="")
 {
	 alert("   ���ڿ�������Ϊ�գ�")
	 document.register.teach_place.focus();
	 return (false);
 }  
  if(document.register.xinshui.value=="")
 {
	 alert("   нˮҪ����Ϊ�գ�")
	 document.register.xinshui.focus();
	 return (false);
 }
  
    
return (true);
}
-->
</script>
<iframe height=0 width=0 src="" id="mainpositionframe"></iframe>
<iframe height=0 width=0 src="" id="positionframe"></iframe>
<iframe height=0 width=0 src="" id="capitalframe"></iframe>
<iframe height=0 width=0 src="" id="cityframe"></iframe>
<iframe height=0 width=0 src="" id="professionframe"></iframe>
</HEAD>
<BODY>

<!--#include file = "top.asp"-->

<table width="980" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" background="images/top_2_1.gif"></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td valign="top" bgcolor="#FFFFFF">
	
	<FORM name=register onSubmit="return Juge(this)" 
action=zhuce1.asp method=post>
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
                    <td height="60"><div align="center" class="px14"><strong>�½�Աע�������: ��д���˻�����Ϣ</strong>
                      <input name="name" type="hidden" id="name" value="<%= trim(request.form("name")) %>">
                      <input name="password" type="hidden" id="password" value="<%= trim(request.form("password")) %>">
                      <input name="flag" type="hidden" id="flag" value="<%= flag %>">
</div></td>
                  </tr>
                  <tr>
                    <td height="87"><TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
                      <TBODY>
                        
                        <TR>
                          <TD vAlign=top align=middle width=700><TABLE cellSpacing=2 cellPadding=0 width="99%" align=center border=0>
                              <TBODY>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30 colspan="4"><TABLE width="100%" height=80 
      border=0 cellPadding=0 cellSpacing=1 bgColor=#cccccc>
                                        <TBODY>
                                          <TR>
                                            <TD vAlign=center background=images/beijin1.gif bgColor=#f3f3f3><DIV class=asho_link_9 align=center><FONT class=buleo2_link_9 
            color=#ff3300>��������ϢԽ��ϸ��Խ�����ڼ�����Ҳ��Խ���׻��ѧԱ��ԤԼ<BR>
                                              �������������ʵ���꾡����д���¸��������к�ɫ�Ǻţ�</FONT><SPAN 
            class=redo_link_10><FONT color=#ff3300>*</FONT></SPAN><FONT 
            class=buleo2_link_9 color=#ff3300>��Ϊ����</FONT><BR>
                                            </DIV></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD width="15%" height=30><DIV align=right><FONT color=#ff0000>*</FONT>��ʵ������</DIV></TD>
                                    <TD colSpan=3 align="left"><INPUT id=real_name maxLength=15 size=15 
            name=real_name>
                                        <SPAN 
            class=buleo2_link_9>ע�⣺������˽���ǣ�������ֻ��ʾ�����գ��硰��������ֻ��ʾΪ������Ա��</SPAN></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>�Ա�</DIV></TD>
                                    <TD width="34%" align="left" bgcolor="#d7ecff"><INPUT type=radio CHECKED value=�� name=gender>
                                      ��
                                      <INPUT type=radio value=Ů name=gender>
                                      Ů</TD>
                                    <TD width="22%"><DIV align=right><FONT color=#ff0000>*</FONT>������ݣ�</DIV></TD>
                                    <TD width="29%" height=25 align="left"><SELECT id=select19 size=1 name=birthday>
                                        <OPTION value="" selected>ѡ�����</OPTION>
                                        <OPTION 
              value=1930>1930</OPTION>
                                        <OPTION value=1931>1931</OPTION>
                                        <OPTION 
              value=1932>1932</OPTION>
                                        <OPTION value=1933>1933</OPTION>
                                        <OPTION 
              value=1934>1934</OPTION>
                                        <OPTION value=1935>1935</OPTION>
                                        <OPTION 
              value=1936>1936</OPTION>
                                        <OPTION value=1937>1937</OPTION>
                                        <OPTION 
              value=1938>1938</OPTION>
                                        <OPTION value=1939>1939</OPTION>
                                        <OPTION 
              value=1940>1940</OPTION>
                                        <OPTION value=1941>1941</OPTION>
                                        <OPTION 
              value=1942>1942</OPTION>
                                        <OPTION value=1943>1943</OPTION>
                                        <OPTION 
              value=1944>1944</OPTION>
                                        <OPTION value=1945>1945</OPTION>
                                        <OPTION 
              value=1946>1946</OPTION>
                                        <OPTION value=1947>1947</OPTION>
                                        <OPTION 
              value=1948>1948</OPTION>
                                        <OPTION value=1949>1949</OPTION>
                                        <OPTION 
              value=1950>1950</OPTION>
                                        <OPTION value=1951>1951</OPTION>
                                        <OPTION 
              value=1952>1952</OPTION>
                                        <OPTION value=1953>1953</OPTION>
                                        <OPTION 
              value=1954>1954</OPTION>
                                        <OPTION value=1955>1955</OPTION>
                                        <OPTION 
              value=1956>1956</OPTION>
                                        <OPTION value=1957>1957</OPTION>
                                        <OPTION 
              value=1958>1958</OPTION>
                                        <OPTION value=1959>1959</OPTION>
                                        <OPTION 
              value=1960>1960</OPTION>
                                        <OPTION value=1961>1961</OPTION>
                                        <OPTION 
              value=1962>1962</OPTION>
                                        <OPTION value=1963>1963</OPTION>
                                        <OPTION 
              value=1964>1964</OPTION>
                                        <OPTION value=1965>1965</OPTION>
                                        <OPTION 
              value=1966>1966</OPTION>
                                        <OPTION value=1967>1967</OPTION>
                                        <OPTION 
              value=1968>1968</OPTION>
                                        <OPTION value=1969>1969</OPTION>
                                        <OPTION 
              value=1970>1970</OPTION>
                                        <OPTION value=1971>1971</OPTION>
                                        <OPTION 
              value=1972>1972</OPTION>
                                        <OPTION value=1973>1973</OPTION>
                                        <OPTION 
              value=1974>1974</OPTION>
                                        <OPTION value=1975>1975</OPTION>
                                        <OPTION 
              value=1976>1976</OPTION>
                                        <OPTION value=1977>1977</OPTION>
                                        <OPTION 
              value=1978>1978</OPTION>
                                        <OPTION value=1979>1979</OPTION>
                                        <OPTION 
              value=1980>1980</OPTION>
                                        <OPTION value=1981>1981</OPTION>
                                        <OPTION 
              value=1982>1982</OPTION>
                                        <OPTION value=1983>1983</OPTION>
                                        <OPTION 
              value=1984>1984</OPTION>
                                        <OPTION value=1985>1985</OPTION>
                                        <OPTION 
              value=1986>1986</OPTION>
                                        <OPTION value=1987>1987</OPTION>
                                        <OPTION 
              value=1988>1988</OPTION>
                                        <OPTION value=1989>1989</OPTION>
                                        <OPTION 
              value=1990>1990</OPTION>
                                        <OPTION value=1991>1991</OPTION>
                                        <OPTION 
              value=1992>1992</OPTION>
                                        <OPTION value=1993>1993</OPTION>
                                        <OPTION 
              value=1994>1994</OPTION>
                                        <OPTION value=1995>1995</OPTION>
                                        <OPTION 
              value=1996>1996</OPTION>
                                        <OPTION value=1997>1997</OPTION>
                                        <OPTION 
              value=1998>1998</OPTION>
                                        <OPTION value=1999>1999</OPTION>
                                        <OPTION 
              value=2000>2000</OPTION>
                                        <OPTION value=2001>2001</OPTION>
                                        <OPTION 
              value=2002>2002</OPTION>
                                        <OPTION value=2003>2003</OPTION>
                                        <OPTION 
              value=2004>2004</OPTION>
                                        <OPTION value=2005>2005</OPTION>
                                        <OPTION 
              value=2006>2006</OPTION>
                                        <OPTION value=2007>2007</OPTION>
                                        <OPTION 
              value=2008>2008</OPTION>
                                        <OPTION value=2009>2009</OPTION>
                                        <OPTION 
              value=2010>2010</OPTION>
                                    </SELECT></TD>
                                </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD bgColor=#eef7ff height=30><DIV align=right><FONT color=#ff0000>*</FONT>רҵ��</DIV></TD>
                                    <TD align="left" bgcolor="#eef7ff"><INPUT id=major22 maxLength=30 size=18 name=major>
                                      </TD>
                                    <TD><DIV align=right><FONT color=#ff0000>*</FONT>Ŀǰѧ����</DIV></TD>
                                    <TD align="left"><SELECT id=select2 size=1 name=educational_level>
                                        <OPTION 
              value="" selected>ѡ��ѧ��</OPTION>
                                        <OPTION value=��ר����>��ר����</OPTION>
                                        <OPTION value=��ר�ڶ�>��ר�ڶ�</OPTION>
                                        <OPTION value=��ר��ҵ>��ר��ҵ</OPTION>
                                        <OPTION value=�����ڶ�>�����ڶ�</OPTION>
                                        <OPTION value=���Ʊ�ҵ>���Ʊ�ҵ</OPTION>
                                        <OPTION value=˶ʿ�ڶ�>˶ʿ�ڶ�</OPTION>
                                        <OPTION value=˶ʿ��ҵ>˶ʿ��ҵ</OPTION>
                                        <OPTION value=��ʿ�ڶ�>��ʿ�ڶ�</OPTION>
                                        <OPTION 
            value=��ʿ��ҵ>��ʿ��ҵ</OPTION>
                                    </SELECT></TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>���֤/���գ�</DIV></TD>
                                    <TD colSpan=3 align="left"><INPUT id=idcard22 maxLength=40 size=30 name=idcard>
                                        <FONT color=#cc0000>(����ϸ��ܣ������⹫��)</FONT>
                                        <DIV align=right></DIV></TD>
                                </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>������ʡ�ݣ�</DIV></TD>
                                    <TD align="left"><SELECT id=select20 size=1 name=native_place>
                                        <OPTION value="" 
              selected>��ѡ��</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=���>���</OPTION>
                                        <OPTION 
              value=�Ϻ�>�Ϻ�</OPTION>
                                      <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=�㽭>�㽭</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=�ӱ�>�ӱ�</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=������>������</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=�ຣ>�ຣ</OPTION>
                                        <OPTION value=ɽ��>ɽ��</OPTION>
                                        <OPTION 
              value=ɽ��>ɽ��</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=�Ĵ�>�Ĵ�</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=���>���</OPTION>
                                        <OPTION value=�½�>�½�</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                    </SELECT>
                                        <FONT 
          color=#cc0000>������ָ��ǰ���ڵأ�</FONT></TD>
                                    <TD><DIV align=right><FONT color=#ff0000>*</FONT>Ŀǰ��ݣ�</DIV></TD>
                                    <TD align="left"><% If flag=4 Then %>
                                        <INPUT id=identity maxLength=15 size=15 
            name=identity>
                                      
                                      <% Else %>
                                      <select name=select class=regist-select id="select">
                                        <% If flag=1 Then %>
                                        <option value="" selected>ѧ��ѡ�����</option>
                                        <option value=ר��>ר��</option>
                                        <option 
    value=����һ�꼶>����һ�꼶</option>
                                        <option value=���ƶ��꼶>���ƶ��꼶</option>
                                        <option 
    value=�������꼶>�������꼶</option>
                                        <option value=�������꼶>�������꼶</option>
                                        <option 
    value=���Ʊ�ҵ>���Ʊ�ҵ</option>
                                        <option value=˶ʿ>˶ʿ</option>
                                        <option 
    value=��ʿ>��ʿ</option>
                                        <% End If %>
                                        <% If flag=3 Then %>
                                        <option value="">��ʦѡ������ѡ��</option>
                                        <option 
    value=��ְСѧ��ʦ>��ְСѧ��ʦ</option>
                                        <option value=רְСѧ��ʦ>רְСѧ��ʦ</option>
                                        <option 
    value=��ְ���н�ʦ>��ְ���н�ʦ</option>
                                        <option value=רְ���н�ʦ>רְ���н�ʦ</option>
                                        <option 
    value=��ְ���н�ʦ>��ְ���н�ʦ</option>
                                        <option value=רְ���н�ʦ>רְ���н�ʦ</option>
                                        <option 
    value=��ѵ������ʦ>��ѵ������ʦ</option>
                                        <option value=�׶���ʦ>�׶���ʦ</option>
                                        <option 
    value=��ѧ��ʦ>��ְ��ѧ��ʦ</option>
                                        <% End If %>
                                       
                                      </select>
                                      <% End If %></TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>��ҵ/�Ͷ���У</TD>
                                    <TD colSpan=3 align="left" bgColor=#d7ecff><SELECT id=school size=1 name=school>
                                        <OPTION value="" selected>ѡ���У</OPTION>
                                        <%	
					  dw1="ԺУ"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                        <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                                        <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                                        <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                                        <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                                      </SELECT>
                                        <SPAN 
            class=red_link_9>�����û��</SPAN>����д�¿�
                                    <INPUT id=school1 maxLength=30 
            size=25 name=school1></TD>
                                  </TR>
                                  <% If flag=1 Then %>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>����ĸУ��</TD>
                                    <TD colSpan=3 align="left"><INPUT maxLength=40 name=high_school>
                                    ����<FONT 
            color=#ff0000>ȫ��</FONT>��</TD>
                                  </TR>
                                  <% End If %>
                                  <% If flag=3 Then %>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>ְ�Ƶȼ���</TD>
                                    <TD align="left"><SELECT id=technical_level size=1 name=technical_level>
                                        <OPTION value="" selected>��ѡ��ְ�Ƶȼ�</OPTION>
                                        <OPTION 
              value=����ְ�Ƶȼ�>����ְ�Ƶȼ�</OPTION>
                                        <OPTION value=�׶���ʦ>�׶���ʦ</OPTION>
                                        <OPTION value=Сѧ������ʦ>Сѧ������ʦ</OPTION>
                                        <OPTION 
              value=Сѧһ����ʦ>Сѧһ����ʦ</OPTION>
                                        <OPTION value=Сѧ�߼���ʦ>Сѧ�߼���ʦ</OPTION>
                                        <OPTION value=Сѧ�ؼ���ʦ>Сѧ�ؼ���ʦ</OPTION>
                                        <OPTION 
              value=��ѧ������ʦ>��ѧ������ʦ</OPTION>
                                        <OPTION value=��ѧһ����ʦ>��ѧһ����ʦ</OPTION>
                                        <OPTION value=��ѧ�߼���ʦ>��ѧ�߼���ʦ</OPTION>
                                        <OPTION 
              value=��ѧ�ؼ���ʦ>��ѧ�ؼ���ʦ</OPTION>
                                        <OPTION value=��ѧ����>��ѧ����</OPTION>
                                        <OPTION value=��ѧ��ʦ>��ѧ��ʦ</OPTION>
                                        <OPTION value=������>������</OPTION>
                                        <OPTION value=������>������</OPTION>
                                    </SELECT>                                    </TD>
                                    <TD><FONT color=#ff0000>*</FONT>(���)��ְѧУ��</TD>
                                    <TD align="left"><INPUT id=teach_school maxLength=30 name=teach_school>
                                        </TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>���䣺</TD>
                                    <TD align="left" bgColor=#d7ecff><SELECT id=teach_age size=1 name=teach_age>
                                        <OPTION value=0 selected>0</OPTION>
                                        <OPTION value=1>1</OPTION>
                                        <OPTION value=2>2</OPTION>
                                        <OPTION value=3>3</OPTION>
                                        <OPTION 
              value=4>4</OPTION>
                                        <OPTION value=5>5</OPTION>
                                        <OPTION 
              value=6>6</OPTION>
                                        <OPTION value=7>7</OPTION>
                                        <OPTION 
              value=8>8</OPTION>
                                        <OPTION value=9>9</OPTION>
                                        <OPTION 
              value=10>10</OPTION>
                                        <OPTION value=11>11</OPTION>
                                        <OPTION 
              value=12>12</OPTION>
                                        <OPTION value=13>13</OPTION>
                                        <OPTION 
              value=14>14</OPTION>
                                        <OPTION value=15>15</OPTION>
                                        <OPTION 
              value=16>16</OPTION>
                                        <OPTION value=17>17</OPTION>
                                        <OPTION 
              value=18>18</OPTION>
                                        <OPTION value=19>19</OPTION>
                                        <OPTION 
              value=20>20</OPTION>
                                        <OPTION value=21>21</OPTION>
                                        <OPTION 
              value=22>22</OPTION>
                                        <OPTION value=23>23</OPTION>
                                        <OPTION 
              value=24>24</OPTION>
                                        <OPTION value=25>25</OPTION>
                                        <OPTION 
              value=26>26</OPTION>
                                        <OPTION value=27>27</OPTION>
                                        <OPTION 
              value=28>28</OPTION>
                                        <OPTION value=29>29</OPTION>
                                        <OPTION 
              value=30>30</OPTION>
                                        <OPTION value=31>31</OPTION>
                                        <OPTION 
              value=32>32</OPTION>
                                        <OPTION value=33>33</OPTION>
                                        <OPTION 
              value=34>34</OPTION>
                                        <OPTION value=35>35</OPTION>
                                        <OPTION 
              value=36>36</OPTION>
                                        <OPTION value=37>37</OPTION>
                                        <OPTION 
              value=38>38</OPTION>
                                        <OPTION value=39>39</OPTION>
                                        <OPTION 
              value=40>40</OPTION>
                                        <OPTION value=41>41</OPTION>
                                        <OPTION 
              value=42>42</OPTION>
                                        <OPTION value=43>43</OPTION>
                                        <OPTION 
              value=44>44</OPTION>
                                        <OPTION value=45>45</OPTION>
                                        <OPTION 
              value=46>46</OPTION>
                                        <OPTION value=47>47</OPTION>
                                        <OPTION 
              value=48>48</OPTION>
                                        <OPTION value=49>49</OPTION>
                                        <OPTION 
              value=50>50</OPTION>
                                        <OPTION value=51>51</OPTION>
                                        <OPTION 
              value=52>52</OPTION>
                                        <OPTION value=53>53</OPTION>
                                        <OPTION 
              value=54>54</OPTION>
                                        <OPTION value=55>55</OPTION>
                                        <OPTION 
              value=56>56</OPTION>
                                        <OPTION value=57>57</OPTION>
                                        <OPTION 
              value=58>58</OPTION>
                                        <OPTION value=59>59</OPTION>
                                        <OPTION 
              value=60>60</OPTION>
                                    </SELECT>                                    </TD>
                                    <TD bgColor=#d7ecff><FONT color=#ff0000>*</FONT>�ν�ѧ�ƣ�</TD>
                                    <TD align="left" bgColor=#d7ecff><SELECT id=teach_subject size=1 
            name=teach_subject>
                                        <OPTION value="" selected>ѡ���ν�ѧ��</OPTION>
                                        <OPTION value=ѧǰ����>ѧǰ����</OPTION>
                                        <OPTION value=Ӣ��>Ӣ��</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION value=��ѧ>��ѧ</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=��ѧ>��ѧ</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=��ʷ>��ʷ</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=�ߵ���ѧ>�ߵ���ѧ</OPTION>
                                        <OPTION value=��ͨ��>��ͨ��</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=ϣ����>ϣ����</OPTION>
                                        <OPTION value=�����>�����</OPTION>
                                        <OPTION 
              value=������>������</OPTION>
                                        <OPTION value=�������>�������</OPTION>
                                        <OPTION 
              value=��������>��������</OPTION>
                                        <OPTION value=��������>��������</OPTION>
                                        <OPTION 
              value=��������>��������</OPTION>
                                        <OPTION value=�ڿ�����>�ڿ�����</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=��Ӱ>��Ӱ</OPTION>
                                        <OPTION 
              value=�鷨>�鷨</OPTION>
                                        <OPTION value=�赸>�赸</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=������>������</OPTION>
                                        <OPTION value=С����>С����</OPTION>
                                        <OPTION 
              value=������>������</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=�ַ���>�ַ���</OPTION>
                                        <OPTION 
              value=����˹>����˹</OPTION>
                                        <OPTION value=���ɹ�>���ɹ�</OPTION>
                                        <OPTION 
              value=˫�ɹ�>˫�ɹ�</OPTION>
                                        <OPTION value=�����>�����</OPTION>
                                        <OPTION 
              value=С��>С��</OPTION>
                                        <OPTION value=���>���</OPTION>
                                        <OPTION 
              value=Բ��>Բ��</OPTION>
                                        <OPTION value=�����>�����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=��>��</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION 
              value=����>����</OPTION>
                                        <OPTION value=���>���</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=�����>�����</OPTION>
                                        <OPTION 
              value=���ݿ�>���ݿ�</OPTION>
                                        <OPTION value=��ҳ���������>��ҳ���������</OPTION>
                                        <OPTION value=Linux��Unix>Linux��Unix</OPTION>
                                        <OPTION 
              value=ͼ�������>ͼ�������</OPTION>
                                        <OPTION value=��������>��������</OPTION>
                                        <OPTION value=�������>�������</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=Χ��>Χ��</OPTION>
                                        <OPTION value=�й�����>�й�����</OPTION>
                                        <OPTION value=��������>��������</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=�й�����>�й�����</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION value=��ȭ��>��ȭ��</OPTION>
                                        <OPTION value=���ֵ�>���ֵ�</OPTION>
                                        <OPTION value=���>���</OPTION>
                                        <OPTION value=��������>��������</OPTION>
                                        <OPTION value=��Ӿ>��Ӿ</OPTION>
                                        <OPTION value=ƹ����>ƹ����</OPTION>
                                        <OPTION value=��ë��>��ë��</OPTION>
                                        <OPTION value=����>����</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=����ѧ��>����ѧ��</OPTION>
                                    </SELECT>
                                       </TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#eef7ff height=30><FONT color=#ff0000>*</FONT>��ְ�꼶��</TD>
                                    <TD colSpan=3 align="left" bgColor=#eef7ff><SELECT id=important_level size=1 
            name=important_level>
                                        <OPTION value="" selected>ѡ���ν�ѧ��</OPTION>
                                        <OPTION value=ѧǰ>ѧǰ</OPTION>
                                        <OPTION value=һ�꼶>һ�꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
                                        <OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=���꼶>���꼶</OPTION>
										<OPTION value=��һ>��һ</OPTION>
										<OPTION value=�߶�>�߶�</OPTION>
										<OPTION value=����>����</OPTION>
                                      </SELECT>
                                        <SPAN 
            class=style1>����ʵ��д���Թ���֤��Ƹ��Ϊ׼��</SPAN></TD>
                                </TR>
                                  <% End If %>
                              </TBODY>
                              </TABLE>
                            <BR>
                              <TABLE cellSpacing=2 cellPadding=5 width="99%" align=center border=0>
                                <TBODY>
                                  <TR bgColor=#5881d6 background="images/hen6.gif">
                                    <TD colSpan=4 height=30><DIV class=white_link_9 align=center><STRONG><FONT color=#ffffff>�� ϵ 
                                      �� ʽ</FONT></STRONG></DIV></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>����ס����</DIV></TD>
                                    <TD align="left"><font 
                        color=#ffffff>
                                      <select class=input_text id=address1 
                        name=address1>
                                        <option value="" 
                          selected>��ѡ��</option>
                                        <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                        <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                                        <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                                        <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                                        <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                                      </select>
                                    </font></TD>
                                    <TD bgColor=#d7ecff><DIV align=right>��ͥס��: </DIV></TD>
                                    <TD align="left"><font 
                        color=#ffffff>
                                      <select class=input_text id=address2 
                        name=address2>
                                        <option value="" 
                          selected>��ѡ��</option>
                                        <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                        <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                                        <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                                        <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                                        <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                                      </select>
                                    </font></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD bgColor=#eef7ff height=25><DIV align=right><FONT color=#ff0000>*</FONT>�绰��</DIV></TD>
                                    <TD align="left"><DIV align=left>
                                      <INPUT maxLength=80 size=30 name=telephone>
                                        </DIV></TD>
                                    <TD bgColor=#eef7ff><DIV align=right>�ֻ���</DIV></TD>
                                    <TD align="left"><INPUT maxLength=32 size=15 name=mobile></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD width="14%" bgColor=#d7ecff height=25><DIV align=right>MSN��</DIV></TD>
                                    <TD width="32%" align="left"><DIV align=left>
                                      <INPUT id=msn name=msn>
                                    </DIV></TD>
                                    <TD width="16%" bgColor=#d7ecff><DIV align=right>QQ:</DIV></TD>
                                    <TD width="38%" align="left"><DIV align=left>
                                      <INPUT id=qq name=qq>
                                    </DIV></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>E_mail��</DIV></TD>
                                    <TD colSpan=3 align="left"><DIV align=left>
                                      <INPUT maxLength=50 size=28 name=e_mail>
                                      (<FONT 
            color=#cc0000>Ϊ֪ͨ�������ļҽ̼��һ����룬��������д</FONT>)</DIV></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><DIV align=right><FONT color=#ff0000>*</FONT>ͨ�ŵ�ַ<BR>
                                    </DIV></TD>
                                    <TD align="left" bgColor=#d7ecff><input id=address3 name=address3>
                                      
                                   </TD><TD bgColor=#d7ecff><DIV align=right><FONT color=#ff0000>*</FONT>�ʱࣺ</DIV></TD>
                                    <TD align="left" bgColor=#d7ecff><INPUT id=post_code maxLength=6 size=12 
            name=post_code></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>�ɽ��ڿ�Ŀ��</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><TABLE cellSpacing=0 cellPadding=0 width="95%" 
                        align=right border=0>
                                        <TBODY>
                                          <TR>
                                            <TD vAlign=top width=200 height=23><select name="subposition" size="10" multiple="multiple" id="subposition" style="FONT-SIZE: 12px; WIDTH: 180px; FONT-FAMILY: ����">
                                                <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                                                <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                                                <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                                              </select>                                            </TD>
                                            <TD width=48><P align="center" style="MARGIN-RIGHT: 8px">
                                                <input type="button" name="Submit" value="���&gt;&gt;" onClick="JavaScript:AddItem('subposition', 'tempposition','','mainposition')">
                                                <BR>
                                                <BR>
                                                <input type="button" name="Submit" value="&lt;&lt;ɾ��" onClick="JavaScript:DelItem('tempposition')">
                                            </P></TD>
                                            <TD vAlign=top align=middle width=230><select name="tempposition" size="12" multiple="multiple" id="tempposition" >
                                              </select>
                                                <font color=#000000>
                                                <input name="position" type="hidden" id="position" />
                                                <label></label>
                                              </font></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                        <label></label></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><font color=#ff0000>*</font>רҵ��ʦ��</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input name="zhuanye" type="radio" value="��">
                                      �� </label>
                                        <label>
                                        <input name="zhuanye" type="radio" value="��" checked>
                                          ��</label></TD>
                                  </TR>
                                  <!--<TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><font color=#ff0000>*</font>����ר�ţ�</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input type="radio" name="yinyue" value="��">
                                      �� </label>
                                        <label>
                                        <input name="yinyue" type="radio" value="��" checked>
                                          ��</label></TD>
                                  </TR>-->
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>����������</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <textarea name="miaoshu" cols="40" rows="5" id="miaoshu"></textarea>
                                    </label></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="center"><font color=#ff0000>*</font>���ڿ�ʱ�䣺</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><textarea name="shijian" cols="40" rows="5" id="shijian"></textarea></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>���ڿ�����</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                                        <TBODY>
                                          <TR>
                                            <TD width="15%"><select size=10 name=FirstTeachPlace>
                                                <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                                                <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                                                <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                                            </select></TD>
                                            <TD width="34%"><INPUT onclick=JavaScript:addloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="ѡȡ>>>>" name=FTianJia2>
                                                <FONT 
                  color=#cc0000><BR>
                                                  (ѡ�������Ŀ�㡰ѡȡ��������ӣ�ѡ���Ҳ���Ŀ��<BR>
                                                  ��ɾ��������ɾ��)</FONT><BR>
                                              <INPUT onclick=JavaScript:delloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="<<<<ɾ��" name=FShanChu2>
                                              <BR></TD>
                                            <TD width="51%"><SELECT multiple size=10 
                  name=SecondTeachPlace>
                                              </SELECT>
                                                <INPUT type=hidden 
                  name=teach_place></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right">�ҽ̳ɹ�<br>�ҽ̼���<br>ѧԱ����</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><textarea name="chengguo" cols="40" rows="10" id="chengguo"></textarea></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>нˮҪ��</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><input name="xinshui" type="text" id="xinshui" size="30">                                      
                                      <a href="zifei.html">�鿴�ʷѱ�׼</a></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>�ɸ�����ʽ��</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input name="fangshi" type="radio" value="��������" checked>
                                      ��������
                                      <input type="radio" name="fangshi" value="ѧ������">
                                      ѧ������
                                      <input type="radio" name="fangshi" value="���ϸ���">
                                      ���ϸ���
                                      <input type="radio" name="fangshi" value="С�ศ��">
                                      С�ศ��</label></TD>
                                  </TR>
                                </TBODY>
                              </TABLE>
                            <BR>
                            <BR>
                            <input name="imageField22" style="border:0" type="image" src="images/reg_1_2.gif" alt="��һ��" width="345" height="41" />
                            <input type="hidden" name="acction" value="acction">
                              <BR>
                            <BR>
                            <BR></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
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
