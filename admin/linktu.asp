
<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<link href="css.css" rel="stylesheet" type="text/css">
<!--#include file="conn.asp"-->
<% 
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from linktu  order by linktu_id desc",conn,1,3 
counts=15											
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
	    
%>
</body>
<style type="text/css">
<!--
.STYLE1 {	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
-->
</style>
<table width="760" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td height="26"><div align="center" class="ziti02">ͼƬ����</div></td>
  </tr>
  <tr>
    <td height="79" bgcolor="#FFFFFF">����������������
      <table width="72%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
          
          <tr>
            <td height="20" colspan="3" bgcolor="#FFFFFF"><a href="linktunew.asp" class="top">����µ�����</a></td>
          </tr>
		  <% if rs.eof and rs.bof then %>
          <tr>
            <td height="20" colspan="3" bgcolor="#FFFFFF"><div align="center" class="STYLE1">�� �� ͼ Ƭ �� �ӣ�</div></td>
          </tr>
          <% 
		response.End()
		end if
		%>
          <tr>
            <td width="84" height="20" bgcolor="#FFFFFF" class="ziti03"><div align="center" >������ַ��</div></td>
            <td width="293" bgcolor="#FFFFFF" class="ziti03"><div align="center">����ͼƬ</div></td>
            <td width="165" bgcolor="#FFFFFF" class="ziti03"><div align="center">����Ա����</div></td>
          </tr>
          <% do while not rs.eof and counts>0 %>
          <tr>
            <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("linktu_url") %></div></td>
            <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt">
					
<img src="showimg04.asp?id=<%=rs("linktu_id")%>">
									
			</span></div></td>
            <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href='linktuedit.asp?id=<%= rs("linktu_id") %>' class="top">�޸�</a>/<a href="javascript:if(confirm('ȷ��Ҫɾ����'))location='linktudel.asp?id=<%= rs("linktu_id") %> '" class="top">ɾ��</a></div></td>
          </tr>
          <%
            counts = counts - 1  							
			rs.movenext  									
			if rs.eof then exit do  						
	  	    loop 
          %>
      </table>
      <table width="72%" border="0" align="center" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="18" class="ziti03"><div align="right" class="top">
              <%
response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ����"&RS.RecordCount&"������"  
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
</html>