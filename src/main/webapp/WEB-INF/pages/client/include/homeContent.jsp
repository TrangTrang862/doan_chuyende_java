<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value='/js/client/homeAjax.js'/>" ></script>
		   <!--start-image-slider---->
					<div class="wrap">
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="Frontend/img/ghe2.png" alt=""></li>
					      <li><img src="Frontend/img/ghe1.jpg" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
					</div>
		    <div class="clear"> </div>
		    <div class="wrap">
		    <div class="content">
		    	<div class="top-3-grids">
		    		<div class="section group">
				<div class="grid_1_of_3 images_1_of_3">
					  <a href="single.html"><img src="Frontend/img/ghe4.jpg"></a>
					  <h3>Thương hiệu nổi bật </h3>
				</div>
				<div class="grid_1_of_3 images_1_of_3 ">
					   <a href="single.html"><img src="Frontend/img/ghe5.jpg" style="background-color: white"></a>
					  <h3 >Thương hiệu nổi bật</h3>
				</div>
				<div class="grid_1_of_3 images_1_of_3 ">
					   <a href="single.html"><img src="Frontend/img/ghe6.jpg" style="background-color: white"></a>
					  <h3>Thương hiệu nổi bật</h3>
				</div>
			</div>
		    	</div>
		    	
		    <div class="content-grids">
		    	<h4>DANH SÁCH SẢN PHẨM MỚI NHẤT</h4>
				<input type="hidden" value="${pageContext.request.userPrincipal.name != null}" id="check_login">
			</div>
			
			
		    
		    	</div>
		    	<div class="content-sidebar">
		    		<h4>Danh mục</h4>
						<ul id="danhmuc">
						
						</ul>
		    	</div>
		    </div>
		    <div class="clear"> </div>
		    </div>
		    
