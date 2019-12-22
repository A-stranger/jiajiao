<!--#include file = "conn.asp"-->
<% 
 id=Trim(Request.QueryString("id"))  
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&id
 rs.open strsql,conn,1,3
  rs("cishu")=rs("cishu")+1
  rs.update
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title><%= rs("daxue") %><%= left(rs("kemu"),7) %>家教<%= left(rs("xingming"),1) %>老师简历-<%= title %></title>
<META content=山东家教网 name=author>
<META content="www.mdjjj.net" name=copyright>
<META content=chinese name=language>
<META content=ALL name=robots>
<META content=Global name=distribution>
<META content=general name=rating>
<META content="MSHTML 6.00.3790.3959" name=GENERATOR>

<META content=document name=resource-type>
<META content="7 days" name=revisit-after>
<META content=JavaScript name=vs_defaultClientScript><LINK 
href="images/shanghai.css" type=text/css 
rel=stylesheet>
<SCRIPT type=text/javascript>
function secBoard(elementID,listName,n) {
var elem = document.getElementById(elementID);
var elemlist = elem.getElementsByTagName("h3");
for (var i=0; i<elemlist.length; i++) {
elemlist[i].className = "normal";
var m = i+1;
document.getElementById(listName+"_"+m).className = "normal";
}
elemlist[n-1].className = "current";
document.getElementById(listName+"_"+n).className = "current";
}
</SCRIPT>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR>
            <TD width=712><TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BACKGROUND: url(../../common/image_all/t_info_t.gif) no-repeat; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=712>
              <TBODY>
                <TR>
                  <TD width=56 height=87>&nbsp;</TD>
                  <TD width=654 align="center" class="heiti px18 spacing1"><SPAN 
                  class=orange>
                    <% If rs("mingxing")="是" Then %><SPAN 
                  class=red_11>★明星</SPAN><% End If %><% If rs("renzheng")="认证" Then %><SPAN 
                  class=red_11>√已认证</SPAN><% End If %>教员T<%= rs("id") %><span class="asho_link_9"></span>详细简历</STRONG></SPAN><BR></TD>
                </TR>
              </TBODY>
            </TABLE>
              </TD>
            <TD width=12></TD>
            <TD width=14><IMG height=95 
            src="images/t_info_1.gif" width=14></TD>
            <TD width=66 
          background=images/t_info_2.gif><DIV align=center><IMG height=23 
            src="images/phone2.gif" 
          width=28></DIV></TD>
            <TD class="height20 orange" width=114 
          background=images/t_info_2.gif><DIV 
            align=left><STRONG>请家教热线：<BR>
                  <%= qrexian %></STRONG></DIV></TD>
            <TD width=12><IMG height=95 
            src="images/t_info_3.gif" 
        width=12></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          
          <TR>
            <TD style="COLOR: #333333" vAlign=top width=712><TABLE cellSpacing=0 cellPadding=0 width=712 border=0>
              <TBODY>
                <TR>
                  <TD width=6 height=155><IMG height=155 
                  src="images/t_info_4.gif" width=6></TD>
                  <TD 
                style="BORDER-TOP: #ebecee 1px solid; BACKGROUND: url(../../common/image_all/t_info_fly.gif) no-repeat right bottom; BORDER-BOTTOM: #ebecee 1px solid" 
                vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=650 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=15></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 简历浏览次数：<SPAN class=orange><%= rs("cishu") %></SPAN> 　在本站成功的家教记录：
                            <% 	 
de="是"
set rs2=server.CreateObject("adodb.recordset")
 strsql2="select userid,chenggong from xjilu where userid='"&id&"'and chenggong='"&de&"' "
 rs2.open strsql2,conn,1,1
 i=0
if not(rs2.eof and rs2.bof) then 
    do while not rs2.eof  
	i=i+1
	%> 
                            <A class=sc_  href="<% 
