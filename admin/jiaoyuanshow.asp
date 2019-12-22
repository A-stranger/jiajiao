<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
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
response.Write "<script language=javascript>alert('操作成功！');history.go(-1);</script>"
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
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
if dw2<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&dw2
  rs.open strsql,conn,1,3
  rs("images1")=""
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
if dw3<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&dw3
  rs.open strsql,conn,1,3
  rs("images2")=""
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if


if d<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d
  rs.open strsql,conn,1,3
  rs("renzheng")="认证"
  rs("renzhengtime")=date()
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
chexiao=Trim(Request.Form("chexiao"))
che=Trim(Request.Form("che"))

if d1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&d1
  rs.open strsql,conn,1,3
  rs("mingxing")="是"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
if chexiao<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&che
  rs.open strsql,conn,1,3
  rs("mingxing")="否"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if

if w1<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&w1
  rs.open strsql,conn,1,3
  rs("kongkai")="是"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
if w22<>"" then 
set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&w22
  rs.open strsql,conn,1,3
  rs("fufei")="已付费"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
end if
if w2<>"" then 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiaoyuan where id="&w2
  rs.open strsql,conn,1,3
  rs("kongkai")="否"
  rs.update
  rs.close
  set rs=nothing
  response.Write "<script language=javascript>alert('     操作成功！');history.go(-1);</script>"
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
        
        教员详细 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
     <form id="form2" name="form2" method="post" action="jiaoyuanshow.asp"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">教员编号：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("id") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" class="ziti03"><div align="right">用户名：</div></td>
            <td width="73%" bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("username") %></span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">姓名：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
                <input name="real_name" type="text" id="real_name" value="<%= rs("xingming") %>" />
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">性别：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input type="radio" checked="checked" value="男" name="gender"  <% If rs("sex")="男" Then %>checked <% End If %> />
男
<input type="radio" value="女" name="gender" <% If rs("sex")="女" Then %>checked <% End If %> />
女</div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#eeeeee" class="ziti03"><div align="right">出生年份：</div></td>
            <td bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="birthday" type="text" id="birthday" value="<%= rs("shengr") %>" />
            </span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">专业：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="major" id="major22" value="<%= rs("zhuanye") %>" size="18" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">目前学历： </div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;
              <select id="select2" size="1" name="educational_level">
                <option 
               selected="selected" value="<%= rs("xueli") %>" ><%= rs("xueli") %></option>
			  
                <option value="大专以下">大专以下</option>
                <option value="大专在读">大专在读</option>
                <option value="大专毕业">大专毕业</option>
                <option value="本科在读">本科在读</option>
                <option value="本科毕业">本科毕业</option>
                <option value="硕士在读">硕士在读</option>
                <option value="硕士毕业">硕士毕业</option>
                <option value="博士在读">博士在读</option>
                <option 
            value="博士毕业">博士毕业</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">身份证/护照：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="idcard" id="idcard22" value="<%= rs("shenfenzheng") %>" size="30" maxlength="40" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">国籍/留学国家：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="select18" size="1" name="native_place">
                <option value="<%= rs("shengfen") %>" 
              selected="selected"><%= rs("shengfen") %></option>
                <option value="">--------亚洲----</option>
                <option value="香港">香港</option>
                <option value="台湾">台湾</option>
                <option 
              value="澳门">澳门</option>
                <option value="日本">日本</option>
                <option 
              value="韩国">韩国</option>
                <option value="印度">印度</option>
                <option 
              value="泰国">泰国</option>
                <option value="伊朗">伊朗</option>
                <option 
              value="以色列">以色列</option>
                <option value="土耳其">土耳其</option>
                <option 
              value="新加坡">新加坡</option>
                <option value="菲律宾">菲律宾</option>
                <option 
              value="马来西亚">马来西亚</option>
                <option value="格鲁吉亚">格鲁吉亚</option>
                <option 
              value="印度尼西亚">印度尼西亚</option>
                <option value="沙特阿拉伯">沙特阿拉伯</option>
                <option value="哈萨克斯坦">哈萨克斯坦</option>
                <option 
              value="塔吉克斯坦">塔吉克斯坦</option>
                <option value="土库曼斯坦">土库曼斯坦</option>
                <option value="乌兹别克斯坦">乌兹别克斯坦</option>
                <option 
              value="吉尔吉斯斯坦">吉尔吉斯斯坦</option>
                <option 
              value="（其他亚洲国家）">（其他亚洲国家）</option>
                <option 
              value="">--------欧洲----</option>
                <option value="英国">英国</option>
                <option value="法国">法国</option>
                <option value="德国">德国</option>
                <option 
              value="爱尔兰">爱尔兰</option>
                <option value="俄罗斯">俄罗斯</option>
                <option 
              value="乌克兰">乌克兰</option>
                <option value="立陶宛">立陶宛</option>
                <option 
              value="白俄罗斯">白俄罗斯</option>
                <option value="摩尔多瓦">摩尔多瓦</option>
                <option 
              value="爱沙尼亚">爱沙尼亚</option>
                <option value="拉脱维亚">拉脱维亚</option>
                <option 
              value="瑞士">瑞士</option>
                <option value="丹麦">丹麦</option>
                <option 
              value="挪威">挪威</option>
                <option value="瑞典">瑞典</option>
                <option 
              value="荷兰">荷兰</option>
                <option value="芬兰">芬兰</option>
                <option 
              value="冰岛">冰岛</option>
                <option value="波兰">波兰</option>
                <option 
              value="捷克">捷克</option>
                <option value="希腊">希腊</option>
                <option 
              value="西班牙">西班牙</option>
                <option value="葡萄牙">葡萄牙</option>
                <option 
              value="意大利">意大利</option>
                <option value="匈牙利">匈牙利</option>
                <option 
              value="奥地利">奥地利</option>
                <option value="比利时">比利时</option>
                <option 
              value="卢森堡">卢森堡</option>
                <option value="马其顿">马其顿</option>
                <option 
              value="克罗地亚">克罗地亚</option>
                <option value="斯洛伐克">斯洛伐克</option>
                <option 
              value="南斯拉夫">南斯拉夫</option>
                <option value="罗马尼亚">罗马尼亚</option>
                <option 
              value="保加利亚">保加利亚</option>
                <option value="阿尔巴尼亚">阿尔巴尼亚</option>
                <option value="（其他欧洲国家）">（其他欧洲国家）</option>
                <option 
              value="">--------美州----</option>
                <option value="美国">美国</option>
                <option value="加拿大">加拿大</option>
                <option value="格陵兰">格陵兰</option>
                <option value="墨西哥">墨西哥</option>
                <option value="巴拿马">巴拿马</option>
                <option value="危地马拉">危地马拉</option>
                <option value="洪都拉斯">洪都拉斯</option>
                <option value="尼加拉瓜">尼加拉瓜</option>
                <option value="古巴">古巴</option>
                <option value="海地">海地</option>
                <option value="牙买加">牙买加</option>
                <option value="多米尼加">多米尼加</option>
                <option value="巴西">巴西</option>
                <option value="秘鲁">秘鲁</option>
                <option value="智利">智利</option>
                <option 
              value="巴拉圭">巴拉圭</option>
                <option value="圭亚那">圭亚那</option>
                <option 
              value="阿根廷">阿根廷</option>
                <option value="乌拉圭">乌拉圭</option>
                <option 
              value="委内瑞拉">委内瑞拉</option>
                <option value="哥伦比亚">哥伦比亚</option>
                <option 
              value="厄瓜多尔">厄瓜多尔</option>
                <option value="玻利维亚">玻利维亚</option>
                <option 
              value="（其他美洲国家）">（其他美洲国家）</option>
                <option 
              value="">--------大洋州----</option>
                <option value="新西兰">新西兰</option>
                <option value="澳大利亚">澳大利亚</option>
                <option 
              value="巴步亚新几内亚">巴步亚新几内亚</option>
                <option 
              value="（其他大洋州国家）">（其他大洋州国家）</option>
                <option 
              value="">--------非州----</option>
                <option value="南非">南非</option>
                <option value="埃及">埃及</option>
                <option value="马里">马里</option>
                <option 
              value="利比亚">利比亚</option>
                <option value="尼日尔">尼日尔</option>
                <option 
              value="摩洛哥">摩洛哥</option>
                <option value="纳米比亚">纳米比亚</option>
                <option 
              value="尼日利亚">尼日利亚</option>
                <option value="阿尔及利亚">阿尔及利亚</option>
                <option value="毛里塔尼亚">毛里塔尼亚</option>
                <option 
              value="（其他非洲国家）">（其他非洲国家）</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="35" class="ziti03"><div align="right">目前身份：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="identity" type="text" id="identity" value="<%= rs("gongzuo") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">出生地省份：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="select20" size="1" name="select">
                <option value="<%= rs("shengfen") %>" 
              selected="selected"><%= rs("shengfen") %></option>
                <option value="北京">北京</option>
                <option 
              value="天津">天津</option>
                <option value="上海">上海</option>
                <option 
              value="重庆">重庆</option>
                <option value="安徽">安徽</option>
                <option 
              value="江苏">江苏</option>
                <option value="浙江">浙江</option>
                <option 
              value="福建">福建</option>
                <option value="甘肃">甘肃</option>
                <option 
              value="广西">广西</option>
                <option value="广西">广西</option>
                <option 
              value="贵州">贵州</option>
                <option value="海南">海南</option>
                <option 
              value="河北">河北</option>
                <option value="江西">江西</option>
                <option 
              value="黑龙江">黑龙江</option>
                <option value="湖北">湖北</option>
                <option 
              value="湖南">湖南</option>
                <option value="吉林">吉林</option>
                <option 
              value="江西">江西</option>
                <option value="辽宁">辽宁</option>
                <option 
              value="内蒙">内蒙</option>
                <option value="宁厦">宁厦</option>
                <option 
              value="青海">青海</option>
                <option value="山东">山东</option>
                <option 
              value="山西">山西</option>
                <option value="陕西">陕西</option>
                <option 
              value="四川">四川</option>
                <option value="西藏">西藏</option>
                <option 
              value="香港">香港</option>
                <option value="新疆">新疆</option>
                <option 
              value="云南">云南</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="29" class="ziti03"><div align="right">毕业/就读高校：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="school" type="text" id="school" value="<%= rs("daxue") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">高中母校：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span><span style="font-size: 10pt">
              <input name="high_school" type="text" id="high_school" value="<%= rs("gaozhong") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="19" class="ziti03"><div align="right">职称等级：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select id="technical_level" size="1" name="technical_level">
                <option value="<%= rs("dengji") %>" selected="selected"><%= rs("dengji") %></option>
                <option 
              value="尚无职称等级">尚无职称等级</option>
                <option value="幼儿教师">幼儿教师</option>
                <option value="小学二级教师">小学二级教师</option>
                <option 
              value="小学一级教师">小学一级教师</option>
                <option value="小学高级教师">小学高级教师</option>
                <option value="小学特级教师">小学特级教师</option>
                <option 
              value="中学二级教师">中学二级教师</option>
                <option value="中学一级教师">中学一级教师</option>
                <option value="中学高级教师">中学高级教师</option>
                <option 
              value="中学特级教师">中学特级教师</option>
                <option value="大学助教">大学助教</option>
                <option value="大学讲师">大学讲师</option>
                <option value="副教授">副教授</option>
                <option value="正教授">正教授</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">(最后)任职学校：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><label><span style="font-size: 10pt">&nbsp;
              <input name="teach_school" id="teach_school" value="<%= rs("xuexiao") %>" maxlength="30" />
            </span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">教龄：</div></td>
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
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">任教学科：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp; 
              <input name="teach_subject" type="text" id="teach_subject" value="<%= rs("xueke") %>" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">任教年级：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp; 
              <input name="teach_subject2" type="text" id="teach_subject2" value="<%= rs("leibie") %>" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">生活住所：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><font 
                        color="#ffffff">
      <select class="input_text" id="address1" 
                        name="address1">
              
                          <option value="<%= rs("jiating") %>" 
                          selected="selected"><%= rs("jiating") %></option>
              <%	
					  dw1="地区"				
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
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">家庭住所:</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><font 
                        color="#ffffff">
            <select class="input_text" id="address2" 
                        name="address2">
              <option value="<%= rs("jiating") %>" 
                          selected="selected"><%= rs("jiating") %></option>
              <%	
					  dw1="地区"				
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
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">电话：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;<span class="buleo2_link_9">
              <input maxlength="80" size="30" name="telephone" value="<%= rs("tel") %>" />
            </span></span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">手机：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input maxlength="32" size="15" name="mobile" value="<%= rs("shouji") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">MSN：</div></td>
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
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">E_mail：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input maxlength="50" size="28" name="e_mail" value="<%= rs("mail") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">通信地址：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input id="address3" name="address3" value="<%= rs("tongxin") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">邮编：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <input id="post_code" maxlength="6" size="12" 
            name="post_code" value="<%= rs("youbian") %>" />
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">可教授科目：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span><span style="font-size: 10pt">
              <textarea  name="MyFirstJob" rows="10" ><%= rs("kemu") %></textarea>
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">在职教师 ：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <label>
              <input name="zhuanye" type="radio" value="是" <% If rs("zhunaye")="是" Then %>checked <% End If %> />
