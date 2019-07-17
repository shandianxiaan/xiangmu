<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/Site.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/zy.all.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/font-awesome.min.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/amazeui.min.css" />
	  <link rel="stylesheet" href="<%=Const.ROOT%>/css/admin.css" />
	</head>

	<body>
		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul id="menu">
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">销售单管理</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加销售</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">退货</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord"">
										<thead>							
											<tr style="font-size:8px">
												<th width="5%">编号</th>
												<th width="10%">商品名称</th>
												<th width="10%">商品类型</th>
												<th width="10%">价格</th>
												<th width="10%">数量</th>
												
												<th width="10%">折扣金额</th>
												<th width="10%">产地</th>
												<th width="10%">状态</th>
												<th width="5%">顾客名称</th>
												<th width="8%">经手人</th>
												<th width="8%">批号</th>
												<th width="8%">批准文号</th>
												<th width="8%">销售时间</th>
												<th width="8%">编辑</th>
												<th width="8%">删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.tname}</td>
												<td>${item.sprice}</td>
												<td>${item.cnumber}</td>
												
												<td>${item.discout}</td>
												<td>${item.productAddress}</td>
												<td>${item.status}</td>
												<td>${item.customerName}</td>
												<td>${item.muser}</td>
												<td>${item.batch}</td>
												<td>${item.license}</td>
												<td>${item.rtime}</td>
												<td class="edit"><button onclick="btn_edit(${item.id})"><i class="icon-edit bigger-120"></i>退货</button></td>
												<td class="delete"><button onclick="btn_delete(${item.id})"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
										</c:forEach>
										</tbody>
									
									</table>
									<div style="font-size:12px">
									<span>以上记录共:${pageInfo.total}条，打印本页</span>
									<div style="position: relative;left:450px">
									<span>本页显示:${pageInfo.size}条</span>
									<span>${pageInfo.pageSize}条/页</span>
									
									<a href="<%=Const.ROOT%>/sales/salesList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/sales/salesList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/sales/salesList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/sales/salesList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
								<span>当前页：${pageInfo.pageNum}/共${pageInfo.pages}页</span>	
								</div>
								</div>
									
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						<ul class="theme-popbod dform" style="display: none;">
								<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						<form class="am-form am-form-horizontal"
							action="<%=Const.ROOT%>/sales/add" method="post">
							
							
						<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								商品名称</label>
								<div class="am-u-sm-9">
									<select name="gid" id="gid">
										<option value="-1">请选择商品</option>
										 <c:forEach items="${requestScope.goodsList}" var="item" varStatus="st">
                                        <option value="${item.id}" >${item.goodsName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								顾客名称</label>
								<div class="am-u-sm-9">
									<select name="cid" required id="pname">
										<option value="">请选择顾客</option>
										 <c:forEach items="${requestScope.customerList}" var="item" varStatus="st">
                                        <option value="${item.id}" >${item.customerName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>
							
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									销售数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="cnumber" required
										placeholder="销售数量" name="cnumber"><small>库存数量：</small><small id="cc"></small>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									销售单价</label>
								<div class="am-u-sm-9">
									<input type="text" id="sprice" required
										placeholder="销售单价" name="sprice">
								</div>
							</div>
							
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" id="btn" class="am-btn am-btn-success"  value="添加销售" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
	
							<!--添加 end-->
						</ul>
						
						
						
						
						
					
						<ul class="theme-popbod dform" style="display: none;">
								<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;" id="ff">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						
								<form class="am-form am-form-horizontal"
							action="<%=Const.ROOT%>/sales/tuihuo" method="post">
									<input type="hidden" id="ids" name="sid"/>
							
						<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="n1" 
										placeholder="商品名称" disabled="disabled">
								</div>
							</div>
							
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="cnumber1" 
										placeholder="数量" disabled="disabled">
								</div>
							</div>
								
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									单价</label>
								<div class="am-u-sm-9">
									<input type="text" id="sprice1" 
										placeholder="单价" disabled="disabled">
								</div>
							</div>
								
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									总金额</label>
								<div class="am-u-sm-9">
									<input type="text" id="sTotal1" 
										placeholder="总金额" disabled="disabled">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									顾客名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerName1" 
										placeholder="顾客名称" disabled="disabled">
								</div>
							</div>
								
									<div class="am-form-group">
								<label for="user-intro" class="am-u-sm-3 am-form-label">
									退货理由</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="user-intro" name="reason"
										placeholder="输入退货理由"></textarea>
								</div>
							</div>



							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn  am-btn-success" id="btnss" value="退货" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
	
							<!--添加 end-->
						</ul>
						
						
						
					</div>
				</div>
				<!--tab end-->

			</div>

			
			 <script src="<%=Const.ROOT%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
              <script src="<%=Const.ROOT%>/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
              <script src="<%=Const.ROOT%>/js/_layout.js"></script>
             <script src="<%=Const.ROOT%>/js/plugs/jquery.SuperSlide.source.js"></script>
			<script>
			
			
			
			
			
				var num = 1;
				$(function(){
					$("#menu li").each(function(index,li){
						$(li).click(function(){
							$(this).addClass("on").siblings().removeClass("on");
							$(".bd ul").eq(index).show().siblings().hide();
						});
					});
				});
				
		
	
	var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/sales/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/sales/salesList";
									}
								}
							});
						}
					});
				}
		
		$("#gid").change(function(){
			var gid = $("#gid").val();
	        $.ajax({
	            type : "POST",   
	            url : "<%=Const.ROOT%>/sales/select",
	            data :{gid:gid},
	            dataType:"json",
	            success : function(data) {
	                var sum=data.jsondata;
	               $("#cc").text(sum);    
					
			}
			});
		
		});
		
		
	$(function(){
        $("#btn").click(function(){
        
            var repwd=$("#cnumber").get(0);
            var cc=parseInt($("#cc").text());
            var cnumber=parseInt($("#cnumber").val());
            //alert($("#cc").text());
            if(cc<cnumber){
                repwd.setCustomValidity("库存不够");
            }else{
                repwd.setCustomValidity("");
            }

        });
    });
		
		
				$("#haha").click(function(){
					$("#ff input").val("");
					if($("#ids").val()==""){
					alert("请选择您要退货的商品")
					
					location.href="<%=Const.ROOT%>/sales/salesList";
					}
				
				})
				
				
				
				function btn_edit(id){
					//加载数据
					
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/sales/toupdate",
								data: { id: id },
								success: function(data) {
								if(data.sales.status=="已退货"){
									alert("已退货过的商品，不能再退");
									location.href="<%=Const.ROOT%>/sales/salesList";
									
								}
									$("#ff input").val("");
									$("#btnss").val("退货");
									$("#ids").val(data.sales.id);
									$("#n1").val(data.goods.goodsName);
									$("#cnumber1").val(data.sales.cnumber);
									$("#sTotal1").val(data.sales.discout);
									$("#sprice1").val(data.sales.sprice);
									$("#customerName1").val(data.customer.customerName);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
				
		
		
		
	
			</script>

		</div>
	</body>

</html>