/*
*☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆
*★                                                                  ★
*☆                eWebEditor - eWebSoft在线文本编辑器               ☆
*★                                                                  ★
*☆  版权所有: eWebSoft.com                                          ☆
*★                                                                  ★
*☆  程序制作: eWeb开发团队                                          ☆
*★            email:webmaster@webasp.net                            ★
*☆            QQ:589808                                             ☆
*★                                                                  ★
*☆  相关网址: [产品介绍]http://www.eWebSoft.com/Product/eWebEditor/ ☆
*★            [支持论坛]http://bbs.eWebSoft.com/                    ★
*☆                                                                  ☆
*★  主页地址: http://www.eWebSoft.com/   eWebSoft团队及产品         ★
*☆            http://www.webasp.net/     WEB技术及应用资源网站      ☆
*★            http://bbs.webasp.net/     WEB技术交流论坛            ★
*★                                                                  ★
*☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆
*/

// 浏览器版本检测
var BrowserInfo = new Object() ;
BrowserInfo.MajorVer = navigator.appVersion.match(/MSIE (.)/)[1] ;
BrowserInfo.MinorVer = navigator.appVersion.match(/MSIE .\.(.)/)[1] ;
BrowserInfo.IsIE55OrMore = BrowserInfo.MajorVer >= 6 || ( BrowserInfo.MajorVer >= 5 && BrowserInfo.MinorVer >= 5 ) ;

var yToolbars = new Array();  // 工具栏数组

// 当文档完全调入时，进行初始化
var bInitialized = false;
function document.onreadystatechange(){
	if (document.readyState!="complete") return;
	if (bInitialized) return;
	bInitialized = true;

	var i, s, curr;

	// 初始每个工具栏
	for (i=0; i<document.body.all.length;i++){
		curr=document.body.all[i];
		if (curr.className == "yToolbar"){
			InitTB(curr);
			yToolbars[yToolbars.length] = curr;
		}
	}

	if (ContentFlag.value=="0") { 
		ContentEdit.value = objContent.value;
		ContentLoad.value = objContent.value;
		ContentFlag.value = "1";
	}

	eWebEditor.document.designMode="On";
	eWebEditor.document.open();
	eWebEditor.document.write(bodyTag+ContentEdit.value)
	eWebEditor.document.close();
	setLinkedField() ;
	eWebEditor.document.body.onpaste = onPaste ;
	eWebEditor.focus();
}

// 初始化一个工具栏上的按钮
function InitBtn(btn) {
	btn.onmouseover = BtnMouseOver;
	btn.onmouseout = BtnMouseOut;
	btn.onmousedown = BtnMouseDown;
	btn.onmouseup = BtnMouseUp;
	btn.ondragstart = YCancelEvent;
	btn.onselectstart = YCancelEvent;
	btn.onselect = YCancelEvent;
	btn.YUSERONCLICK = btn.onclick;
	btn.onclick = YCancelEvent;
	btn.YINITIALIZED = true;
	return true;
}

//Initialize a toolbar. 
function InitTB(y) {
	// Set initial size of toolbar to that of the handle
	y.TBWidth = 0;
		
	// Populate the toolbar with its contents
	if (! PopulateTB(y)) return false;
	
	// Set the toolbar width and put in the handle
	y.style.posWidth = y.TBWidth;
	
	return true;
}


// Hander that simply cancels an event
function YCancelEvent() {
	event.returnValue=false;
	event.cancelBubble=true;
	return false;
}

// Toolbar button onmouseover handler
function BtnMouseOver() {
	if (event.srcElement.tagName != "IMG") return false;
	var image = event.srcElement;
	var element = image.parentElement;
	
	// Change button look based on current state of image.
	if (image.className == "Ico") element.className = "BtnMouseOverUp";
	else if (image.className == "IcoDown") element.className = "BtnMouseOverDown";

	event.cancelBubble = true;
}

// Toolbar button onmouseout handler
function BtnMouseOut() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;
	yRaisedElement = null;
	
	element.className = "Btn";
	image.className = "Ico";

	event.cancelBubble = true;
}

// Toolbar button onmousedown handler
function BtnMouseDown() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		event.returnValue=false;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;

	element.className = "BtnMouseOverDown";
	image.className = "IcoDown";

	event.cancelBubble = true;
	event.returnValue=false;
	return false;
}

