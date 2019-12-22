<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<body style="margin: 0px" scroll=no onresize=javascript:parent.carnoc.location.reload()>
<script>
if(self!=top){top.location=self.location;}
function switchsysbar(){
if (switchpoint.innertext==3){
switchpoint.innertext=4
document.all("frmtitle").style.display="none"
}else{
switchpoint.innertext=3
document.all("frmtitle").style.display=""
}}
</script>

<style type="text/css">.navpoint {color: white; cursor: hand; font-family: webdings; font-size: 9pt}
body {
	scrollbar-face-color: #dddddd; font-size: 12px; scrollbar-highlight-color: #ffffff; scrollbar-shadow-color: #ffffff; color: #666666; scrollbar-3dlight-color: #dddddd; scrollbar-arrow-color: #ffffff; scrollbar-track-color: #ffffff; scrollbar-darkshadow-color: #dddddd
}
</style>

<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
  <tr>
    <td align="middle" nowrap valign="center" id="frmtitle">
    
    <iframe frameborder="0" id="left" name="left" scrolling=auto src="menu.asp" style="height: 100%; visibility: inherit; width: 170px; z-index: 2">
    </iframe>
    
    

    </td>
    <td bgcolor="4a545f" style="width: 9pt"> 
      <table border="0" cellpadding="0" cellspacing="0" height="100%">
      <tr>
        <td style="height: 100%" onClick="switchsysbar()">
        <font style="font-size: 9pt; cursor: default; color: #ffffff">
        <span class="navpoint" id="switchpoint" title="切换">3</span><br>
        </font></td>
      </tr>
    </table>
    </td>
    <td style="width: 100%">
<iframe frameborder="0" id="topframe" name="topframe" scrolling="auto" src="guanli_top.asp"  style="height: 25; visibility: inherit; width: 100%; z-index: 1">
    </iframe>
<iframe frameborder="0" id="right" name="right" scrolling="auto" src="guanli.asp" style="height: 96%; visibility: inherit; width: 100%; z-index: 1">
    </iframe>

</head>
    </td>
  </tr>
</table>
</html>
<script>
if(window.screen.width<'1024'){switchsysbar()}
</script> 







