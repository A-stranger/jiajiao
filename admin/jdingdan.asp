<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
  id=Trim(Request.QueryString("id"))
  if id<>"" then
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from yuyue where id="&id
  rs.open strsql,conn,1,3
  response.Redirect "jdingdan.asp"
   End If 
  %> 

<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {font-size: 9pt; }
-->
</style>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <% 
  userid=Trim(Request.Form("userid"))
   xueyuan=Trim(Request.Form("xueyuan"))
  set rs=server.CreateObject("adodb.recordset")
 if userid<>"" then 
strsql="select * from yuyue where userid='"&userid&"'"
 ElseIf xueyuan<>"" Then
 strsql="select * from yuyue where xueyuan='"&xueyuan&"'"
 else
  strsql="select * from yuyue"
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then %>
  <tr>
    <td colspan="6"><div align="center" class="STYLE1">������Ϣ </div></td>
  </tr>
  <% Else %>
  
  <tr>
    <td height="18" colspan="6" valign="bottom" bgcolor="#CCCCCC"><form name="form1" method="post" action="jdingdan.asp">
        <label></label><label></label>
        <div align="center">
          <label><span class="STYLE3">��Ա��ţ�</span>
          <input name="userid" type="text" id="userid" size="6">
          </label>
          <label>
         &nbsp;
         <input type="submit" name="Submit" value="��ѯ">
          </label>
</div>
    </form>      <form name="form2" method="post" action="jdingdan.asp">
        <label></label><label></label>
        <div align="center">
          <label><span class="STYLE3">�������</span>
 ��          
 <input name="xueyuan" type="text" id="xueyuan" size="6">
          </label>
          <label>
         &nbsp; 
         <input type="submit" name="Submit2" value="��ѯ">
          </label>
</div>
      </form></td>
  </tr>
  <tr>
    <td width="12%" height="21" bgcolor="#66CCCC"><div align="center" class="STYLE3">��Ա���</div></td>
    <td width="15%" bgcolor="#66CCCC"><div align="center" class="STYLE3">������� </div></td>
    <td width="16%" align="center" bgcolor="#66CCCC">״̬</td>
    <td width="19%" align="center" bgcolor="#66CCCC">����</td>
    <td width="19%" bgcolor="#66CCCC"><div align="center" class="STYLE3">����ʱ��</div></td>
    <td width="19%" bgcolor="#66CCCC"><div align="center" class="STYLE3">����Ա����</div></td>
  </tr><% 
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
  do while not rs.eof and counts>0 %>
  <tr>
    <td height="22" bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="jiaoyuanshow.asp?id=<%= rs("userid") %>">T<%= rs("userid") %></a></div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="dingdanshow.asp?id=<%= rs("xueyuan") %>">S<%= rs("xueyuan") %></a></div></td>
    <td align="center" bgcolor="#FFFFFF"><span class="STYLE3"><%= rs("zhuangtai") %></span></td>
    <td align="center" bgcolor="#FFFFFF"><span class="STYLE3"><%= rs("title") %></span></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><%= rs("intime") %></div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE3"><a href="jdingdan-show.asp?id=<%= rs("id") %>">�鿴����</a>/ <a href="jdingdan.asp?id=<%= rs("id") %>" target="_self">ɾ��</a></div></td>
  </tr>
  <% 
  counts = counts - 1 
  rs.movenext  									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		set rs=nothing
conn.close
set conn=nothing%>
  <% End If %>
</table>
<br>
<table width="32%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td height="18" class="ziti03"><div align="right" class="top STYLE3">
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
 







