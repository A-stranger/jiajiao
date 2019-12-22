<!--#include file="conn.asp"-->
<style type="text/css">
body  { background:#ffffff; margin:0px; font:9pt 宋体; SCROLLBAR-FACE-COLOR: #dddddd; FONT-SIZE: 12px; SCROLLBAR-HIGHLIGHT-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #ffffff; COLOR: #666666; SCROLLBAR-3DLIGHT-COLOR: #dddddd; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #dddddd;}
table  { border:0px; }
td  { font:normal 12px 宋体; }
img  { vertical-align:bottom; border:0px; }
a  { font:normal 12px 宋体; color:#000000; text-decoration:none; }
a:hover  { color:#428EFF;text-decoration:underline; }
.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#f5f5f5; }
.menu_title  { }
.menu_title span  { position:relative; top:2px; left:8px; color:#215DC6; font-weight:bold; }
.menu_title2  { }
.menu_title2 span  { position:relative; top:2px; left:8px; color:#428EFF; font-weight:bold; }
</style>

<body style=scrollbar-arrow-color:#227776;scrollbar-base-color:#C6DCDE leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table cellspacing="0" cellpadding="0" width="158" align="center">
  
	<tr>
		
    <td width="152" height="25" background="images/title_bg_quit.gif" class="menu_title"> 
      <span><a href="guanli_edit.asp" target=right><b><font color="#FFFFFF">修改密码</font></b></a><font color="#FFFFFF">| <A HREF="guanli_lgoinout.asp" TARGET="_top"><B><FONT COLOR=WHITE>注销登录</FONT></B></A></font></span></td>
	</tr>
	<tr>  </tr>
</table>
<table cellspacing="0" cellpadding="0" width="158" align="center">
	<tr>
    <td class="menu_title" id="imgmenu13" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(13)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span><font color="#FFFFFF">教员管理</font></span> </td>
	</tr>
	<tr>
	  <td bgcolor="#F5F5F5" id="submenu13" style="DISPLAY: none"><br>
		<table cellpadding=0 cellspacing=0 align=center width=90%>
		 <tr>
		    <td height=20>☉ <a href=jiaoyuan.asp target=right>全体教员管理</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=zhuanye.asp target=right>专业教员管理</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=daxue.asp target=right>学生教员管理</a></td>
          </tr><tr>		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=zaizhi.asp target=right>在职教师管理</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=jianzhi.asp target=right>兼职教员管理</a></td>
          </tr>
		  <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=mingxin.asp target=right>明星教员管理</a></td>
          </tr>
          <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=jdingdan.asp target=right>教员申请订单</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> 
		    <td height=20>☉ <a href=mingxing.asp target=right>明星教员申请</a></td>
          </tr>
		  <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=xjilu.asp target=right>教员家教记录</a></td>
          </tr>
		  <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
            <tr>
		    <td height=20>☉ <a href=jilu.asp target=right>家教详细记录</a></td>
          </tr>
		</table>
      <br></td></tr>
	
	
          <tr>
    <td class="menu_title" id="imgmenu31" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(31)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span><font color="#FFFFFF">学员管理</font></span> </td>
	</tr>
	<tr>
	  <td bgcolor="#F5F5F5" id="submenu31" style="DISPLAY: none"><br>
		<table cellpadding=0 cellspacing=0 align=center width=90%>
		  <tr>
		    <td height=20>☉ <a href=dingdan.asp target=right>订单管理</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=fuwu.asp target=right>服务记录</a></td>
          </tr>
		  
		  <tr> 
	    </table>
		  <br></td></tr>
          <tr>
    <td class="menu_title" id="imgmenu21" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(21)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span><font color="#FFFFFF">开班信息</font></span> </td>
	</tr>
	<tr>
	  <td bgcolor="#F5F5F5" id="submenu21" style="DISPLAY: none"><br>
		<table cellpadding=0 cellspacing=0 align=center width=90%>
		<tr>                                                                   
		   <td height=20>☉ <a href=xtese.asp target=right>名师小班</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr> 
		                                                                                         
		                <td height=20>☉ <a href=xyingyu.asp target=right>英语小班</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>  <tr>
		                                                                                         
		                <td height=20>☉ <a href=xyuwen.asp target=right>语文小班</a></td>
          </tr>
                <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=waijaio.asp target=right>外教简介</a></td>
          </tr>
		  
		  
	    </table>
      <br></td></tr>
		  <tr>
    <td class="menu_title" id="imgmenu20" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(20)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span><font color="#FFFFFF">文章管理</font></span> </td>
	</tr>
	<tr>
	  <td bgcolor="#F5F5F5" id="submenu20" style="DISPLAY: none"><br>
		<table cellpadding=0 cellspacing=0 align=center width=90%>
		       <tr>                                                                               
		     <td height=20>☉ <a href=wenzhang.asp?dw=最新公告 target=right>最新公告</a></td>
             </tr> 
              <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
           <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=寻找合适的教员 target=right>如何请家教</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=家教直通车 target=right>家教直通车</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=家长加油站 target=right>家长加油站</a></td>
          </tr>
		  <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=家教才艺通 target=right>家教才艺通</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=学习宝典 target=right>学习宝典</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=学习资料 target=right>学习资料</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=外语学习 target=right>外语学习</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=教学资源 target=right>教学资源</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=特色服务 target=right>特色服务</a></td>
          </tr> <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=教员必读 target=right>教员必读</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=加盟合作 target=right>加盟合作</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=我们的服务优势 target=right>我们的服务优势</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=做家教常用文档 target=right>做家教常用文档</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉ <a href=wenzhang.asp?dw=做家教秘笈 target=right>做 家 教 秘 笈</a></td>
          </tr>
	    </table>
      <br></td></tr>
      
		  <tr>
    <td class="menu_title" id="imgmenu46" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(46)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span><font color="#FFFFFF">信息管理</font></span> </td>
	</tr>
	<tr>
	  <td bgcolor="#F5F5F5" id="submenu46" style="DISPLAY: none"><br>
	    <table cellpadding=0 cellspacing=0 align=center width=90%> <tr>
            <td width="134" height=20 >☉ <a href=gonggao.asp target=right>头部公告</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
         <tr>
            <td height=20>☉ <a href=jianjie.asp target=right>网站简介</a></td>
          </tr>
         <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
 <tr>
            <td height=20>☉ <a href=banquan.asp target=right>隐私保护</a></td>
          </tr>
          <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr> 
		            <tr>
                    <td height=20>☉ <a href=xhuikuan.asp target=right>接单手续</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr> 
		                                                                                         
		              <td height=20>☉ <a href=biaozhun.asp target=right>收费标准</a></td>
          </tr> 
       
		  <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
             <td height=20>☉ <a href=liucheng.asp target=right>请家教流程</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr> <tr>
            <td height=20>☉ <a href=mxieyi.asp target=right>明星教员协议</a></td>
          </tr><tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
            <td height=20>☉ <a href=xieyi.asp target=right>教员注册协议</a></td>
          </tr>
        </table>
      <br></td></tr>
		


	<% 
if session("quanxian")=0 then
 %>
<tr>	
    <td class="menu_title" id="imgmenu7" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(7)" onMouseOut="this.className='menu_title';" style="cursor:hand" background="images/menudown.gif" height="25"> 
    &nbsp;<span><font color="#FFFFFF">系统管理</font></span> </td>
  </tr>
	<tr>
	  <td align="center" bgcolor="#F5F5F5" id="submenu7" style="DISPLAY: none"><br>
	    <table cellpadding=0 cellspacing=0 align=center width=90%>
        <tr>
            <td height=20>☉ <a href=info.asp target=right>网站设置</a></td>
          </tr>
          <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
          
	      <tr>
            <td height=20>☉ <a href=lanmu.asp?dw=地区 target=right>地区设置</a></td>
          </tr>
          <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
	      <tr>
            <td height=20>☉ <a href=lanmu.asp?dw=学科 target=right>学科设置</a></td>
          </tr>
          <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
	      <tr>
            <td height=20>☉ <a href=lanmu.asp?dw=院校 target=right>院校设置</a></td>
          </tr>
          <tr>
            <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
            <td width="134" height=20 >☉ <a href=ciwu.asp target=right>财务管理</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
          <tr>
            <td width="134" height=20 >☉ <a href=liuyan.asp target=right>留言管理</a></td>
          </tr><tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		  <tr> <tr>
		    <td height=20>☉<a href="linktu.asp" target="right"> 链接管理(图片)</a></td>
          </tr> 
		    <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr><tr>
		    <td height=20>☉ <a href=linkwen.asp target=right>链接管理(文字)</a></td>
          </tr> 
		    <tr>
		    <td height=3 background="images/cate_line.gif"></td>
          </tr>
		
          <tr>
            <td height=20>☉ <A HREF="manageadmin.asp" TARGET="right">管理员管理</A></td>
          </tr>
          <%end if %>
        </table>
	    <br>
	    <br></td>
	</tr>
</table>
<table cellspacing="0" cellpadding="0" width="158" align="center">
</table>
<script language=javascript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="images/menuup.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="images/menudown.gif";
}
}

top.document.title="山东家教网家教中心后台管理系统";
</script>








