<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) %>
<% 
button=Trim(Request.Form("button"))
rq=Trim(Request.Form("rq"))
rq2=Trim(Request.Form("rq2"))
rq=cdate(rq)
rq2=cdate(rq2)
if button<>"" then
set rs=server.CreateObject("adodb.recordset")
strsql = "select * from baozheng where intime  between #"&rq&"# and #"&rq2&"# and userid="&id
rs.open strsql,conn,1,3
        he1=0   
	    do while not rs.eof 
		he1=rs("baozheng")+he1
        rs.movenext  									'ָ����һ����¼
		if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop
		rs.close
set rs=nothing
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
    <td width="681" height="26"><div align="center" class="ziti02">��֤�����</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="2" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="baozheng.asp">
         <label></label>
         <div align="center">
           <label>���������Ա��ţ�
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input type="submit" name="Submit" value="��ѯ" />
           </label>
           ע�� �� 
           �벻Ҫ���� ��T��&nbsp;</div>
	     </form></td>
	   </tr>
	 
	 <tr>
	   <td height="37" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03">
       
       <% 
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where id="&id 
	   rs.open strsql,conn,1,1
       if rs.eof and rs.bof then 
	   %>
       <span class="STYLE1">����������ȷ���ڵĽ�Ա���</span>
       <% Else %>
       ��Ա���<span class="STYLE1">T<%= rs("id") %> &nbsp; <%= rs("xingming") %></span>�ı�֤�����      
       &nbsp; <a href="baozhengnew.asp?id=<%= id %>" class="top">��Ӽ�¼</a>
       <% 
	   End If
	   rs.close
	   set rs=nothing
	    %>       </td>
	   </tr>
	 <tr>
	   <td width="325" height="66" valign="top" bgcolor="#FFFFFF" class="ziti03">
       <% if id<>"" then %>
       <br>
       <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
         <tr>
           <td height="33" colspan="3" align="center" class="ziti03">��֤��״��</td>
           </tr>
         <tr>
           <td width="41%" height="33" align="center" class="ziti03">�ɷ�����</td>
           <td width="38%" align="center" class="ziti03">�������</td>
           <td width="21%" align="center" class="ziti03">ɾ��</td>
         </tr><% 	 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from baozheng where userid="&id
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
		he=rs("baozheng")+he
		%>
         <tr>
           <td height="43" align="center" class="ziti03"><%= rs("intime") %></td>
           <td align="center" class="ziti03"><%= rs("baozheng") %></td>
           <td align="center" class="ziti03"><a href="baozhengdel.asp?id=<%= rs("id") %>&userid=<%= id %>" class="top">ɾ��</a></td>
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
	   <td width="346" height="66" colspan="-2" align="left" valign="top" bgcolor="#FFFFFF" class="ziti03"><form name="form2" method="post" action="baozheng.asp">
	     <br>
	     <table width="98%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
           <tr>
             <td height="47" colspan="2" align="center" class="ziti03"><%= e %>��֤��ͳ��</td>
           </tr>
           <tr>
             <td height="33" align="center" class="ziti03"><label>
               
               <input name="rq" type="text" id="rq" value="<%= date() %>" size="10">
               --
               <input name="rq2" type="text" id="rq2" value="<%= date() %>" size="10">
             </label></td>
             <td align="center" class="ziti03"><input name="button" type="submit" class="button" id="button" value="�ύͳ��"></td>
           </tr>
           <tr>
             <td width="61%" height="33" align="center" class="ziti03">ͳ��ʱ���</td>
             <td width="39%" align="center" class="ziti03">ͳ�ƽ��(Ԫ)</td>
           </tr>
           <tr>
             <td height="43" align="center" class="ziti03"><label><%= Trim(Request.Form("rq")) %>--<%= Trim(Request.Form("rq2")) %></label></td>
             <td align="center" class="ziti03"><label><%= he1 %></label></td>
           </tr>
           <tr>
             <td height="43" colspan="2" align="center" class="ziti03"><label>
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
<%
set rs=nothing
conn.close
set conn=nothing 
%>


</body>
</html> 