response.write "http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name") 
%>?id=<%= id %>#order"><%= i %>次</A> 　
                            <%
             							'每页显示条数减1
			rs2.movenext  									'指向下一条记录
			if rs2.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %><% Else %><A class=sc_  href="<% 
response.write "http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name") 
%>?id=<%= id %>#order">0次</A>
                            <%  end if %>
                             </TD>
                        </TR>
                        <TR>
                          <TD 
                      height=1 align="left" background=images/broken_line_2.gif></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">　　　最近登陆时间：<SPAN class=orange><%= rs("logotime") %></SPAN>　　 登录次数：<span class="orange"><%= rs("logocishu") %></span></TD>
                        </TR>
                        <TR>
                          <TD 
                      height=1 align="left" background=images/broken_line_2.gif></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">　　　认证情况：
                              <% If rs("renzheng")="认证" Then %>
                            <SPAN 
                        class=orange>本站已经审核过此教员的真实证件</SPAN>，上次认证时间：<span class="orange"><%= rs("renzhengtime") %></span>
                              <% Else %>
                              <span class="orange">未通过认证</span>
                              <% End If %></TD>
                        </TR>
                        <TR>
                          <TD background=images/broken_line_2.gif 
                      height=1></TD>
                        </TR>
                        <TR>
                          <TD height=40><DIV class="orange px13" align=right>[ <A class=orange_ 
                        href="yuyue.asp?userid=<%= rs("id") %>" 
                        target=_blank><STRONG>在线预约该教员</STRONG></A> ]　请家教热线：<STRONG><%= qrexian %></STRONG>　　</DIV></TD>
                        </TR>
                      </TBODY>
                  </TABLE></TD>
                  <TD width=6><IMG height=155 
                  src="images/t_info_5.gif" 
              width=6></TD>
                </TR>
              </TBODY>
            </TABLE>
            <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                    <TBODY>
                      
                      <TR>
                        <TD background=images/t_info_10.gif 
                colSpan=4 height=34><DIV class="white px13" align=center><STRONG>教 员 基 本 信 
                          息</STRONG></DIV></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD width=89 height=30><DIV align=right>教员编号：</DIV></TD>
                        <TD width=122 align="left" bgColor=#f9f9ec><DIV align=left>　T<%= rs("id") %></DIV></TD>
                        <TD width=121><DIV align=right>姓名：</DIV></TD>
                        <TD width=375 align="left">　<%= left(rs("xingming"),1) %>教员 <SPAN 
                  class=ash->(为保护教员隐私，具体面谈时会向您提供全名及各种证件)</SPAN></TD>
                      </TR>
                      <TR bgColor=#f7f5dc>
                        <TD height=30><DIV align=right>性别： </DIV></TD>
                        <TD align="left"><DIV align=left>　<%= rs("sex") %></DIV></TD>
                        <TD><DIV align=right>省份/国家：</DIV></TD>
                        <TD align="left">　<%= rs("shengfen") %></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD height=30><DIV align=right>出生年月：</DIV></TD>
                        <TD align="left">　<%= rs("shengr") %></TD>
                        <TD><DIV align=right>就读/毕业/就职高校：</DIV></TD>
                        <TD align="left">　<%= rs("daxue") %></TD>
                      </TR>
                      <TR bgColor=#f7f5dc>
                        <TD height=30><DIV align=right>最后学历：</DIV></TD>
                        <TD align="left">　<%= rs("xueli") %></TD>
                        <TD><DIV align=right>专业：</DIV></TD>
                        <TD align="left">　<%= rs("zhuanye") %></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD height=30><DIV align=right>目前身份：</DIV></TD>
                        <TD align="left">　<%= rs("gongzuo") %></TD>
                        <TD><DIV align=right>高中母校：</DIV></TD>
                        <TD align="left">　<%= rs("gaozhong") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f7f5dc height=30><DIV align=right>生活住所：</DIV></TD>
                        <TD align="left" bgColor=#f7f5dc>　<%= rs("shenghuo") %></TD>
                        <TD bgColor=#f7f5dc><DIV align=right>家庭位置：</DIV></TD>
                        <TD align="left" bgColor=#f7f5dc>　<%= rs("jiating") %></TD>
                      </TR>
                      <TR>
                        <TD height=10></TD>
                        <TD></TD>
                        <TD></TD>
                        <TD align="left"></TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                    <TBODY>
                      <TR>
                        <TD background=images/t_info_10.gif 
                colSpan=2 height=34><DIV class="white px13" align=center><STRONG>教 员 家 教 信 
                          息</STRONG></DIV></TD>
                      </TR>
                      <TR>
                        <TD width=116 bgColor=#f9f9ec height=30><DIV align=right>可教授科目：</DIV></TD>
                        <TD 
                width=593 align="left" 
                  bgColor=#f9f9ec class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("kemu") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f7f5dc height=30><DIV align=right>自我描述：<BR>
                          特长展示：</DIV></TD>
                        <TD align="left" 
                bgColor=#f7f5dc class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("miaoshu") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f9f9ec height=30><DIV align=right>家教成果：</DIV></TD>
                        <TD align="left" 
                bgColor=#f9f9ec class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("chengguo") %></TD>
                      </TR>
                      <TR>
                        <TD class=height20 bgColor=#f7f5dc><DIV align=right>可授课区域：<BR>
                          及详细描述：</DIV></TD>
                        <TD align="left" 
                bgColor=#f7f5dc class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("quyu") %><BR></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f9f9ec height=30><DIV align=right>可辅导方式：</DIV></TD>
                        <TD align="left" bgColor=#f9f9ec>　本人上门 学生上门</TD>
                      </TR>
                      
                      <TR>
                        <TD bgColor=#F7F5DC height=30><DIV align=right>薪水要求：</DIV></TD>
                        <TD align="left" 
                bgColor=#F7F5DC class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">执行山东家教网薪水标准。 <A class=orange_
                  href="biaozhun.asp" 
                  target=_blank>查看薪水标准</A></TD>
                      </TR>
                      <TR>
                        <TD height=5></TD>
                        <TD></TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width=712 border=0>
                    <TBODY>
                      <TR>
                        <TD width=74>&nbsp;</TD>
                        <TD class=height30 colSpan=2 height=70><DIV align=center><STRONG class="px13 orange">预约中心电话：</STRONG><STRONG><%= qrexian %></STRONG><BR>
                          （工作时间：9:00－21:00）（预约时，请提供此教员的编号：<STRONG>T<%= rs("id") %> </STRONG>） </DIV></TD>
                        <TD width=123>&nbsp;</TD>
                      </TR>
                      <TR>
                        <TD>&nbsp;</TD>
                        <TD width=230 height=80><DIV align=left><A 
                  href="yuyue.asp?userid=<%= rs("id") %>" 
                  target=_blank><IMG 
                  src="images/t_info_15.gif" 
                  width=195 height=46 border="0"></A></DIV></TD>
				  <% ur=Request.ServerVariables("SERVER_NAME") %>
                        <TD width=285><DIV align=center><A 
                  onmouseout="window.status='<%= title %>';return true;" onclick='window.external.AddFavorite("http://<%= Request.ServerVariables("server_name") %><%= Request.ServerVariables("script_name") %>?id=<%= rs("id") %>","教员收藏")'
                  href="#"><IMG 
                  src="images/t_info_16.gif" 
                  width=195 
                  height=46 border="0"></A></DIV></TD>
                        <TD <% rs.close
		set rs=nothing %>
              class=orange>&nbsp;</TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                <TBODY>
                  <TR>
                    <TD colSpan=4 height=12></TD>
                  </TR>
                  <TR>
                    <TD bgColor=#f5ddb3 colSpan=4 height=35><DIV class="px13 spacing1" align=center><STRONG><A 
                        id=order2 
                      name=order></A>该教员的成功家教记录</STRONG></DIV></TD>
                  </TR>
                  <TR bgColor=#f7f5dc>
                    <TD width=193 height=30><DIV align=center><STRONG>订单号</STRONG></DIV></TD>
                    <TD width=139><DIV align=center><STRONG>年级</STRONG></DIV></TD>
                    <TD width=176><DIV align=center><STRONG>科目</STRONG></DIV></TD>
                    <TD width=204><DIV align=center><STRONG>接单日期</STRONG></DIV></TD>
                  </TR>
				  <% 	 
