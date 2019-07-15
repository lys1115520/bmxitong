//条件查询
//点击按钮 如果内容为 (展开) 改变大容器的高度为
//每一行的高度*显示子元素个数（$blockChild）  改变按钮的内容为 （收起）
//否则 改变大容器的高度为 每一行的高度*6 改变按钮的内容(展开）
//1.获取点击事件的元素 获取要改变的元素
var $cdbtn=$("#conditionBtn");
var $searchcontainer=$("#searchCdtion");

//console.log($cdbtn)
//console.log($searchcontainer)
//console.log($cdbtn.html())
//2.给按钮绑定点击事件
$cdbtn.click(function(){
	var $blockChild=$searchcontainer.children(":not(.d_none)");//不包含d_none 类的子元素
	//console.log($width)
	var $width=$blockChild.length*41;
	if($cdbtn.html()=="收起"){
		$searchcontainer.css("height","246px");
		$cdbtn.html(["展开"])
	}else{
		$searchcontainer.css("height",$width);
		$cdbtn.html(["收起"])
	}
});

//点击分类子标签  已选条件显示，分类子标签添加到已选条件下
//div容器里的分类子标签隐藏 （添加display：none属性） 
//  判断行数大于6改变容器的高度为 每一行的高度*6  如果小于6
//隐藏 收起/展开按钮

//1.获取点击事件的元素 获取要改变的元素
var $conditionList=$(".conditionList li a");
var $slected_condition=$("#slected_condition")
var $cancel_parent=$("#cancel_parent")
//2.绑定点击事件
$conditionList.click(function(){
	var $this=$(this);
	$slected_condition.removeClass("d_none");
	//获取点击的内容制作成html片段
	var $title=$this.parent().parent().children().first().html();
	var $content=$this.html();
	//console.log($title);
	//console.log($content);
	var $elem=$(`<span class="conditions">
		<b>${$title}</b>
		<a href="javascript:;">${$content}&nbsp;x</a>
		<span>`);
	//console.log($elem);
	//分类子标签添加到已选条件下
	$elem.appendTo($cancel_parent)
	$this.parents(".conditionList").addClass("d_none");
	var $blockChild=$searchcontainer.children(":not(.d_none)");
	//console.log($blockChild.length)
	if($blockChild.length>6){
		$searchcontainer.css("height","246px");
		$cdbtn.html(["展开"])
	}else{//小于6按钮隐藏
		$cdbtn.parent().addClass("d_none");
	}
});

//3.点击已选条件下的分类子标签删除按钮   已选条件下的分类子标签删除
//div容器里的分类子标签显示 （移除display：none属性）   
//判断行数（子元素没有display：none的属性）
//大于6改变容器的高度为 
//每一行的高度*6  显示 展开按钮
//1.获取点击事件元素
var $cancel_select=$("#slected_condition");
$cancel_select.on("click",".conditions a",function(){
	var a=$(this).prev().html();
	//console.log(a);
	var $div=$("div.conditionList:contains("+a+")");
	//console.log($div)
	$div.removeClass("d_none")
	$(this).parent().remove();
	var b=$("#slected_condition .conditions")
	//console.log(b.length)
	var $blockChild=$searchcontainer.children(":not(.d_none)");
	//var $width=$blockChild.length*41;
	if(b.length==0){
		$slected_condition.addClass("d_none");
	}else if(b.length<7){
		$cdbtn.parent().removeClass("d_none");
	//	$searchcontainer.css("height",$width);
	}
 });

//点击全部撤销事件
var $cancelAll=$("#cancel")
$cancelAll.click(function(){
	$(".conditions").remove();
	$slected_condition.addClass("d_none");
	$(".conditionList").removeClass("d_none");
});