是 </label>
              <label>
              <input name="zhuanye" type="radio" value="否" <% If rs("zhunaye")="否" Then %>checked <% End If %> />
否</label>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">音乐专才：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <label>
              <input type="radio" name="yinyue" value="是" <% If rs("yinyue")="是" Then %>checked <% End If %> />
是 </label>
              <label>
              <input name="yinyue" type="radio" value="否" <% If rs("yinyue")="否"Then %>checked <% End If %> />
否</label>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">自我描述：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;
              <textarea name="miaoshu" cols="40" rows="5" id="miaoshu"><%= rs("miaoshu") %></textarea>
            </span></div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">可授课区域：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp; </span>
              <textarea  name="quyu" rows="10" id="quyu" ><%= rs("quyu") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">家教成果：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <textarea name="chengguo" cols="40" rows="10" id="chengguo"><%= rs("chengguo") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">薪水要求：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><div align="left"><span style="font-size: 10pt">&nbsp;</span>
              <input name="xinshui" type="text" id="xinshui" size="30" value="<%= rs("xinshui") %>" />
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">可辅导方式：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="fangshi" type="radio" value="本人上门" 
						  <% If rs("fangshi")="本人上门" Then %>checked <% End If %> />
本人上门
<input type="radio" name="fangshi" value="学生上门" <% If rs("fangshi")="学生上门"  Then %>checked <% End If %> />
学生上门
<input type="radio" name="fangshi" value="网上辅导" <% If rs("fangshi")="网上辅导"  Then %>checked <% End If %> />
网上辅导<input type="radio" name="fangshi" value="小班辅导" <% If rs("fangshi")="小班辅导"  Then %>checked <% End If %> />
小班辅导</span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">身份证或护照 ： </div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp;<% If rs("images")<>"" Then %>
              <a href="showimg01.asp?id=<%=rs("id") %>" target="_blank">查看</a>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw1=<%=rs("id") %>">删除</a>
              <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">学生证：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03">&nbsp; <% If rs("images1")<>"" Then %> 
              <a href="showimg02.asp?id=<%=rs("id") %>" target="_blank">查看</a>
             &nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw2=<%=rs("id") %>">删除</a><a href="jiaoyuanshow.asp"></a> 
              <% End If %></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">教师资格证：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
                <% If rs("images2")<>"" Then %>
              <a href="showimg03.asp?id=<%=rs("id") %>" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="jiaoyuanshow.asp?dw3=<%=rs("id") %>">删除</a><a href="jiaoyuanshow.asp"></a>
              <% End If %>
            </div></td>
          </tr>
        </tbody>
    </table>
     
        <label></label>
        <div align="center">
          <input type="submit" name="Submit" value="提交修改" />
          <input name="dw" type="hidden" id="dw" value="<%= id %>" />
        <a href="jiaoyuan.asp?dw=<%= e %>" class="top">返回教员列表</a>        </div>
      </form>
     
      <div align="center">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
              <td width="21%" height="38">
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
            <input name="sd" type="submit" id="sd" value="通过身份认证" />
            <input name="d" type="hidden" id="d" value="<%= id %>" />
                </form></td>
          <td width="21%">
      <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="dwww" type="submit" id="dwww" value="升为明星教员" />
                  <input name="d1" type="hidden" id="d1" value="<%= id %>" />
              </form></td><td width="22%">
                <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="chexiao" type="submit" id="chexiao" value="撤销明星教员" />
                  <input name="che" type="hidden" id="che" value="<%= id %>" />
              </form></td>
            <td width="19%"> <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                <input name="dw13" type="submit" id="dw13" value="审核显示" />
                <input name="w1" type="hidden" id="w1" value="<%= id %>" />
              </form></td>
  <td width="17%"> <form id="form1" name="form1" method="post" action="jiaoyuanshow.asp">
                  <input name="dwwe" type="submit" id="dwwe" value="不予显示" />
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