de="是"
set rs2=server.CreateObject("adodb.recordset")
 strsql2="select * from xjilu where userid='"&id&"'and chenggong='"&de&"' "
 rs2.open strsql2,conn,1,1
 i=0
if not(rs2.eof and rs2.bof) then 
    do while not rs2.eof  
	i=i+1
	%>
                  <TR bgColor=<% If (i mod 2) =0 Then %>
			  #f7f5dc
			  <% Else %>
			  #f9f9ec
			  <% End If %>>
                    <TD height=30><DIV align=center><a href="xueyuan_show.asp?id=<%= rs2("dingdan") %>" >S<%= rs2("dingdan") %></a> </DIV></TD>
                    <TD><DIV align=center><%= rs2("nianji") %> </DIV></TD>
                    <TD><DIV align=center><%= rs2("kemu") %> </DIV></TD>
                    <TD><DIV align=center><%= rs2("shijian") %> </DIV></TD>
                  </TR>
				  <%
             							'每页显示条数减1
			rs2.movenext  									'指向下一条记录
			if rs2.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
        <%  end if %>
				  
                </TBODY>
              </TABLE></TD>
            <TD width=12></TD>
            <TD vAlign=top width=206><TABLE cellSpacing=0 cellPadding=0 width=206 border=0>
              <TBODY>
                <TR>
                  <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_8.gif" 
                width=6></TD>
                  <TD 
                style="BORDER-TOP: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
                vAlign=top align=middle><DIV align=center><IMG height=29 
                  src="images/t_info_6.gif" 
                  width=167></DIV>
                      <TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                        <TBODY>
                          <TR>
                            <TD height=10></TD>
                          </TR>
                          <% 	 
