<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
e=Trim(Request.QueryString("e"))
id=Trim(Request.QueryString("id")) 
d=Trim(Request.Form("d"))
d1=Trim(Request.Form("d1"))
dw=Trim(Request.Form("dw"))
dw1=Trim(Request.QueryString("dw1"))
dw2=Trim(Request.QueryString("dw2"))
dw3=Trim(Request.QueryString("dw3"))
w1=Trim(Request.Form("w1"))
w2=Trim(Request.Form("w2"))
w22=Trim(Request.Form("w22"))
if dw<>"" Then

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from jiaoyuan where id="&dw,conn,1,3
rs("xingming")=trim(request.form("real_name"))
rs("sex")=trim(request.form("gender"))
rs("shengr")=trim(request.form("birthday"))
rs("zhuanye")=trim(request.form("major"))
rs("xueli")=trim(request.form("educational_level"))

rs("shenfenzheng")=trim(request.form("idcard"))
rs("shengfen")=trim(request.form("native_place"))
rs("gongzuo")=trim(request.form("identity"))
rs("daxue")=trim(request.form("school"))
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
rs("kemu")=trim(request.form("MyFirstJob"))
rs("yinyue")=trim(request.form("yinyue"))
rs("zhunaye")=trim(request.form("zhuanye"))
rs("miaoshu")=trim(request.form("miaoshu"))
rs("quyu")=trim(request.form("quyu"))
rs("chengguo")=trim(request.form("chengguo"))
rs("xinshui")=trim(request.form("xinshui"))
rs("fangshi")=trim(request.form("fangshi"))

rs("dengji")=trim(request.form("technical_level"))
rs("xuexiao")=trim(request.form("teach_school"))
rs("jiaoling")=trim(request.form("teach_age"))
rs("xueke")=trim(request.form("teach_subject"))
rs("leibie")=trim(request.form("important_level"))


rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('�����ɹ���');history.go(-1);</script>"
response.End

end if
if dw1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&dw1
  rs.open strsql,conn,1,3
  rs("images")=""
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if dw2<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&dw2
  rs.open strsql,conn,1,3
  rs("images1")=""
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if dw3<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&dw3
  rs.open strsql,conn,1,3
  rs("images2")=""
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if


if d<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d
  rs.open strsql,conn,1,3
  rs("renzheng")="��֤"
  rs("renzhengtime")=date()
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
chexiao=Trim(Request.Form("chexiao"))
che=Trim(Request.Form("che"))

if d1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d1
  rs.open strsql,conn,1,3
  rs("mingxing")="��"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if chexiao<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&che
  rs.open strsql,conn,1,3
  rs("mingxing")="��"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if

if w1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&w1
  rs.open strsql,conn,1,3
  rs("kongkai")="��"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if w22<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&w22
  rs.open strsql,conn,1,3
  rs("fufei")="�Ѹ���"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if
if w2<>"" then 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiaoyuan where id="&w2
  rs.open strsql,conn,1,3
  rs("kongkai")="��"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     �����ɹ���');history.go(-1);</script>"
end if

 %>
