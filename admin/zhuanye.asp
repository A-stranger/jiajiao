<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request.Form("id")) %>
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
    <td width="681" height="26"><div align="center" class="ziti02">רҵ��Ա����</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="85%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="5" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="zhuanye.asp">
	     <label></label>
	     <div align="center">
	       <label>��Ա��ţ�
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;  
          <input type="submit" name="Submit" value="��ѯ" />
           </label>
           ע�� �� 
	     �벻Ҫ���� ��T�� </div>
	   </form>	     <a href="jiaoyuannew.asp" class="top"></a></td>
	   </tr>
	 <tr>
	   <td width="103" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >��Ա��� </div></td>
        <td width="201" bgcolor="#E8E8E8" class="ziti03"><div align="center">��Ա���� </div></td>
        <td width="140" bgcolor="#E8E8E8" class="ziti03"><div align="center">��֤</div></td>
        <td width="140" bgcolor="#E8E8E8" class="ziti03"><div align="center" >¼��ʱ��</div></td>
        <td width="130" bgcolor="#E8E8E8" class="ziti03"><div align="center" >����Ա����</div></td>
      </tr> <% 	 
dim counts
dw="��"
set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jiaoyuan where zhunaye='"&dw&"' and id="&id
 else
strsql="select * from jiaoyuan where zhunaye='"&dw&"' order by id desc"
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="5" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">�� �� �� Ա��</div>
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
        <td height="27" bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt">T<%= rs("id") %></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("xingming") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("renzheng") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href='jiaoyuanshow.asp?id=<%= rs("id") %>' class="top">�鿴��ϸ </a>/<a href="javascript:if(confirm('ȷ��Ҫɾ����'))location='jiaoyuandel.asp?id=<%= rs("id") %> '" class="top">ɾ ��</a></div></td>
      </tr>
       <%
            counts = counts - 1  							'ÿҳ��ʾ������1
			rs.movenext  									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop  						
   %>
    </table>
      <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ����"&RS.RecordCount&"����Ա "  
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








