<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% id=Trim(Request("id")) 
dw=Trim(Request("dw"))
xing=Trim(Request("xing"))
sex=Trim(Request("sex"))
kemu=Trim(Request("kemu"))
xueli=Trim(Request("xueli"))
shenfen=Trim(Request("shenfen"))
tel=Trim(Request("tel"))
quyu=Trim(Request("quyu"))
%>
<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE12 {font-size: 10pt}
-->
</style>
<p>
</p>
<table width="727" height="199" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26"><div align="center" class="ziti02">��Ա����<% If dw<>"" Then %>(<% If dw=1 Then %>��֤��Ա<% End If %> <% If dw=2 Then %>δ��֤��Ա<% End If %> <% If dw=3 Then %>���ѽ�Ա<% End If %> <% If dw=4 Then %>���ǽ�Ա<% End If %><% If dw=5Then %> ��֤��<% End If %><% If dw=6 Then %> ��� <% End If %><% If dw=7 Then %>δ���<% End If %>
      )
          <% End If %>
    </div></td>
  </tr>
  <tr>
    <td height="14" valign="top" bgcolor="#FFFFFF"><div align="center"><a href="jiaoyuan.asp?dw=1" class="top">��֤��Ա</a> <a href="jiaoyuan.asp?dw=2" class="top">δ��֤��Ա</a> <a href="jiaoyuan.asp?dw=3" class="top">���ѽ�Ա</a> <a href="jiaoyuan.asp?dw=4" class="top">���ǽ�Ա</a> <a href="jiaoyuan.asp?dw=5" class="top">��֤��</a> <a href="jiaoyuan.asp?dw=6" class="top">���</a> <a href="jiaoyuan.asp?dw=7" class="top">δ���</a></div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="92%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
	 <tr>
	   <td height="19" colspan="10" bgcolor="#FFFFFF" class="ziti03"><form id="form1" name="form1" method="post" action="jiaoyuan.asp">
	     <label></label>
	     <div align="center">
	       <label>��Ա��ţ�
           <input name="id" type="text" id="id" size="10" />
           </label>
           <label>
          &nbsp;</label>
           ע�⣺�벻Ҫ���� ��T��&nbsp; 
           <table width="78%" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td width="14%" class="ziti03"><label>����:</label></td>
               <td width="23%" class="ziti03"><input name="xing" type="text" id="xing" size="8" /></td>
               <td width="14%" class="ziti03">�Ա�:</td>
               <td width="49%" class="ziti03"><label>
                 <select name="sex" class="button" id="sex">
                   <option selected="selected" value="����">����</option>
                   <option value="��">��</option>
                   <option value="Ů">Ů</option>
                 </select>
              &nbsp;&nbsp;</label></td>
             </tr>
             <tr>
               <td class="ziti03">��Ŀ:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="kemu" 
                        name="kemu">
                   <option value="" 
                          selected="selected">����</option>
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
                          value="<%= rs("title") %>"><%= rs("title") %></option>
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
               </font></td>
               <td class="ziti03">�绰���� :</td>
               <td class="ziti03"><input type="text" name="tel" id="tel" /></td>
             </tr>
             <tr>
               <td class="ziti03">��Ա���:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="shenfen" 
                        name="shenfen">
                   <option value="" 
                          selected="selected">����</option>
                  <option value="1">��ѧ��</option>
                  <option value="2">��ʦ</option>
                  <option value="3">�⼮��ʿ</option>
                  <option value="4">����</option>
                 </select>
               </font></td>
               <td class="ziti03">��ѧ����:</td>
               <td class="ziti03"><font 
                        color="#ffffff">
                 <select class="button" id="quyu" 
                        name="quyu">
                   <option value="" 
                          selected="selected">����</option>
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
                          value="<%= rs("title") %>"><%= rs("title") %></option>
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
               </font>&nbsp;&nbsp;&nbsp; <label>
                 <input name="button" type="submit" class="button" id="button" value="��ʼ��ѯ" />
                 </label></td>
             </tr>
           </table>
	     </div>
	   </form>	     <a href="jiaoyuannew.asp" class="top"></a></td>
	   </tr>
	 <tr>
	   <td width="49" height="20" bgcolor="#E8E8E8" class="ziti03"><div align="center" class="ziti03" >��� </div></td>
        <td width="55" bgcolor="#E8E8E8" class="ziti03"><div align="center">��Ա���� </div></td>
        <td width="84" bgcolor="#E8E8E8" class="ziti03"><div align="center">�Ƿ���ն���</div></td>
        <td width="46" bgcolor="#E8E8E8" class="ziti03"><div align="center">��֤</div></td>
        <td width="47" bgcolor="#E8E8E8" class="ziti03"><div align="center">����</div></td>
        <td width="46" bgcolor="#E8E8E8" class="ziti03"><div align="center">���</div></td>
        <td width="70" bgcolor="#E8E8E8" class="ziti03"><div align="center">����</div></td>
        <td width="75" align="center" bgcolor="#E8E8E8" class="ziti03">�ҽ̼�¼</td>
        <td width="71" bgcolor="#E8E8E8" class="ziti03"><div align="center" >¼��ʱ��</div></td>
        <td width="113" bgcolor="#E8E8E8" class="ziti03"><div align="center" >����Ա����</div></td>
      </tr> <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