<%

 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        ��Ա��ϸ </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
     <form id="form2" name="form2" method="post" action="jiaoyuanshow.asp"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">��Ա��ţ�</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("id") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" class="ziti03"><div align="right">�û�����</div></td>
            <td width="73%" bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("username") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">������</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
                <input name="real_name" type="text" id="real_name" value="<%= rs("xingming") %>" />
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">�Ա�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input type="radio" checked="checked" value="��" name="gender"  <% If rs("sex")="��" Then %>checked <% End If %> />
��
<input type="radio" value="Ů" name="gender" <% If rs("sex")="Ů" Then %>checked <% End If %> />
Ů</div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#eeeeee" class="ziti03"><div align="right">������ݣ�</div></td>
            <td bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="birthday" type="text" id="birthday" value="<%= rs("shengr") %>" />
            </span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">רҵ��</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="major" id="major22" value="<%= rs("zhuanye") %>" size="18" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">Ŀǰѧ���� </div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
              <select id="select2" size="1" name="educational_level">
                <option 
               selected="selected" value="<%= rs("xueli") %>" ><%= rs("xueli") %></option>
			  
                <option value="��ר����">��ר����</option>
                <option value="��ר�ڶ�">��ר�ڶ�</option>
                <option value="��ר��ҵ">��ר��ҵ</option>
                <option value="�����ڶ�">�����ڶ�</option>
                <option value="���Ʊ�ҵ">���Ʊ�ҵ</option>
                <option value="˶ʿ�ڶ�">˶ʿ�ڶ�</option>
                <option value="˶ʿ��ҵ">˶ʿ��ҵ</option>
                <option value="��ʿ�ڶ�">��ʿ�ڶ�</option>
                <option 
            value="��ʿ��ҵ">��ʿ��ҵ</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">���֤/���գ�</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="idcard" id="idcard22" value="<%= rs("shenfenzheng") %>" size="30" maxlength="40" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">����/��ѧ���ң�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="select18" size="1" name="native_place">
                <option value="<%= rs("shengfen") %>" 
              selected="selected"><%= rs("shengfen") %></option>
                <option value="">--------����----</option>
                <option value="���">���</option>
                <option value="̨��">̨��</option>
                <option 
              value="����">����</option>
                <option value="�ձ�">�ձ�</option>
                <option 
              value="����">����</option>
                <option value="ӡ��">ӡ��</option>
                <option 
              value="̩��">̩��</option>
                <option value="����">����</option>
                <option 
              value="��ɫ��">��ɫ��</option>
                <option value="������">������</option>
                <option 
              value="�¼���">�¼���</option>
                <option value="���ɱ�">���ɱ�</option>
                <option 
              value="��������">��������</option>
                <option value="��³����">��³����</option>
                <option 
              value="ӡ��������">ӡ��������</option>
                <option value="ɳ�ذ�����">ɳ�ذ�����</option>
                <option value="������˹̹">������˹̹</option>
                <option 
              value="������˹̹">������˹̹</option>
                <option value="������˹̹">������˹̹</option>
                <option value="���ȱ��˹̹">���ȱ��˹̹</option>
                <option 
              value="������˹˹̹">������˹˹̹</option>
                <option 
              value="���������޹��ң�">���������޹��ң�</option>
                <option 
              value="">--------ŷ��----</option>
                <option value="Ӣ��">Ӣ��</option>
                <option value="����">����</option>
                <option value="�¹�">�¹�</option>
                <option 
              value="������">������</option>
                <option value="����˹">����˹</option>
                <option 
              value="�ڿ���">�ڿ���</option>
                <option value="������">������</option>
                <option 
              value="�׶���˹">�׶���˹</option>
                <option value="Ħ������">Ħ������</option>
                <option 
              value="��ɳ����">��ɳ����</option>
                <option value="����ά��">����ά��</option>
                <option 
              value="��ʿ">��ʿ</option>
                <option value="����">����</option>
                <option 
              value="Ų��">Ų��</option>
                <option value="���">���</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="�ݿ�">�ݿ�</option>
                <option value="ϣ��">ϣ��</option>
                <option 
              value="������">������</option>
                <option value="������">������</option>
                <option 
              value="�����">�����</option>
                <option value="������">������</option>
                <option 
              value="�µ���">�µ���</option>
                <option value="����ʱ">����ʱ</option>
                <option 
              value="¬ɭ��">¬ɭ��</option>
                <option value="�����">�����</option>
                <option 
              value="���޵���">���޵���</option>
                <option value="˹�工��">˹�工��</option>
                <option 
              value="��˹����">��˹����</option>
                <option value="��������">��������</option>
                <option 
              value="��������">��������</option>
                <option value="����������">����������</option>
                <option value="������ŷ�޹��ң�">������ŷ�޹��ң�</option>
                <option 
              value="">--------����----</option>
                <option value="����">����</option>
                <option value="���ô�">���ô�</option>
                <option value="������">������</option>
                <option value="ī����">ī����</option>
                <option value="������">������</option>
                <option value="Σ������">Σ������</option>
                <option value="�鶼��˹">�鶼��˹</option>
                <option value="�������">�������</option>
                <option value="�Ű�">�Ű�</option>
                <option value="����">����</option>
                <option value="�����">�����</option>
                <option value="�������">�������</option>
                <option value="����">����</option>
                <option value="��³">��³</option>
                <option value="����">����</option>
                <option 
              value="������">������</option>
                <option value="������">������</option>
                <option 
              value="����͢">����͢</option>
                <option value="������">������</option>
                <option 
              value="ί������">ί������</option>
                <option value="���ױ���">���ױ���</option>
                <option 
              value="��϶��">��϶��</option>
                <option value="����ά��">����ά��</option>
                <option 
              value="���������޹��ң�">���������޹��ң�</option>
                <option 
              value="">--------������----</option>
                <option value="������">������</option>
                <option value="�Ĵ�����">�Ĵ�����</option>
                <option 
              value="�Ͳ����¼�����">�Ͳ����¼�����</option>
                <option 
              value="�����������ݹ��ң�">�����������ݹ��ң�</option>
                <option 
              value="">--------����----</option>
                <option value="�Ϸ�">�Ϸ�</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option 
              value="������">������</option>
                <option value="���ն�">���ն�</option>
                <option 
              value="Ħ���">Ħ���</option>
                <option value="���ױ���">���ױ���</option>
                <option 
              value="��������">��������</option>
                <option value="����������">����������</option>
                <option value="ë��������">ë��������</option>
                <option 
              value="���������޹��ң�">���������޹��ң�</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="35" class="ziti03"><div align="right">Ŀǰ��ݣ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="identity" type="text" id="identity" value="<%= rs("gongzuo") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">������ʡ�ݣ�</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="select20" size="1" name="select">
                <option value="<%= rs("shengfen") %>" 
              selected="selected"><%= rs("shengfen") %></option>
                <option value="����">����</option>
                <option 
              value="���">���</option>
                <option value="�Ϻ�">�Ϻ�</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="�㽭">�㽭</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="�ӱ�">�ӱ�</option>
                <option value="����">����</option>
                <option 
              value="������">������</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="����">����</option>
                <option value="����">����</option>
                <option 
              value="�ຣ">�ຣ</option>
                <option value="ɽ��">ɽ��</option>
                <option 
              value="ɽ��">ɽ��</option>
                <option value="����">����</option>
                <option 
              value="�Ĵ�">�Ĵ�</option>
                <option value="����">����</option>
                <option 
              value="���">���</option>
                <option value="�½�">�½�</option>
                <option 
              value="����">����</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="29" class="ziti03"><div align="right">��ҵ/�Ͷ���У��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="school" type="text" id="school" value="<%= rs("daxue") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">����ĸУ��</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="high_school" type="text" id="high_school" value="<%= rs("gaozhong") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="19" class="ziti03"><div align="right">ְ�Ƶȼ���</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="technical_level" size="1" name="technical_level">
                <option value="<%= rs("dengji") %>" selected="selected"><%= rs("dengji") %></option>
                <option 
              value="����ְ�Ƶȼ�">����ְ�Ƶȼ�</option>
                <option value="�׶���ʦ">�׶���ʦ</option>
                <option value="Сѧ������ʦ">Сѧ������ʦ</option>
                <option 
              value="Сѧһ����ʦ">Сѧһ����ʦ</option>
                <option value="Сѧ�߼���ʦ">Сѧ�߼���ʦ</option>
                <option value="Сѧ�ؼ���ʦ">Сѧ�ؼ���ʦ</option>
                <option 
              value="��ѧ������ʦ">��ѧ������ʦ</option>
                <option value="��ѧһ����ʦ">��ѧһ����ʦ</option>
                <option value="��ѧ�߼���ʦ">��ѧ�߼���ʦ</option>
                <option 
              value="��ѧ�ؼ���ʦ">��ѧ�ؼ���ʦ</option>
                <option value="��ѧ����">��ѧ����</option>
                <option value="��ѧ��ʦ">��ѧ��ʦ</option>
                <option value="������">������</option>
                <option value="������">������</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">(���)��ְѧУ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><label><span style="font-size: 10pt">&nbsp;
              <input name="teach_school" id="teach_school" value="<%= rs("xuexiao") %>" maxlength="30" />
            </span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">���䣺</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><label></label>
            <label><span style="font-size: 10pt">&nbsp; 
            <select id="teach_age" size="1" name="teach_age">
              <option value="<%= rs("jiaoling") %>" selected="selected"><%= rs("jiaoling") %></option>
			  <option value="0" >0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option 
              value="4">4</option>
              <option value="5">5</option>
              <option 
              value="6">6</option>
              <option value="7">7</option>
              <option 
              value="8">8</option>
              <option value="9">9</option>
              <option 
              value="10">10</option>
              <option value="11">11</option>
              <option 
              value="12">12</option>
              <option value="13">13</option>
              <option 
              value="14">14</option>
              <option value="15">15</option>
              <option 
              value="16">16</option>
              <option value="17">17</option>
              <option 
              value="18">18</option>
              <option value="19">19</option>
              <option 
              value="20">20</option>
              <option value="21">21</option>
              <option 
              value="22">22</option>
              <option value="23">23</option>
              <option 
              value="24">24</option>
              <option value="25">25</option>
              <option 
              value="26">26</option>
              <option value="27">27</option>
              <option 
              value="28">28</option>
              <option value="29">29</option>
              <option 
              value="30">30</option>
              <option value="31">31</option>
              <option 
              value="32">32</option>
              <option value="33">33</option>
              <option 
              value="34">34</option>
              <option value="35">35</option>
              <option 
              value="36">36</option>
              <option value="37">37</option>
              <option 
              value="38">38</option>
              <option value="39">39</option>
              <option 
              value="40">40</option>
              <option value="41">41</option>
              <option 
              value="42">42</option>
              <option value="43">43</option>
              <option 
              value="44">44</option>
              <option value="45">45</option>
              <option 
              value="46">46</option>
              <option value="47">47</option>
              <option 
              value="48">48</option>
              <option value="49">49</option>
              <option 
              value="50">50</option>
              <option value="51">51</option>
              <option 
              value="52">52</option>
              <option value="53">53</option>
              <option 
              value="54">54</option>
              <option value="55">55</option>
              <option 
              value="56">56</option>
              <option value="57">57</option>
              <option 
              value="58">58</option>
              <option value="59">59</option>
              <option 
              value="60">60</option>
            </select>
            </span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ν�ѧ�ƣ�</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; 
              <input name="teach_subject" type="text" id="teach_subject" value="<%= rs("xueke") %>" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ν��꼶��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; 
              <input name="teach_subject2" type="text" id="teach_subject2" value="<%= rs("leibie") %>" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">����ס����</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><font 
                        color="#ffffff">
      <select class="input_text" id="address1" 
                        name="address1">
              
                          <option value="<%= rs("jiating") %>" 
                          selected="selected"><%= rs("jiating") %></option>
              <%	
					  dw1="����"				