// Toolbar button onmouseup handler
function BtnMouseUp() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;

	if (element.YUSERONCLICK) eval(element.YUSERONCLICK + "anonymous()");

	element.className = "BtnMouseOverUp";
	image.className = "Ico";

	event.cancelBubble = true;
	return false;
}

// Populate a toolbar with the elements within it
function PopulateTB(y) {
	var i, elements, element;

	// Iterate through all the top-level elements in the toolbar
	elements = y.children;
	for (i=0; i<elements.length; i++) {
		element = elements[i];
		if (element.tagName == "SCRIPT" || element.tagName == "!") continue;
		
		switch (element.className) {
		case "Btn":
			if (element.YINITIALIZED == null) {
				if (! InitBtn(element)) {
					alert("Problem initializing:" + element.id);
					return false;
				}
			}
			
			element.style.posLeft = y.TBWidth;
			y.TBWidth += element.offsetWidth + 1;
			break;
			
		case "TBGen":
			element.style.posLeft = y.TBWidth;
			y.TBWidth += element.offsetWidth + 1;
			break;
			
		case "TBSep":
			element.style.posLeft = y.TBWidth + 2;
			y.TBWidth += 5;
			break;
			
		case "TBHandle":
			element.style.posLeft = 2;
			y.TBWidth += element.offsetWidth + 7;
			break;
			
		default:
			alert("Invalid class: " + element.className + " on Element: " + element.id + " <" + element.tagName + ">");
			return false;
		}
	}

	y.TBWidth += 1;
	return true;
}


// 设置所属表单的提交或reset事件
function setLinkedField() {
	if (! objContent) return ;
	var oForm = objContent.form ;
	if (!oForm) return ;
	// 附加submit事件
	oForm.attachEvent("onsubmit", AttachSubmit) ;
	if (! oForm.submitEditor) oForm.submitEditor = new Array() ;
	oForm.submitEditor[oForm.submitEditor.length] = AttachSubmit ;
	if (! oForm.originalSubmit) {
		oForm.originalSubmit = oForm.submit ;
		oForm.submit = function() {
			if (this.submitEditor) {
				for (var i = 0 ; i < this.submitEditor.length ; i++) {
					this.submitEditor[i]() ;
				}
			}
			this.originalSubmit() ;
		}
	}
	// 附加reset事件
	oForm.attachEvent("onreset", AttachReset) ;
	if (! oForm.resetEditor) oForm.resetEditor = new Array() ;
	oForm.resetEditor[oForm.resetEditor.length] = AttachReset ;
	if (! oForm.originalReset) {
		oForm.originalReset = oForm.reset ;
		oForm.reset = function() {
			if (this.resetEditor) {
				for (var i = 0 ; i < this.resetEditor.length ; i++) {
					this.resetEditor[i]() ;
				}
			}
			this.originalReset() ;
		}
	}
}

// 附加submit提交事件,大表单数据提交,保存eWebEditor中的内容
function AttachSubmit() { 
	ContentEdit.value = getHTML();
	objContent.value = ContentEdit.value;

	var oForm = objContent.form ;
	if (!oForm) return ;

	//表单限制值设定，限制值是102399，考虑到中文设为一半
	var FormLimit = 50000 ;

	//取当前表单的值 
	var TempVar = new String ;
	TempVar = objContent.value ;

	// 未提交成功再次处理时，先赋空值
	for (var i=1;i<parent.document.getElementsByName(sContentName).length;i++) {
		parent.document.getElementsByName(sContentName)[i].value = "";
	}

	//如果表单值超过限制，拆成多个对象
	if (TempVar.length > FormLimit) { 
		objContent.value = TempVar.substr(0, FormLimit) ;
		TempVar = TempVar.substr(FormLimit) ;

		while (TempVar.length > 0) { 
			var objTEXTAREA = objContent.document.createElement("TEXTAREA") ;
			objTEXTAREA.name = sContentName ;
			objTEXTAREA.style.display = "none" ;
			objTEXTAREA.value = TempVar.substr(0, FormLimit) ;
			oForm.appendChild(objTEXTAREA) ;

			TempVar = TempVar.substr(FormLimit) ;
		} 
	} 
} 

// 附加Reset事件
function AttachReset() {
	if(bEditMode){
		eWebEditor.document.body.innerHTML = ContentLoad.value;
	}else{
		eWebEditor.document.body.innerText = ContentLoad.value;
	}
}

