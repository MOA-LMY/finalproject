<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head id="heads">
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/goods_detail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/goods_detail.js"></script>

<script type="text/javascript">

$(function() {
	
	$('.product').each(function(i, el){					

		// Lift card and show stats on Mouseover
		$(el).find('.make3D').hover(function(){
				$(this).parent().css('z-index', "20");
				$(this).addClass('animate');
				$(this).find('div.carouselNext, div.carouselPrev').addClass('visible');			
			 }, function(){
				$(this).removeClass('animate');			
				$(this).parent().css('z-index', "1");
				$(this).find('div.carouselNext, div.carouselPrev').removeClass('visible');
		});	
		
		// Flip card to the back side
		$(el).find('.view_gallery').click(function(){	
			
			$(el).find('div.carouselNext, div.carouselPrev').removeClass('visible');
			$(el).find('.make3D').addClass('flip-10');			
			setTimeout(function(){					
			$(el).find('.make3D').removeClass('flip-10').addClass('flip90').find('div.shadow').show().fadeTo( 80 , 1, function(){
					$(el).find('.product-front, .product-front div.shadow').hide();															
				});
			}, 50);
			
			setTimeout(function(){
				$(el).find('.make3D').removeClass('flip90').addClass('flip190');
				$(el).find('.product-back').show().find('div.shadow').show().fadeTo( 90 , 0);
				setTimeout(function(){				
					$(el).find('.make3D').removeClass('flip190').addClass('flip180').find('div.shadow').hide();						
					setTimeout(function(){
						$(el).find('.make3D').css('transition', '100ms ease-out');			
						$(el).find('.cx, .cy').addClass('s1');
						setTimeout(function(){$(el).find('.cx, .cy').addClass('s2');}, 100);
						setTimeout(function(){$(el).find('.cx, .cy').addClass('s3');}, 200);				
						$(el).find('div.carouselNext, div.carouselPrev').addClass('visible');				
					}, 100);
				}, 100);			
			}, 150);			
		});			
		
		// Flip card back to the front side
		$(el).find('.flip-back').click(function(){		
			
			$(el).find('.make3D').removeClass('flip180').addClass('flip190');
			setTimeout(function(){
				$(el).find('.make3D').removeClass('flip190').addClass('flip90');
		
				$(el).find('.product-back div.shadow').css('opacity', 0).fadeTo( 100 , 1, function(){
					$(el).find('.product-back, .product-back div.shadow').hide();
					$(el).find('.product-front, .product-front div.shadow').show();
				});
			}, 50);
			
			setTimeout(function(){
				$(el).find('.make3D').removeClass('flip90').addClass('flip-10');
				$(el).find('.product-front div.shadow').show().fadeTo( 100 , 0);
				setTimeout(function(){						
					$(el).find('.product-front div.shadow').hide();
					$(el).find('.make3D').removeClass('flip-10').css('transition', '100ms ease-out');		
					$(el).find('.cx, .cy').removeClass('s1 s2 s3');			
				}, 100);			
			}, 150);			
			
		});				
	
		//makeCarousel(el);
	});	
		
	
	$('.sizes a span, .categories a span').each(function(i, el){
		
		$(el).append('<span class="x"></span><span class="y"></span>');
	
		$(el).parent().on('click', function(){
			$("#grid").empty();
			
			
			let values= $(this).text();
			let gc_num = (i+1);
			
			$.ajax({ 
				
				url:"${pageContext.request.contextPath}/shop/goods_detail/cg",
				data:{"gc_num": gc_num},
				type:"post",
				dataType:"json",
				success:function(data){
					
					
					$(data.list).each(function(i,d){
						
						let g_num = d.g_num; 
						let g_name = d.g_name; 
						let g_price = d.g_price; 
						let g_saveimg = d.g_saveimg; 
						let g_info = d.g_info; 
						console.log(g_saveimg)
						console.log(g_num+""+g_price);	
						
						let heads = `
						
						`;
						
						let html = 
							` 
							 <div class="product">
							    	
							        <div class="make3D">
							            <div class="product-front">
							                <div class="shadow"></div>
							                <img src="${pageContext.request.contextPath}/resources/img/goods/`+ g_saveimg + `" alt="" />
							                <div class="image_overlay"></div>
							                <div class="add_to_cart">Add to cart</div>
							                <div class="view_gallery">View gallery</div>                
							                <div class="stats">        	
							                    <div class="stats-container">
							                        <span class="product_price">$`+g_price+`</span>
							                        <span class="product_name">` + g_name + ` </span>    
							                        <p>`+ g_info +`</p>                                            
							                        
							                        <div class="product-options">
							                        <strong>SIZES</strong>
							                        <span>XS, S, M, L, XL, XXL</span>
							                        <strong>COLORS</strong>
							                        <div class="colors">
							                            <div class="c-blue"><span></span></div>
							                            <div class="c-red"><span></span></div>
							                            <div class="c-white"><span></span></div>
							                            <div class="c-green"><span></span></div>
							                        </div>
							                    </div>                       
							                    </div>                         
							                </div>
							            </div>
							            
							            <div class="product-back">
							                <div class="shadow"></div>
							                <div class="carousel">
							                    <ul class="carousel-container">
							                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1.jpg" alt="" /></li>
							                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2.jpg" alt="" /></li>
							                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3.jpg" alt="" /></li>
							                    </ul>
							                    <div class="arrows-perspective">
							                        <div class="carouselPrev">
							                            <div class="y"></div>
							                            <div class="x"></div>
							                        </div>
							                        <div class="carouselNext">
							                            <div class="y"></div>
							                            <div class="x"></div>
							                        </div>
							                    </div>
							                </div>
							                <div class="flip-back">
							                    <div class="cy"></div>
							                    <div class="cx"></div>
							                </div>
							            </div>	  
							        </div>	
							    </div>
							    
							
							`; 
							$("#grid").append(html);
						
					});
				 }
				}); 
			
			
			if($(this).hasClass('checked')){				
				$(el).find('.y').removeClass('animate');	
				setTimeout(function(){
				$(el).find('.x').removeClass('animate');							
				}, 50);	
				$(this).removeClass('checked');
				return false;
			}
			
			$(el).find('.x').addClass('animate');		
			setTimeout(function(){
			$(el).find('.y').addClass('animate');
			}, 100);	
			$(this).addClass('checked');
			
			return false;
			
			
		});
	});
});


