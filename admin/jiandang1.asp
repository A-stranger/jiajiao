<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->

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
    <td width="681" height="26"><div align="center" class="ziti02">��Ա��֤�ѹ���</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="79%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 
	 <tr>
	   <td height="75" colspan="4" align="center" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiandang.asp">
         <label></label>
         <div align="center">
           <label>���������Ա��ţ�
             <input name="id" type="text" id="id" size="10" />
           </label>
           <label> &nbsp;
           <input name="Submit" type="submit" class="button" value="��ѯ" />
           </label>
           ע�� �� 
           �벻Ҫ���� ��T��&nbsp;<br />
         </div>
	     </form>
	     <form action="jiandang.asp" method="post" name="form2" class="ziti03" id="form2">
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
	     </form>	     </td>
	 </tr>
	 <tr>
	   <td width="97" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >��Ա��� </div></td>
        <td width="162" bgcolor="#E8E8E8" class="ziti03"><div align="center">�������ã�Ԫ/�꣩</div></td>
        <td width="183" align="center" bgcolor="#E8E8E8" class="ziti03">������</td>
        <td width="91" bgcolor="#E8E8E8" class="ziti03"><div align="center" >ɾ��</div></td>
        </tr> <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang   order by id desc"
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="4" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">�� �� �� Ϣ��</div>
        </div></td>
        </tr>
		<% 	else %>
		 <% 
	    counts=20											
		rs.pageSize =counts								
		allpages =rs.pageCount								
		page = Request("page")								    
		If not isNumeric(page) then page=1			
		if isEmpty(page) or Cint(page) < 1 then				
			page = 1  
		elseif Cint(page) >= allPages then  				'page ֵ������ҳ��
			page = allPages   
	  	end if
	  	rs.AbsolutePage = page
	    do while not rs.eof and counts>0
	   %>
  
      <tr>
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><a href="jiaoyuan.asp?id=<%= rs("userid") %>" class="top">T<%= rs("userid") %></a></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><%= rs("jiandang") %></div></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("rq") %></span></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><a href="jiandangdel.asp?id=<%= rs("id") %>&amp;userid=<%= id %>" class="top">ɾ��</a></div></td>
        </tr>
       <%
            counts = counts - 1  							'ÿҳ��ʾ������1
			rs.movenext  									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop  						
   %>
    </table>
      <table width="67%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ����"&RS.RecordCount&"����¼ "  
if page = 1 then  											'�����һҳ
	response.write "<font color=darkgray>��ҳ ǰҳ</font>"  
else  														'���ǵ�һҳ
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1 class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&" class='top'><font size=2>ǰҳ</font></a>"  
end if  
if page = allpages then  									'�������һҳ
	response.write "<font color=darkgray> ��ҳ ĩҳ</font>"  
else  														'�������һҳ
	'������������
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&" class='top'><font size=2>ĩҳ</font></a>"  
end if  

response.write " ��"&page&"ҳ ��"&allpages&"ҳ " 		 	'��ʾ��ǰҳ����Ϣ
%>
        </div></td>
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
<%  end if %>

</body>
</html> 