// 粘贴时自动检测是否来源于Word格式
function onPaste() {
	if (config.AutoDetectPasteFromWord && BrowserInfo.IsIE55OrMore) {
		var sHTML = GetClipboardHTML() ;
		var re = /<\w[^>]* class="?MsoNormal"?/gi ;
		if ( re.test( sHTML ) )
		{
			if ( confirm( "你要粘贴的内容好象是从Word中拷出来的，是否要先清除Word格式再粘贴？" ) )
			{
				cleanAndPaste( sHTML ) ;
				return false ;
			}
		}
	}
	else
		return true ;
}

function GetClipboardHTML() {
	var oDiv = document.getElementById("divTemp")
	oDiv.innerHTML = "" ;
	
	var oTextRange = document.body.createTextRange() ;
	oTextRange.moveToElementText(oDiv) ;
	oTextRange.execCommand("Paste") ;
	
	var sData = oDiv.innerHTML ;
	oDiv.innerHTML = "" ;
	
	return sData ;
}

function cleanAndPaste( html ) {
	// Remove all SPAN tags
	html = html.replace(/<\/?SPAN[^>]*>/gi, "" );
	// Remove Class attributes
	html = html.replace(/<(\w[^>]*) class=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove Style attributes
	html = html.replace(/<(\w[^>]*) style="([^"]*)"([^>]*)/gi, "<$1$3") ;
	// Remove Lang attributes
	html = html.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove XML elements and declarations
	html = html.replace(/<\\?\?xml[^>]*>/gi, "") ;
	// Remove Tags with XML namespace declarations: <o:p></o:p>
	html = html.replace(/<\/?\w+:[^>]*>/gi, "") ;
	// Replace the &nbsp;
	html = html.replace(/&nbsp;/, " " );
	// Transform <P> to <DIV>
	var re = new RegExp("(<P)([^>]*>.*?)(<\/P>)","gi") ;	// Different because of a IE 5.0 error
	html = html.replace( re, "<div$2</div>" ) ;
	
	insertHTML( html ) ;
}

// 在当前文档位置插入.
function insertHTML(html) {
	if (!validateMode()) return;
	if (eWebEditor.document.selection.type.toLowerCase() != "none")
		eWebEditor.document.selection.clear() ;
	eWebEditor.document.selection.createRange().pasteHTML(html) ; 
}

// 设置编辑器的内容
function setHTML(html) {
	if (!validateMode()) return;
	ContentEdit.value = html;
	if(bEditMode){
		eWebEditor.document.body.innerHTML = html;
	}else{
		eWebEditor.document.body.innerText = html;
	}
}

// 取编辑器的内容
function getHTML() {
	if(bEditMode){
		return eWebEditor.document.body.innerHTML;
	}else{
		return eWebEditor.document.body.innerText;
	}
}

// 在尾部追加内容
function appendHTML(html) {
	if (!validateMode()) return;
	if(bEditMode){
		eWebEditor.document.body.innerHTML += html;
	}else{
		eWebEditor.document.body.innerText += html;
	}
}

// 从Word中粘贴，去除格式
function PasteWord(){
	if (!validateMode()) return;
	eWebEditor.focus();
	if (BrowserInfo.IsIE55OrMore)
		cleanAndPaste( GetClipboardHTML() ) ;
	else if ( confirm( "此功能要求IE5.5版本以上，你当前的浏览器不支持，是否按常规粘贴进行？" ) )
		format("paste") ;
	eWebEditor.focus();
}

// 粘贴纯文本
function PasteText(){
	if (!validateMode()) return;
	eWebEditor.focus();
	var sText = HTMLEncode( clipboardData.getData("Text") ) ;
	insertHTML(sText);
	eWebEditor.focus();
}

// 检测当前是否允许编辑
function validateMode() {
	if (bEditMode) return true;
	alert("需转换为编辑状态后才能使用编辑功能！");
	eWebEditor.focus();
	return false;
}

// 格式化编辑器中的内容
function format(what,opt) {
	if (!validateMode()) return;
	eWebEditor.focus();
	if (opt=="RemoveFormat") {
		what=opt;
		opt=null;
	}

	if (opt==null) eWebEditor.document.execCommand(what);
	else eWebEditor.document.execCommand(what,"",opt);
	
	eWebEditor.focus();
}

