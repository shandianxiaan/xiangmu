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
		<style>
		
		</style>
	<body>
		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd" >
						<ul id="menu">
							<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">查看采购退货单</li>
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
												<th width="5%">编号</th>
												<th width="10%">退货名称</th>
												<th width="5%">批号</th>
												<th width="5%">批准文号</th>
												<th width="5%">产地</th>
												<th width="5%">退货数量</th>
												<th width="3%">价格</th>
												<th width="3%">退货金额</th>
												<th width="10%">供应商</th>
												<th width="5%">类型</th>
												<th width="5%">经手人</th>
												<th width="10%">采购时间</th>
												<th width="10%">退货时间</th>
													</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td class="td_center">${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.batch}</td>
												<td>${item.license}</td>
												<td>${item.productAddress}</td>
												<td>${item.pnumber}</td>
												<td>${item.price}</td>
												<td>${item.total}</td>
												<td>${item.sname}</td>
												<td>${item.tname}</td>
												<td>${item.muser}</td>
												<td>${item.rtime}</td>
												<td>${item.utime}</td>
													</tr>
											</c:forEach>
										</tbody>
									
									</table>
									<div style="font-size:12px">
									<span>以上记录共:${pageInfo.total}条，打印本页</span>
									<div style="position: relative;left:450px">
									<span>本页显示:${pageInfo.size}条</span>
									<span>${pageInfo.pageSize}条/页</span>
									
									<a href="<%=Const.ROOT%>/preturn/preturnList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/preturn/preturnList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/preturn/preturnList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/preturn/preturnList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
								<span>当前页：${pageInfo.pageNum}/共${pageInfo.pages}页</span>	
								</div>
								</div>
								</div>
								<!--分页显示角色信息 end-->
							</li>
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
				
			

				
				var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/preturn/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/preturn/preturnList";
									}
								}
							});
						}
					});
				}
				
				
				
			</script>

		</div>
	</body>

</html>