set rs5=server.CreateObject("adodb.recordset")
rs5.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
              <% 
						  if rs5.eof and rs5.bof then 
						  Else
						  do while not rs5.eof
						  %>
              <option 
                          value="<%= rs5("title") %>"><%= rs5("title") %></option>
              <% 
						 rs5.movenext
			             if rs5.eof then exit do  						
	  	                    loop  
						  
						 %>
              <% 
						 End If 
						 rs5.close
		                 set rs5=nothing
						 %>
            </select>
            </font></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">��ͥס��:</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><font 
                        color="#ffffff">
            <select class="input_text" id="address2" 
                        name="address2">
              <option value="<%= rs("jiating") %>" 
                          selected="selected"><%= rs("jiating") %></option>
              <%	
					  dw1="����"				
set rs6=server.CreateObject("adodb.recordset")
rs6.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
              <% 
						  if rs6.eof and rs6.bof then 
						  Else
						  do while not rs6.eof
						  %>
              <option 
                          value="<%= rs6("title") %>"><%= rs6("title") %></option>
              <% 
						 rs6.movenext
			             if rs6.eof then exit do  						
	  	                    loop  
						  
						 %>
              <% 
						 End If 
						 rs6.close
		                 set rs6=nothing
						 %>
            </select>
            </font></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�绰��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;<span class="buleo2_link_9">
              <input maxlength="80" size="30" name="telephone" value="<%= rs("tel") %>" />
            </span></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ֻ���</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input maxlength="32" size="15" name="mobile" value="<%= rs("shouji") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">MSN��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left">
               &nbsp;
               <input id="msn" name="msn" value="<%= rs("msn") %>" />
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">QQ:</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input id="qq" name="qq" value="<%= rs("qq") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">E_mail��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input maxlength="50" size="28" name="e_mail" value="<%= rs("mail") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">ͨ�ŵ�ַ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input id="address3" name="address3" value="<%= rs("tongxin") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ʱࣺ</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input id="post_code" maxlength="6" size="12" 
            name="post_code" value="<%= rs("youbian") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">�ɽ��ڿ�Ŀ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><span style="font-size: 10pt">
              <textarea  name="MyFirstJob" rows="10" ><%= rs("kemu") %></textarea>
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">��ְ��ʦ ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <label>
              <input name="zhuanye" type="radio" value="��" <% If rs("zhunaye")="��" Then %>checked <% End If %> />