// 确保焦点在 eWebEditor 内
function VerifyFocus() {
	if ( eWebEditor )
		eWebEditor.focus();
}

// 改变模式：代码、编辑、预览
function setMode(NewMode){
	if (NewMode!=sCurrMode){
		// 换图片
		document.all["eWebEditor_CODE"].style.display = "none";
		document.all["eWebEditor_EDIT"].style.display = "none";
		document.all["eWebEditor_VIEW"].style.display = "none";
		document.all["eWebEditor_"+NewMode].style.display = "block";
		// 换内容
		switch (NewMode){
		case "CODE":
			if (eWebEditor.document.designMode=="On") {
				eWebEditor.document.body.innerText=eWebEditor.document.body.innerHTML;
			}else {
				var temp=eWebEditor.document.body.innerHTML;
				eWebEditor.document.designMode="On";
				eWebEditor.document.open();
				eWebEditor.document.write(bodyTag);
				eWebEditor.document.body.innerText=temp;
				eWebEditor.document.close();
				temp=null;
			}
			bEditMode=false;
			break;
		case "EDIT":
			eWebEditor.document.body.disabled=false;
			if (eWebEditor.document.designMode=="On") {
				eWebEditor.document.body.innerHTML=eWebEditor.document.body.innerText;
			}else {
				var temp=eWebEditor.document.body.innerHTML;
				eWebEditor.document.designMode="On";
				eWebEditor.document.open();
				eWebEditor.document.write(bodyTag);
				eWebEditor.document.body.innerHTML=temp;
				eWebEditor.document.close();
				temp=null;
			}
			bEditMode=true;
			break;
		case "VIEW":
			var temp;
			if(bEditMode){
				temp = eWebEditor.document.body.innerHTML;
			}else{
				temp = eWebEditor.document.body.innerText;
			}
			eWebEditor.document.designMode="off";
			eWebEditor.document.open();
			eWebEditor.document.write(bodyTag+temp);
			eWebEditor.document.close();
			bEditMode=false;
			break;
		}
		sCurrMode=NewMode;
		for (var i=0;i<eWebEditor_Tool.children.length;i++){
			eWebEditor_Tool.children[i].disabled=(!bEditMode);
		}
	}
	eWebEditor.focus();
}

// 显示无模式对话框
function ShowDialog(url, width, height, optValidate) {
	if (optValidate) {
		if (!validateMode()) return;
	}
	eWebEditor.focus();
	var arr = showModalDialog(url, window, "dialogWidth:" + width + "px;dialogHeight:" + height + "px;help:no;scroll:no;status:no");
	eWebEditor.focus();
}

// 全屏编辑
function Maximize() {
    window.open("dialog/fullscreen.htm?style="+config.StyleName, 'FullScreen'+sContentName, 'toolbar=no,location=no,directories=no,status=yes,menubar=no,scrollbars=yes,resizable=yes,fullscreen==yes');
}

