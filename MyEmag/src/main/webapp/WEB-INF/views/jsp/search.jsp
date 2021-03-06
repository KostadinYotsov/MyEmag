<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="insertHeader.jsp" />
	
	<div class="content">
			<div class="container">				
				<!--products-->
			<div class="content-mid">
			<h3>Results from search : </h3>
				<label class="line"></label>
			<c:if test="${searchResult==null }">
				<h3>No results!!!</h3>
			</c:if>	
			<c:forEach items="${searchResult}" var="product">	
				
					<div class=" mid-pop" style="display:table-cell;">
					<div class="pro-img">	
						<c:set var="index" value="${0}"/>
						<img src="/MyEmag/image/${product.productId}/${index}" height=200 width=200 class="img-responsive" alt=""> 
						<div class="zoom-icon ">
						 <a class="picture" href="/MyEmag/image/${product.productId}/${index}" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="product/${product.productId}"><i class="glyphicon glyphicon-menu-right icon"></i></a> 
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span><a href="single">${product.title}</a></span>
							</div>
							
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<span>$${product.price}</span>
								<c:if test="${sortedProduct.salePrice != 0}">
   									<span class="mid-2 sale-bg-color">Sale: $${product.salePrice}</span>
							    </c:if>	
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>								
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
										
			</c:forEach>
			</div>				
			</div> 	
		</div>
	
<jsp:include page="insertFooter.jsp" />
</body>
</html>