�� </label>
              <label>
              <input name="zhuanye" type="radio" value="��" <% If rs("zhunaye")="��" Then %>checked <% End If %> />
��</label>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">����ר�ţ�</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <label>
              <input type="radio" name="yinyue" value="��" <% If rs("yinyue")="��" Then %>checked <% End If %> />
�� </label>
              <label>
              <input name="yinyue" type="radio" value="��" <% If rs("yinyue")="��"Then %>checked <% End If %> />
��</label>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">����������</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <textarea name="miaoshu" cols="40" rows="5" id="miaoshu"><%= rs("miaoshu") %></textarea>
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">���ڿ�����</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; </span>
              <textarea  name="quyu" rows="10" id="quyu" ><%= rs("quyu") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ҽ̳ɹ���</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <textarea name="chengguo" cols="40" rows="10" id="chengguo"><%= rs("chengguo") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">нˮҪ��</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <input name="xinshui" type="text" id="xinshui" size="30" value="<%= rs("xinshui") %>" />
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">�ɸ�����ʽ��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="fangshi" type="radio" value="��������" 
						  <% If rs("fangshi")="��������" Then %>checked <% End If %> />
��������
<input type="radio" name="fangshi" value="ѧ������" <% If rs("fangshi")="ѧ������"  Then %>checked <% End If %> />
ѧ������
<input type="radio" name="fangshi" value="���ϸ���" <% If rs("fangshi")="���ϸ���"  Then %>checked <% End If %> />
���ϸ���<input type="radio" name="fangshi" value="С�ศ��" <% If rs("fangshi")="С�ศ��"  Then %>checked <% End If %> />
С�ศ��</span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">���֤���� �� </div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp;<% If rs("images")<>"" Then %>
              <a href="showimg01.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw1=<%=rs("id") %>">ɾ��</a>
              <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">ѧ��֤��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp; <% If rs("images1")<>"" Then %> 
              <a href="showimg02.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>
             &nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw2=<%=rs("id") %>">ɾ��</a><a href="jiaoyuanshow.asp"></a> 
              <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">��ʦ�ʸ�֤��</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
                <% If rs("images2")<>"" Then %>
              <a href="showimg03.asp?id=<%=rs("id") %>" target="_blank">�鿴</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw3=<%=rs("id") %>">ɾ��</a><a href="jiaoyuanshow.asp"></a>
              <% End If %>
            </div></td>
          </tr>
        </tbody>
    </table>
     
        <label></label>
        <div align="center">
          <input type="submit" name="Submit" value="�ύ�޸�" />
          <input name="dw" type="hidden" id="dw" value="<%= id %>" />
        <a href="jiaoyuan.asp?dw=<%= e %>" class="top">���ؽ�Ա�б�</a>        </div>
      </form>
     
      <div align="center">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
              <td width="21%" height="38">
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
            <input name="sd" type="submit" id="sd" value="ͨ�������֤" />
            <input name="d" type="hidden" id="d" value="<%= id %>" />
                </form></td>
          <td width="21%">
      <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="dwww" type="submit" id="dwww" value="��Ϊ���ǽ�Ա" />
                  <input name="d1" type="hidden" id="d1" value="<%= id %>" />
              </form></td><td width="22%">
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="chexiao" type="submit" id="chexiao" value="�������ǽ�Ա" />
                  <input name="che" type="hidden" id="che" value="<%= id %>" />
              </form></td>
            <td width="19%"> <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                <input name="dw13" type="submit" id="dw13" value="�����ʾ" />
                <input name="w1" type="hidden" id="w1" value="<%= id %>" />
              </form></td>
  <td width="17%"> <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="dwwe" type="submit" id="dwwe" value="������ʾ" />
                  <input name="w2" type="hidden" id="w2" value="<%= id %>" />
              </form></td>
          </tr>
        </table>
          <%
	      rs.Close
          set rs=nothing
		 %>
      </div></td></tr>
</table>
</body>
</html>