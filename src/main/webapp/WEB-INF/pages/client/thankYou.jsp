<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<script src="Frontend/js/jquery.min.js"></script>
		<script src="Frontend/js/responsiveslides.min.js"></script>
		<script src="js/client/accounting.js"></script>
	<title>Thanh toán</title>
	</head>

	<script type="text/javascript">	  
	$(document).ready(function() { 
		 $(".mytable .donGia .check").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
	  
		 $(".mytable .total").each(function() {
			  var value = accounting.formatMoney($(this).text()) + ' VND ';
			  $(this).html(value);
			 
			});
	  });
	</script>
	<body>
		
		<!----start-Header---->
	 <jsp:include page="include/homeHeader.jsp"></jsp:include>
		<!----End-Header---->
		 
	<div class= "container">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
		<br>
		<p><b>QUÝ KHÁCH ĐÃ ĐẶT HÀNG THÀNH CÔNG</b></p><br>

		<p>Shop xin chân thành cảm ơn quý khách hàng đã tin tưởng sử dụng dịch vụ, sản phẩm của chúng tôi</p><br>
		<a href="<%=request.getContextPath()%>/">Nhấn vào đây để tiếp tục mua sắm</a>
		</div>
		<div class="col-md-1">
		</div>
	
	
	
	</div>
	
	
	</div>
		   
		<!----start-Footder---->
	<jsp:include page="include/homeFooter.jsp"></jsp:include>
	<!----End-Footder---->
	<script src="<c:url value='/js/client/checkoutAjax.js'/>" ></script>	
	</body>
</html>