if id<>"" then
 strsql="select * from jiaoyuan where id="&id
 else
 if dw=1 then 
strsql="select * from jiaoyuan where renzheng='��֤' order by id desc"
end if
 if dw=2 then 
strsql="select * from jiaoyuan where renzheng='δ��֤' order by id desc"
end if
 if dw=3 then 
strsql="select * from jiaoyuan where fufei='�Ѹ���' order by id desc"
end if
if dw=4 then 
strsql="select * from jiaoyuan where mingxing='��' order by id desc"
end if
if dw=5 then 
strsql="select * from jiaoyuan where images<>'' or images1<>'' or images2<>''  order by id desc"
end if
if dw=6 then 
strsql="select * from jiaoyuan where kongkai='��'  order by id desc"
end if
if dw=7 then 
strsql="select * from jiaoyuan where kongkai='��'  order by id desc"
end if
if dw="" then
if sex=""  then
strsql="select * from jiaoyuan where   tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%'  and  shenfen like '%" & shenfen & "%' order by id desc"
end if
if sex="����"  then
strsql="select * from jiaoyuan where   tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%'  and  shenfen like '%" & shenfen & "%' order by id desc"
end if
if sex<>"����" and sex<>"" then
strsql="select * from jiaoyuan where  sex='" &sex& "' and  tel like '%" & tel & "%'  and  xingming like '%" & xing & "%'  and  quyu like '%" & quyu & "%' and  kemu like '%" & kemu & "%' and    shenfen like '%" & shenfen & "%' order by id desc"
end if
end if
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="10" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
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
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("duanxin") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("renzheng") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("mingxing") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><span style="font-size: 10pt"><%= rs("kongkai") %></span></div></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center"><a href="jiandang.asp?id=<%= rs("id") %>" class="top">�鿴</a></div></td>
        <td align="center" bgcolor="#FFFFFF" class="ziti03"><a href="xjilu.asp?id=<%= rs("id") %>" class="top">�鿴</a></td>
        <td bgcolor="#FFFFFF" class="ziti03"><div align="center" style="font-size: 10pt"><%= rs("intime") %></div></td>
        <td bgcolor="#FFFFFF" ><div align="center" class="ffffff">
          <div align="right"><a href='jiaoyuanshow.asp?id=<%= rs("id") %>&e=<%= dw %>' class="top">�鿴��ϸ</a> / <a href="javascript:if(confirm('ȷ��Ҫɾ����'))location='jiaoyuandel.asp?id=<%= rs("id") %>&dw=<%= dw %> '" class="top">ɾ ��</a></div>
        </div></td>
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
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&dw="&dw&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&dw="&dw&" class='top'><font size=2>ǰҳ</font></a>"  
end if  
if page = allpages then  									'�������һҳ
	response.write "<font color=darkgray> ��ҳ ĩҳ</font>"  
else  														'�������һҳ
	'������������
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&dw="&dw&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&dw="&dw&" class='top'><font size=2>ĩҳ</font></a>"  
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
 