// 替换特殊字符
function HTMLEncode(text){
	text = text.replace(/&/g, "&amp;") ;
	text = text.replace(/"/g, "&quot;") ;
	text = text.replace(/</g, "&lt;") ;
	text = text.replace(/>/g, "&gt;") ;
	text = text.replace(/'/g, "&#146;") ;
	text = text.replace(/\ /g,"&nbsp;");
	text = text.replace(/\n/g,"<br>");
	text = text.replace(/\t/g,"&nbsp;&nbsp;&nbsp;&nbsp;");
	return text;
}

// 插入特殊对象
function insert(what) {
	if (!validateMode()) return;
	eWebEditor.focus();
	var sel = eWebEditor.document.selection.createRange();

	switch(what){
	case "excel":		// 插入EXCEL表格
		insertHTML("<object classid='clsid:0002E510-0000-0000-C000-000000000046' id='Spreadsheet1' codebase='file:\\Bob\software\office2000\msowc.cab' width='100%' height='250'><param name='HTMLURL' value><param name='HTMLData' value='&lt;html xmlns:x=&quot;urn:schemas-microsoft-com:office:excel&quot;xmlns=&quot;http://www.w3.org/TR/REC-html40&quot;&gt;&lt;head&gt;&lt;style type=&quot;text/css&quot;&gt;&lt;!--tr{mso-height-source:auto;}td{black-space:nowrap;}.wc4590F88{black-space:nowrap;font-family:宋体;mso-number-format:General;font-size:auto;font-weight:auto;font-style:auto;text-decoration:auto;mso-background-source:auto;mso-pattern:auto;mso-color-source:auto;text-align:general;vertical-align:bottom;border-top:none;border-left:none;border-right:none;border-bottom:none;mso-protection:locked;}--&gt;&lt;/style&gt;&lt;/head&gt;&lt;body&gt;&lt;!--[if gte mso 9]&gt;&lt;xml&gt;&lt;x:ExcelWorkbook&gt;&lt;x:ExcelWorksheets&gt;&lt;x:ExcelWorksheet&gt;&lt;x:OWCVersion&gt;9.0.0.2710&lt;/x:OWCVersion&gt;&lt;x:Label Style='border-top:solid .5pt silver;border-left:solid .5pt silver;border-right:solid .5pt silver;border-bottom:solid .5pt silver'&gt;&lt;x:Caption&gt;Microsoft Office Spreadsheet&lt;/x:Caption&gt; &lt;/x:Label&gt;&lt;x:Name&gt;Sheet1&lt;/x:Name&gt;&lt;x:WorksheetOptions&gt;&lt;x:Selected/&gt;&lt;x:Height&gt;7620&lt;/x:Height&gt;&lt;x:Width&gt;15240&lt;/x:Width&gt;&lt;x:TopRowVisible&gt;0&lt;/x:TopRowVisible&gt;&lt;x:LeftColumnVisible&gt;0&lt;/x:LeftColumnVisible&gt; &lt;x:ProtectContents&gt;False&lt;/x:ProtectContents&gt; &lt;x:DefaultRowHeight&gt;210&lt;/x:DefaultRowHeight&gt; &lt;x:StandardWidth&gt;2389&lt;/x:StandardWidth&gt; &lt;/x:WorksheetOptions&gt; &lt;/x:ExcelWorksheet&gt;&lt;/x:ExcelWorksheets&gt; &lt;x:MaxHeight&gt;80%&lt;/x:MaxHeight&gt;&lt;x:MaxWidth&gt;80%&lt;/x:MaxWidth&gt;&lt;/x:ExcelWorkbook&gt;&lt;/xml&gt;&lt;![endif]--&gt;&lt;table class=wc4590F88 x:str&gt;&lt;col width=&quot;56&quot;&gt;&lt;tr height=&quot;14&quot;&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/body&gt;&lt;/html&gt;'> <param name='DataType' value='HTMLDATA'> <param name='AutoFit' value='0'><param name='DisplayColHeaders' value='-1'><param name='DisplayGridlines' value='-1'><param name='DisplayHorizontalScrollBar' value='-1'><param name='DisplayRowHeaders' value='-1'><param name='DisplayTitleBar' value='-1'><param name='DisplayToolbar' value='-1'><param name='DisplayVerticalScrollBar' value='-1'> <param name='EnableAutoCalculate' value='-1'> <param name='EnableEvents' value='-1'><param name='MoveAfterReturn' value='-1'><param name='MoveAfterReturnDirection' value='0'><param name='RightToLeft' value='0'><param name='ViewableRange' value='1:65536'></object>");
		break;
	case "nowdate":		//插入当前系统日期
		var d = new Date();
		insertHTML(d.toLocaleDateString());
		break;
	case "nowtime":		//插入当前系统时间
		var d = new Date();
		insertHTML(d.toLocaleTimeString());
		break;
	case "br":			//插入换行符
		insertHTML("<br>")
		break;
	case "code":		//代码片段样式
		insertHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #6595d6; TABLE-LAYOUT: fixed"><tr><td bgcolor=#e8f4ff style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">以下是代码片段：</font><br>'+HTMLEncode(sel.text)+'</td></tr></table>');
		break;
	case "quote":		//引用片段样式
		insertHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #6595d6; TABLE-LAYOUT: fixed"><tr><td bgcolor=#e8f4ff style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">以下是引用片段：</font><br>'+HTMLEncode(sel.text)+'</td></tr></table>');
		break;
	case "big":
		insertHTML("<big>" + sel.text + "</big>");
		break;
	case "small":
		insertHTML("<small>" + sel.text + "</small>");
		break;
	default:
		alert("错误参数调用！");
		break;
	}
	sel=null;
}