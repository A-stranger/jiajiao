<!--#include file="conn.asp"-->
<%
if session("username")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='logoin.asp';</script>"
response.End
end if
%>
<% id=session("id") 
acction=Trim(Request.Form("acction"))
if acction<>"" Then

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from jiaoyuan where id="&id,conn,1,3
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
if web<>banquan then
  response.End()
end if
rs("miaoshu")=trim(request.form("miaoshu"))
rs("quyu")=trim(request.form("teach_place"))
rs("chengguo")=trim(request.form("chengguo"))
rs("xinshui")=trim(request.form("xinshui"))
rs("fangshi")=trim(request.form("fangshi"))
rs("shijian")=trim(request.form("shijian"))
rs("dengji")=trim(request.form("technical_level"))
rs("xuexiao")=trim(request.form("teach_school"))
rs("jiaoling")=trim(request.form("teach_age"))
rs("xueke")=trim(request.form("teach_subject"))
rs("leibie")=trim(request.form("important_level"))

rs("shenhe")="��"
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert(' �޸ĳɹ�,��ȴ����,��ˢ�£�');window.location.href='guanli_jianli.asp';</script>"
response.End

end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>��Ա����-<%= title %></title>
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
.STYLE1 {color: #cc0000}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<SCRIPT src="moveloc.js" type=text/javascript></SCRIPT>
<LINK 
href="images/style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-TOP: 10px;
	BACKGROUND-IMAGE: url();
	MARGIN-BOTTOM: 20px;
	background-color: #339933;
}
.STYLE1 {color: #cc0000}
</STYLE>

<META content="MSHTML 6.00.2900.3132" name=GENERATOR></HEAD>
<BODY>


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
	
 }
  theForm.position.value=GetItemvalue("tempposition");

