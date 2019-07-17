<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">商品管理</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加商品</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改商品</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>							
											<tr>
												<th width="10%">商品编号</th>
												<th width="10%">商品名称</th>
												<th width="5%">批号</th>
												<th width="5%">批准文号</th>
												<th width="10%">产地</th>
												<th width="5%">规格</th>
												<th width="5%">包装</th>
												<th width="5%">价格</th>
												<th width="10%">供应商</th>
												<th width="10%">类型</th>
												<th width="10%">编辑</th>
												<th width="10%">删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.batch}</td>
												<td>${item.license}</td>
												<td>${item.productAddress}</td>
												<td>${item.goodSize}</td>
												<td>${item.packaging}</td>
												<td>${item. price}</td>
												<td>${item. sname}</td>
												<td>${item. tname}</td>
												<td class="edit"><button onclick="btn_edit(${item.id})"><i class="icon-edit bigger-120"></i>编辑</button></td>
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
									
									<a href="<%=Const.ROOT%>/goods/goodsList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/goods/goodsList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/goods/goodsList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/goods/goodsList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
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
							action="<%=Const.ROOT%>/goods/add" method="post">
						
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="name" required
										placeholder="商品名称" name="goodsName">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品批号</label>
								<div class="am-u-sm-9">
									<input type="text" id="batch" required
										placeholder="商品批号" name="batch">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品批准文号</label>
								<div class="am-u-sm-9">
									<input type="text" id="license" required
										placeholder="商品批准文号" name="license">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									产地</label>
								<div class="am-u-sm-9">
									<input type="text" id="productAddress" required
										placeholder="产地" name="productAddress">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									规格</label>
								<div class="am-u-sm-9">
									<input type="text" id="goodSize" required
										placeholder="规格" name="goodSize">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									包装</label>
								<div class="am-u-sm-9">
									<input type="text" id="packaging" required
										placeholder="包装" name="packaging">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="number" required
										placeholder="数量" name="number">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									短缺预警数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="warnshort" required
										placeholder="短缺预警数量" name="warnshort">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									超存预警数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="warnhight" required
										placeholder="超存预警数量" name="warnhight">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									价格</label>
								<div class="am-u-sm-9">
									<input type="text" id="price" required
										placeholder="价格" name="price">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								供应商</label>
								<div class="am-u-sm-9">
									<select name="sname" required>
										<option value="">请选择供应商</option>
										 <c:forEach items="${requestScope.supplyList}" var="item" varStatus="st">
                                        <option value="${item.companyName}" >${item.companyName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								分类</label>
								<div class="am-u-sm-9">
									<select name="tname" required>
										<option value="">请选择分类</option>
										 <c:forEach items="${requestScope.goodsTypeList}" var="item" varStatus="st">
                                        <option value="${item.typeName}" >${item.typeName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加商品" />
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
							action="<%=Const.ROOT%>/goods/update" method="post">
							<input type="hidden" id="ids" name="id"/>
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="n1" required
										placeholder="商品名称" name="goodsName" value="">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品批号</label>
								<div class="am-u-sm-9">
									<input type="text" id="batch1" required
										placeholder="商品批号" name="batch">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品批准文号</label>
								<div class="am-u-sm-9">
									<input type="text" id="license1" required
										placeholder="商品批准文号" name="license">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									产地</label>
								<div class="am-u-sm-9">
									<input type="text" id="productAddress1" required
										placeholder="产地" name="productAddress">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									规格</label>
								<div class="am-u-sm-9">
									<input type="text" id="goodSize1" required
										placeholder="规格" name="goodSize">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									包装</label>
								<div class="am-u-sm-9">
									<input type="text" id="packaging1" required
										placeholder="包装" name="packaging">
								</div>
							</div>
							
							
							
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								供应商</label>
								<div class="am-u-sm-9">
									<select name="sname" required id="s1">
										<option value="">请选择供应商</option>
										 <c:forEach items="${requestScope.supplyList}" var="item" varStatus="st">
                                        <option value="${item.companyName}" >${item.companyName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
								分类</label>
								<div class="am-u-sm-9">
									<select name="tname" required>
										<option value="">请选择分类</option>
										 <c:forEach items="${requestScope.goodsTypeList}" var="item" varStatus="st">
                                        <option value="${item.typeName}" >${item.typeName}</option>
                                    </c:forEach>
									</select>
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" id="btn" class="am-btn am-btn-success" value="修改商品" />
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

				 //$(".tabs").slide({ trigger: "click" });
				
			

	
	var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/goods/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/goods/goodsList";
									}
								}
							});
						}
					});
				}
				
			
				$("#haha").click(function(){
					$("#ff input").val("");
					if($("#ids").val()==""){
					alert("请选择您要修改的商品")
					location.href="<%=Const.ROOT%>/goods/goodsList";
					}
				
				})
				
				
				
				function btn_edit(id){
					//加载数据
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/goods/toupdate",
								data: { id: id },
								success: function(data) {
									$("#ff input").val("")
									$("#btn").val("修改商品")
									$("#ids").val(data.id);
									$("#n1").val(data.goodsName);
									$("#batch1").val(data.batch);
									$("#license1").val(data.license);
									$("#productAddress1").val(data.productAddress);
									$("#goodSize1").val(data.goodSize);
									$("#packaging1").val(data.packaging);
									$("#number1").val(data.number);
									$("#price1").val(data.price);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
			</script>

		</div>
	</body>

</html>