</script>
</head>
<body>



<div id="wrapper">
<div class="cart-icon-top">
</div>

<div class="cart-icon-bottom">
</div>

<div id="checkout">
	CHECKOUT
</div>

<div id="info">
	<p class="i1">Add to cart interaction prototype by Virgil Pana</p>
<p>    Follow me on <a href="https://dribbble.com/virgilpana" style="color:#ea4c89" target="_blank">Dribbble</a> | <a style="color:#2aa9e0" href="https://twitter.com/virgil_pana" target="_blank">Twitter</a></p>
</div>

<div id="header">	
	<ul>
        <li><a href="">Home</a></li>
        <li><a href="">BRANDS</a></li>
        <li><a href="">DESIGNERS</a></li>
        <li><a href="">CONTACT</a></li>                                              
    </ul>		
</div>

<div id="sidebar">
	<h3>CART</h3>
    <div id="cart">
    	<span class="empty">No items in cart.</span>       
    </div>
    
    <h3>카테고리</h3>
    <div class="checklist categories">
    	<ul>
    	
        	<li><a href="" id="healthy"><span></span>Healthy </a></li>
            <li><a href=""><span></span>Fashion</a></li>
            <li><a href=""><span></span>Food</a></li>
            <li><a href=""><span></span>Living</a></li>
           
        </ul>
    </div>
    
    <h3>COLORS</h3>
    <div class="checklist colors">
    	<ul>
        	<li><a href=""><span></span>Beige</a></li>
            <li><a href=""><span style="background:#222"></span>Black</a></li>
            <li><a href=""><span style="background:#6e8cd5"></span>Blue</a></li>
            <li><a href=""><span style="background:#f56060"></span>Brown</a></li>
            <li><a href=""><span style="background:#44c28d"></span>Green</a></li>
        </ul>
        
        <ul>
        	<li><a href=""><span style="background:#999"></span>Grey</a></li>
            <li><a href=""><span style="background:#f79858"></span>Orange</a></li>
            <li><a href=""><span style="background:#b27ef8"></span>Purple</a></li>
            <li><a href=""><span style="background:#f56060"></span>Red</a></li>
            <li><a href=""><span style="background:#fff;border: 1px solid #e8e9eb;width:13px;height:13px;"></span>White</a></li>
        </ul>        
    </div>
    
    <h3>SIZES</h3>
    <div class="checklist sizes">
    	<ul>
        	<li><a href=""><span></span>XS</a></li>
            <li><a href=""><span></span>S</a></li>
            <li><a href=""><span></span>M</a></li>
        </ul>
        
        <ul>
        	<li><a href=""><span></span>L</a></li>
            <li><a href=""><span></span>XL</a></li>
            <li><a href=""><span></span>XXL</a></li>
        </ul>        
    </div>
    
     <h3>PRICE RANGE</h3>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/price-range.png" alt="" />
</div>

<div id="grid-selector">
       <div id="grid-menu">
       	   View:
           <ul>           	   
               <li class="largeGrid"><a href=""></a></li>
               <li class="smallGrid"><a class="active" href=""></a></li>
           </ul>
       </div>
       
       Showing 1009 of 48 results 
</div>

<div id="grid">

<c:forEach var="vo" items="${list}">

 <div class="product">
    	
        <div class="make3D">
            <div class="product-front">
                <div class="shadow"></div>
                <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.g_saveimg}" alt="" />
                <div class="image_overlay"></div>
                <div class="add_to_cart">Add to cart</div>
                <div class="view_gallery">View gallery</div>                
                <div class="stats">        	
                    <div class="stats-container">
                        <span class="product_price">$${vo.g_price}</span>
                        <span class="product_name">${vo.g_name}</span>    
                        <p>${vo.g_info}</p>                                            
                        
                        <div class="product-options">
                        <strong>SIZES</strong>
                        <span>XS, S, M, L, XL, XXL</span>
                        <strong>COLORS</strong>
                        <div class="colors">
                            <div class="c-blue"><span></span></div>
                            <div class="c-red"><span></span></div>
                            <div class="c-white"><span></span></div>
                            <div class="c-green"><span></span></div>
                        </div>
                    </div>                       
                    </div>                         
                </div>
            </div>
            
            <div class="product-back">
                <div class="shadow"></div>
                <div class="carousel">
                    <ul class="carousel-container">
                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1.jpg" alt="" /></li>
                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2.jpg" alt="" /></li>
                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3.jpg" alt="" /></li>
                    </ul>
                    <div class="arrows-perspective">
                        <div class="carouselPrev">
                            <div class="y"></div>
                            <div class="x"></div>
                        </div>
                        <div class="carouselNext">
                            <div class="y"></div>
                            <div class="x"></div>
                        </div>
                    </div>
                </div>
                <div class="flip-back">
                    <div class="cy"></div>
                    <div class="cx"></div>
                </div>
            </div>	  
        </div>	
    </div>
    
</c:forEach>
   
 
</div>
</div>

</body>

</html>