if(document.register.telephone.value=="")
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
     else if(document.register.shijian.value=="")
 {
	 alert("������д�ɽ���ʱ�䣡")
	 document.register.post_code.focus();
	 return (false);
  }
  else if(document.register.position.value=="")
 {
	 alert("��ѡ�����Ŀɽ��ڿ�Ŀ��");
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
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 
background=images/top_2_1.gif></TD>
    <TD vAlign=top bgColor=#ffffff><TABLE width="948" border=0 align=center cellPadding=0 cellSpacing=0 bgColor=#ffffff>
      <TBODY>
        
        <TR>
          <TD vAlign=top align=middle width=948><TABLE width="98%" height=60 
      border=0 align="center" cellPadding=0 cellSpacing=1 bgColor=#cccccc>
              <TBODY>
                <TR>
                  <TD vAlign=center background=images/beijin1.gif 
          bgColor=#f3f3f3><DIV align=center><SPAN class=buleo2_link_9>��ӭ��</SPAN><SPAN 
            class=red_10><%= session("username") %></SPAN>��<SPAN 
            class=buleo2_link_9>���Ľ�Ա�����</SPAN><SPAN 
            class=red_10>T<%= session("id") %></SPAN><SPAN 
            class=buleo2_link_9>,���ļ����ѱ������</SPAN><SPAN 
            class=red_link_10><%= session("cishu") %></SPAN><SPAN 
            class=buleo2_link_9>�Σ�</SPAN><BR>
                          <SPAN 
            class=buleo2_link_9>Ϊ�˱�֤���ĸ������ϲ��������޸Ļ���ȡ����������뿪ǰ�˳����ر���������ڣ�</SPAN> <BR>
                  </DIV></TD>
                </TR><%
				 if web="" then
response.End()
end if %>
              </TBODY>
            </TABLE>
          <BR>
            <BR>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD vAlign=top width=169><!--#include file="left.asp"-->                    </TD>
                    <TD vAlign=top width=10><TABLE width=1 height="650" border=0 align=center cellPadding=0 cellSpacing=0 
            bgColor=#3366cc>
                        <TBODY>
                          <TR>
                            <TD width="1" height=400></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                    <TD width="778" align=left vAlign=top bgcolor="#ffffff"><TABLE width=100% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD width="96%" align=left valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><strong><img src="images/my_1_4.gif" width="142" height="58" align="middle"><strong><span class="t">&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;�� �� �� ��</span></strong></strong></strong></TD>
                            <TD width="4%" 
            height=56 align=right valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><span class="t"><img src="images/my_1_3.gif" width="12" height="58"></span></strong></TD>
                          </TR>
                        </TBODY>
                      </TABLE>><%
				 if banquan="" then
response.End()
end if %>
                        <FORM name=register onSubmit="return Juge(this)" 
action=guanli_jianli.asp method=post>
                          <TABLE cellSpacing=0 cellPadding=0 width=95% align=center bgColor=#ffffff 
border=0>
                            <TBODY>
                              <TR>
                                <TD width="742" align=left vAlign=top><br>
                                      <TABLE cellSpacing=2 cellPadding=0 width="101%" align=center border=0>
                                        <TBODY>
                                          <TR bgColor=#d7ecff>
                                            <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>����ס����</DIV></TD>
                                            <%
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from jiaoyuan where id="&id
rs.open strsql,conn,1,3 
%>
                                            <TD><font 
                        color=#ffffff>
                                              <select class=input_text id=address1 
                        name=address1>
                                                <option value="<%= rs("shenghuo") %>" 
                          selected><%= rs("shenghuo") %></option>
                                                <%	
					  dw1="����"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                <% 
						  if rsf.eof and rsf.bof then 
						  Else
						  do while not rsf.eof
						  %>
                                                <option 
                          value="<%= rsf("title") %>"><%= rsf("title") %></option>
                                                <% 
						 rsf.movenext
			             if rsf.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                <% 
						 End If 
						 rsf.close
		                 set rsf=nothing
						 %>
                                              </select>
                                            </font></TD>
                                            <TD bgColor=#d7ecff><DIV align=right>��ͥס��: </DIV></TD>
                                            <TD><font 
                        color=#ffffff>
                                              <select class=input_text id=address2 
                        name=address2>
                                                <option 
                          selected value="<%= rs("jiating") %>"><%= rs("jiating") %></option>
                                                <%	
					  dw1="����"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                <% 
						  if rsf.eof and rsf.bof then 
						  Else
						  do while not rsf.eof
						  %>
                                                <option 
                          value=<%= rsf("title") %>><%= rsf("title") %></option>
                                                <% 
						 rsf.movenext
			             if rsf.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                <% 
						 End If 
						 rsf.close
		                 set rsf=nothing
						 %>
                                              </select>
                                            </font></TD>
                                          </TR>
                                          <TR bgColor=#eef7ff>
                                            <TD bgColor=#eef7ff height=25><DIV align=right><FONT color=#ff0000>*</FONT>�绰��</DIV></TD>
                                            <TD><DIV align=left><SPAN 
            class=buleo2_link_9>����������ע
                                              ��(լ)(У)��
                                              <input maxlength=80 size=30 name=telephone value="<%= rs("tel") %>">
                                            </SPAN></DIV></TD>
                                            <TD bgColor=#eef7ff><DIV align=right>�ֻ���</DIV></TD>
                                            <TD><INPUT maxLength=32 size=15 name=mobile value="<%= rs("shouji") %>"></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD width="15%" bgColor=#d7ecff height=25><DIV align=right>MSN��</DIV></TD>
                                            <TD width="36%"><DIV align=left>
                                                <INPUT id=msn name=msn value="<%= rs("msn") %>">
                                            </DIV></TD>
                                            <TD width="10%" bgColor=#d7ecff><DIV align=right>QQ:</DIV></TD>
                                            <TD width="39%"><DIV align=left>
                                                <INPUT id=qq name=qq value="<%= rs("qq") %>">
                                            </DIV></TD>
                                          </TR>
                                          <TR bgColor=#eef7ff>
                                            <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>E_mail��</DIV></TD>
                                            <TD colSpan=3><DIV align=left>
                                                <INPUT maxLength=50 size=28 name=e_mail value="<%= rs("mail") %>">
                                              (<FONT 
            color=#cc0000>Ϊ֪ͨ�������ļҽ̼��һ����룬��������д</FONT>)</DIV></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><DIV align=right><FONT color=#ff0000>*</FONT>ͨ�ŵ�ַ�� <BR>
                                            </DIV></TD>
                                            <TD bgColor=#d7ecff><INPUT id=address3 name=address3 value="<%= rs("tongxin") %>">
                                                <BR>
                                                <SPAN 
            class=o_link_9>�Է������Ǹ���������ؽ����ż�Э���</SPAN></TD>
                                            <TD bgColor=#d7ecff><DIV align=right><FONT color=#ff0000>*</FONT>�ʱࣺ</DIV></TD>
                                            <TD bgColor=#d7ecff><INPUT id=post_code maxLength=6 size=12 
            name=post_code value="<%= rs("youbian") %>"></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>�ɽ���ʱ�䣺</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><INPUT id=shijian name=shijian value="<%= rs("shijian") %>"></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#EEF7FF height=50><div align="right"><FONT color=#ff0000>*</FONT>�ɽ��ڿ�Ŀ��</div></TD>
                                            <TD colspan="3" bgColor=#EEF7FF><TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                                                <TBODY>
                                                  <TR>
                                                    <TD height="157"><TABLE cellSpacing=0 cellPadding=0 width="95%" 
                        align=right border=0>
                                                        <TBODY>
                                                          <TR>
                                                            <TD vAlign=top width=200 height=23><select name="subposition" size="10" multiple="multiple" id="subposition" style="FONT-SIZE: 12px; WIDTH: 180px; FONT-FAMILY: ����">
                                                                <%	
					  dw1="ѧ��"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                                <% 
						  if rsf.eof and rsf.bof then 
						  Else
						  do while not rsf.eof
						  %>
                                                              <option 
                          value="<%= rsf("title") %>"><%= rsf("title") %></option>
                                                              <% 
						 rsf.movenext
			             if rsf.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                              <% 
						 End If 
						 rsf.close
		                 set rsf=nothing
						 %>
                                                              </select>
                                                            </TD>
                                                            <TD width=48><P align="center" style="MARGIN-RIGHT: 8px">
                                                                <input type="button" name="Submit" value="���&gt;&gt;" onClick="JavaScript:AddItem('subposition', 'tempposition','','mainposition')">
                                                                <BR>
                                                                <BR>
                                                                <input type="button" name="Submit" value="&lt;&lt;ɾ��" onClick="JavaScript:DelItem('tempposition')">
                                                            </P></TD>
                                                            <TD vAlign=top align=middle width=230><font color=#000000>
                                                              <select multiple name="tempposition" id="tempposition" size=10>
                                                                <%
														    hire_position=rs("kemu")
															
															
															  pstring=split(hire_position,",")
															  for i=0 to ubound(pstring)
															   mainposition_name=""
															   subposition_name=""
															   position=trim(pstring(i))
															 
															      
															       response.write "<OPTION value="&position&">"&position&"</option>"
															      
															    
															  
															  next
															 
															
														   %>
                                                              </select>
                                                              <font color=#000000>
                                                              <input name="position" type="hidden" id="position" />
                                                              </font>
                                                              <label></label>
                                                            </font></TD>
                                                          </TR>
                                                        </TBODY>
                                                      </TABLE>
                                                        <BR>
                                                        <label></label></TD>
                                                  </TR>
                                                </TBODY>
                                            </TABLE></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right"><font color=#ff0000>*</font>����ר�ţ�</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><label>
                                              <input type="radio" name="yinyue" value="��" <% If rs("yinyue")="��" Then %>checked <% End If %>>
                                              �� </label>
                                                <label>
                                                <input name="yinyue" type="radio" value="��" <% If rs("yinyue")="��"Then %>checked <% End If %>>
                                                  ��</label></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>����������</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><label>
                                              <textarea name="miaoshu" cols="40" rows="5" id="miaoshu"><%= rs("miaoshu") %></textarea>
                                            </label></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>���ڿ�����</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><TABLE cellSpacing=0 cellPadding=3 width="95%" border=0>
                                                <TBODY>
                                                  <TR>
                                                    <TD width="15%"><select size=10 name=FirstTeachPlace>
                                                        <%	
					  dw1="����"				
set rsf=server.CreateObject("adodb.recordset")
rsf.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                                                        <% 
						  if rsf.eof and rsf.bof then 
						  Else
						  do while not rsf.eof
						  %>
                                                      <option 
                          value="<%= rsf("title") %>"><%= rsf("title") %></option>
                                                      <% 
						 rsf.movenext
			             if rsf.eof then exit do  						
	  	                    loop  
						  
						 %>
                                                      <% 
						 End If 
						 rsf.close
		                 set rsf=nothing
						 %>
                                                    </select></TD>
                                                    <TD width="47%"><INPUT onclick=JavaScript:addloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="ѡȡ>>>>" name=FTianJia2>
                                                        <FONT 
                  color=#cc0000><BR>
                                                          (ѡ�������Ŀ�㡰ѡȡ��������ӣ�ѡ���Ҳ���Ŀ��<BR>
                                                          ��ɾ��������ɾ��)</FONT><BR>
                                                      <INPUT onclick=JavaScript:delloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="<<<<ɾ��" name=FShanChu2>
                                                      <BR></TD>
                                                    <TD width="38%"><SELECT multiple size=10 
                  name=SecondTeachPlace>
                                                        <%
														    hire_position1=rs("quyu")
															
															
															  pstring1=split(hire_position1,",")
															  for i=0 to ubound(pstring1)
															   mainposition_name1=""
															   subposition_name1=""
															   position1=trim(pstring1(i))
															 
															      
															       response.write "<OPTION value="&position1&">"&position1&"</option>"
															      
															    
															  
															  next
															 
															
														   %>
                                                      </SELECT>
                                                        <INPUT input name="teach_place" type="hidden" id="teach_place" ></TD>
                                                  </TR>
                                                </TBODY>
                                            </TABLE></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right">�ҽ̳ɹ���</div></TD>
                                            <TD colspan="3" valign="middle" bgColor=#d7ecff><textarea name="chengguo" cols="40" rows="10" id="chengguo"><%= rs("chengguo") %></textarea>
                                                <span class="STYLE1">�ҽ̼�����ѧԱ����</span></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>

                                            <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>нˮҪ��</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><input name="xinshui" type="text" id="xinshui" size="30" value="<%= rs("xinshui") %>"></TD>
                                          </TR>
                                          <TR bgColor=#d7ecff>
                                            <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>�ɸ�����ʽ��</div></TD>
                                            <TD colspan="3" bgColor=#d7ecff><label>
                                              <input name="fangshi" type="radio" value="��������" 
						  <% If rs("fangshi")="��������" Then %>checked <% End If %>>
                                              ��������
                                              <input type="radio" name="fangshi" value="ѧ������" <% If rs("fangshi")="ѧ������"  Then %>checked <% End If %>>
                                              ѧ������
                                              <input type="radio" name="fangshi" value="���ϸ���" <% If rs("fangshi")="���ϸ���"  Then %>checked <% End If %>>
                                              ���ϸ���</label></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                    <p align="center">
                                        <INPUT type=submit value=�����ᡡ������ name=Submit2>
                                        <input type="hidden" name="acction" value="acction">
                                        <span class="STYLE1">ע��:�޸�֮��Ҫ������˺������ʾ,���һ����û��ͨ��,���µ籾����. </span></p></TD></TR>
                            </TBODY>
                          </TABLE>
                        </form></TD>
                  </TR>
                </TBODY>
              </TABLE>
            <BR>
            <BR>
            <BR></TD>
          </TR>
        <TR>
          <TD><DIV align=center> </SPAN></DIV></TD>
          </TR>
      </TBODY>
    </TABLE></TD>
    <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD></TR></TBODY></TABLE>
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
