<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) 
xingming=Trim(Request.Form("xingming"))
%>
<% 
button=Trim(Request.Form("button"))
if button<>"" then
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang"
rs.open strsql,conn,1,3
rs.addnew
rs("userid")=id
rs("rq")=trim(request.form("rq"))
rs("jiandang")=trim(request.form("jiandang"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     ��ӳɹ���');window.location.href='jiandang.asp?id="&id&"';</script>"
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
    <td width="681" height="26"><div align="center" class="ziti02">��֤�ѹ���</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiandang.asp">
         <label></label>
         <div align="center">
           <label>���������Ա��ţ�
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input name="Submit" type="submit" class="button" value="��ѯ" />
           </label>
           ע�� �� 
           �벻Ҫ���� ��T��&nbsp;</div>
	     </form><form action="jiandang.asp" method="post" name="form2" class="ziti03" id="form2">
	       ����Ա������ѯ��
           <label>
           <input name="xingming" type="text" id="xingming" size="10" />
           </label>
	       <label>
	       &nbsp;
	       <input name="buttone" type="submit" class="button" id="buttone" value="��ѯ" />
	       </label>
	     ע�� �� 
           ����д��ȷ���ڵ�����&nbsp;
	     </form></td>
	   </tr>
	 
	 <tr>
	   <td height="37" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03">
       
       <% 
	   if xingming<>"" then
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where xingming='"&xingming&"'" 
	   rs.open strsql,conn,1,1
	   id=rs("id")
	   rs.close
	   set rs=nothing
	   end if
	   
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where id="&id 
	   rs.open strsql,conn,1,1
       if rs.eof and rs.bof then 
	   %>
       <span class="STYLE1">����������ȷ���ڵĽ�Ա��Ż�����</span>
       <% Else %>
       ��Ա���<span class="STYLE1">T<%= rs("id") %> &nbsp; <%= rs("xingming") %></span>����֤�ѹ���<br />
       �鿴�ý�Ա: <a href="yufu.asp?id=<%= id %>" class="top">&nbsp; Ԥ����</a>
       <a href="zhongjie.asp?id=<%= id %>" class="top">&nbsp;&nbsp; �н��</a>      
       <% 
	   End If
	   rs.close
	   set rs=nothing
	    %>       </td>
	   </tr>
	 <tr>
	   <td width="96%" height="66" valign="top" bgcolor="#FFFFFF" class="ziti03">
       <% if id<>"" then %>
       <br>
      <form name="form2" method="post" action="jiandang.asp">
	   
	     <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
           <tr>
             <td height="47" colspan="2" align="center" class="ziti03">�����֤��</td>
           </tr>
           <tr>
             <td width="61%" height="33" align="center" class="ziti03">������</td>
             <td width="39%" align="center" class="ziti03">��������</td>
           </tr>
           <tr>
             <td height="43" align="center" class="ziti03">
             <%
			  n=year(date()) 
			 y=month(date())
			 r=day(date())
			 n1=n+1
			 %>
             <label>
               <input name="rq" type="text" id="rq" value="<%= n %>.<%= y %>.<%= r %>-<%= n1 %>.<%= y %>.<%= r %>" size="25">
             </label></td>
             <td align="center" class="ziti03"><label>
               <input name="jiandang" type="text" id="jiandang" size="10">
             Ԫ/��</label></td>
           </tr>
           <tr>
             <td height="43" colspan="2" align="center" class="ziti03"><label>
               <input name="button" type="submit" class="button" id="button" value="�ύ���">
               <input name="id" type="hidden" id="id" value="<%= id %>">
             </label></td>
           </tr>
         </table>
             
	   </form>	   
       <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
         <tr>
           <td height="33" colspan="3" align="center" class="ziti03">��֤��״��</td>
           </tr>
         <tr>
           <td width="41%" height="33" align="center" class="ziti03">������</td>
           <td width="38%" align="center" class="ziti03">�������ã�Ԫ/�꣩</td>
           <td width="21%" align="center" class="ziti03">ɾ��</td>
         </tr><% 	 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang where userid="&id
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="3" bgcolor="#FFFFFF" class="ziti03"><div align="center" class="STYLE1">
          <div align="center">�� �� �� ¼��</div>
        </div></td>
        </tr>
		<% 	else %>
		<% 	he=0   
	    do while not rs.eof 
		he=rs("jiandang")+he
		%>
         <tr>
           <td height="43" align="center" class="ziti03"><%= rs("rq") %></td>
           <td align="center" class="ziti03"><%= rs("jiandang") %></td>
           <td align="center" class="ziti03"><a href="jiandangdel.asp?id=<%= rs("id") %>&userid=<%= id %>" class="top">ɾ��</a></td>
         </tr>
         <% 
		 rs.movenext  									'ָ����һ����¼
		if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop
		end if
		  %>
         <tr>
           <td height="43" colspan="3" align="center" class="ziti03">�ϼƣ�<%= he %>Ԫ</td>
           </tr>
       </table>
       <br>
       <% End If %></td>
	   
	 </tr>
    </table>
      <br /></td>
  </tr>
</table>
<%
set rs=nothing
conn.close
set conn=nothing 
%>


</body>
</html> 