<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% 
id=Trim(Request("id")) 
idd=Trim(Request("idd"))
xingming=Trim(Request("xingming"))
username=Trim(Request("username"))
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
    <td width="681" height="26"><div align="center" class="ziti02">��Ա��ϸ�ҽ̼�¼</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="101%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="8" bgcolor="#FFFFFF" class="ziti03"><form id="form2" name="form2" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>��Ա��ţ�
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;  
          <input name="Submit" type="submit" class="button" value="��ѯ" />
           </label>
           ע�� �� 
	     �벻Ҫ���� ��T�� </div>
	   </form>	 <form id="form1" name="form1" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>����Ա������ѯ��
           <input name="xingming" type="text" id="xingming" size="10" />
&nbsp;
<input name="buttone" type="submit" class="button" id="buttone" value="��ѯ" />
ע�� �� 
           ����д��ȷ���ڵ�����&nbsp; </label>
	     </div>
	   </form>    <form id="form2" name="form2" method="post" action="jilu.asp">
	     <label></label>
	     <div align="center">
	       <label>ѧԱ��ţ�
           <input name="idd" type="text" id="idd" size="10" />
           </label>
           <label>
          &nbsp;  
          <input name="Submit" type="submit" class="button" value="��ѯ" />
           </label>
           ע�� �� 
	     �벻Ҫ���� ��S�� </div>
	   </form>	 </td>
	 </tr>
	 <tr>
	   <td width="63" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >��Ա��� </div></td>
        <td width="90" align="center" bgcolor="#E8E8E8" class="ziti03">����(ѧԱ���)</td>
        <td width="96" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">�Ͽ�ʱ��</span></td>
        <td width="105" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">�Ͽ�����</span></td>
        <td width="64" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">���񱨳�</span></td>
        <td width="106" align="center" bgcolor="#E8E8E8" class="ziti03"><span class="black9">��ע</span></td>
        <td width="70" bgcolor="#E8E8E8" class="ziti03"><div align="center" >¼��ʱ��</div></td>
        <td width="78" bgcolor="#E8E8E8" class="ziti03"><div align="center" >����Ա����</div></td>
      </tr> <% 	 
dim counts
if xingming<>"" then
	   set rs=server.CreateObject("adodb.recordset")
	   strsql="select * from jiaoyuan where xingming='"&xingming&"'" 
	   rs.open strsql,conn,1,1
	   id=rs("id")
	   rs.close
	   set rs=nothing
	   end if

set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jilu where userid='"&id&"'"
end if
if username<>"" then
set rs1=server.CreateObject("adodb.recordset")
	   strsql="select * from dingdan where username='"&username&"'" 
	   rs1.open strsql,conn,1,1
	   idd=rs1("id")
	   rs1.close
	   set rs1=nothing
end if
if idd<>"" then
strsql="select * from jilu where dingdan="&idd
end if
if idd="" and id=""  and username=""  then
strsql="select * from jilu order by id desc"
end if
  
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="8" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
          <div align="center">�� �� �� ¼��</div>
        </div></td>
        </tr>
		<% 	else %>
		 <% 
	    counts=30											
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
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><a href="dingdanshow.asp?id=<%= rs("dingdan") %>" class="top">S<%= rs("dingdan") %></a></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("shijian") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("neirong") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("baochou") %></span></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><span style="font-size: 10pt"><%= rs("beizhu") %></span></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff"><a href="javascript:if(confirm('ȷ��Ҫɾ����'))location='jiludel.asp?id=<%= rs("id") %> '" class="top">ɾ ��</a></div></td>
      </tr>
       <%
            counts = counts - 1  							'ÿҳ��ʾ������1
			rs.movenext  									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop  						
   %>
    </table>
      <table width="73%" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
      <td height="18" class="ziti03"><div align="right" class="top">
          <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ����"&RS.RecordCount&"����¼ "  
if page = 1 then  											'�����һҳ
	response.write "<font color=darkgray>��ҳ ǰҳ</font>"  
else  														'���ǵ�һҳ
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&id="&id&"&idd="&idd&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&id="&id&"&idd="&idd&" class='top'><font size=2>ǰҳ</font></a>"  
end if  
if page = allpages then  									'�������һҳ
	response.write "<font color=darkgray> ��ҳ ĩҳ</font>"  
else  														'�������һҳ
	'������������
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&id="&id&"&idd="&idd&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&id="&id&"&idd="&idd&" class='top'><font size=2>ĩҳ</font></a>"  
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