dw2="寻找合适的教员"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                          <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                            <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                              <% End If %>
                            </A></TD>
                          </TR>
                          
                          <TR>
                            <TD height=1 align="left" bgColor=#ebecee></TD>
                          </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		rs.close
		set rs=nothing
 %>
                          <TR>
                            <TD height=12></TD>
                          </TR>
                        </TBODY>
                      </TABLE></TD>
                  <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_9.gif" 
                width=6></TD>
                </TR>
              </TBODY>
            </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width=203 border=0>
                <TBODY>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                  <TR>
                    <TD background=images/t_info_11.gif 
                height=74><DIV class=white_16 align=center><A class=white 
                  href="teacher_serch.asp">优秀教员<BR>
                      更多选择条件</A></DIV></TD>
                  </TR>
                  <TR>
                    <TD><A 
                  href="teacher_serch.asp"><IMG 
                  src="images/t_info_12.gif" 
                  width=203 
                  height=71 border="0"></A></TD>
                  </TR>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=206>
                <TBODY>
                  <TR>
                    <TD><DIV align=center><IMG height=28 
                  src="images/t_info_13.gif" 
                  width=167></DIV></TD>
                  </TR>
                  <TR>
                    <TD height=10></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>中小学课程类</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>　<A 
                  href="teacher.asp?kemu=语文">语文</A> <A 
                  href="teacher.asp?kemu=数学">数学</A> <A 
                  href="teacher.asp?kemu=英语">英语</A> <A 
                  href="teacher.asp?kemu=化学">化学</A> <A 
                  href="teacher.asp?kemu=物理">物理</A> <A 
                  href="teacher.asp?kemu=奥数">奥数</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>语言外语类</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>　<A 
                  href="teacher.asp?kemu=韩语">韩语</A> <A 
                  href="teacher.asp?kemu=德语">德语</A> <A 
                  href="teacher.asp?kemu=法语">法语</A> <A 
                  href="teacher.asp?kemu=日语">日语</A> <A 
                  href="teacher.asp?kemu=汉语">汉语</A> <A 
                  href="teacher.asp?kemu=俄语">俄语</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>音乐艺术类</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=50>　<A 
                  href="teacher.asp?kemu=钢琴">钢琴</A> <A 
                  href="teacher.asp?kemu=小提琴">小提琴</A> <A 
                  href="teacher.asp?kemu=电子琴">电子琴</A> <A 
                  href="teacher.asp?kemu=萨克斯">萨克斯</A> <A 
                  href="teacher.asp?kemu=吉他">吉他</A><BR>
                      　
                      <A 
                  href="teacher.asp?kemu=大提琴">大提琴</A> <A 
                  href="teacher.asp?kemu=打击乐">打击乐</A> <A 
                  href="teacher.asp?kemu=单簧管">单簧管</A> <A 
                  href="teacher.asp?kemu=古筝">古筝</A> <A 
                  href="teacher.asp?kemu=美术">美术</A> </TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>体育益智类</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>　<A 
                  href="teacher.asp?kemu=网球">网球</A> <A 
                  href="teacher.asp?kemu=羽毛球">羽毛球</A> <A 
                  href="teacher.asp?kemu=乒乓">乒乓</A> <A 
                  href="teacher.asp?kemu=围棋">围棋</A> <A 
                  href="teacher.asp?kemu=国际象棋">国际象棋</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>服务以下地区</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=50><P class=p_2>
                        <%	
					  dw1="地区"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 20 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                        <% if rs.eof and rs.bof then %>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      暂无记录
                      <% Else
				   %>
                      </P>
                        <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                          <tr valign='top'>
                            <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
                            <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
                                      <tr>
                                        <td width="753" height="21" valign="top" bgcolor="#FFFFFF" ><div align="center"><A href="teacher.asp?quyu=<%= rs("title") %>"><%= rs("title") %></A></div></td>
                                      </tr>
                                  </table></td>
                                </tr>
                              </table>
                                <%if (i mod 4) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                          </tr>
                        </table>
                      <div align="center">
                          <% End If 
		  rs.close
		set rs=nothing
		  %>
                      <a href="teacher.asp"></a></div></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">　　<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>　<SPAN class=cyan>包揽名校师资</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=90><P class=p_2>
                        <%	
					  dw1="院校"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 15 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                        <% if rs.eof and rs.bof then %>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      暂无记录
                      <% Else
				   %>
                      </P>
                        <table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
                          <tr valign='top'>
                            <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
                            <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="3" bordercolor="#F3F3F3">
                                      <tr>
                                        <td width="200" height="18" valign="top" bgcolor="#FFFFFF" ><A  href="teacher.asp?daxue=<%= rs("title") %>" ><%= rs("title") %></A></td>
                                      </tr>
                                  </table></td>
                                </tr>
                              </table>
                                <%if (i mod 3) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
                          </tr>
                        </table>
                      <div align="center">
                          <% End If 
		  rs.close
		set rs=nothing
		  %>
                      <a href="teacher.asp"></a></div></TD>
                  </TR>
                  <TR>
                    <TD height=20></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <BR>
              <!--      
          <table width="206" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">

            <tr>
              <td height="300"><div align="center" class="product_name">广告位 206*300</div></td>
            </tr>
          </table>
          --></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=16><IMG height=15 
      src="images/center_1_1.gif" width=16></TD>
    <TD 
background=images/center_1_2.gif>&nbsp;</TD>
    <TD width=15><IMG height=15 
      src="images/center_1_3.gif" 
  width=15></TD></TR></TBODY></TABLE>
<!--#include file = "foot.asp"--></BODY></HTML>
