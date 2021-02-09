  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Araç Kiralama Sistemi</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
 <style>
	body{
		background-color: #f1f2f6;
		font-family: 'Roboto', sans-serif;
        }
	p{
		text-align: center;
  		font-weight: 1000;
  		letter-spacing: -1px;
  		color: black;
  		font-size: 20px;
  		font-style: italic;
	}
	p.solid {border-style: solid;}
    </style>  

</head>
<body>
        <header>
        
       
         
        <p class="solid">SİVAS CUMHURİYET ÜNİVERSİTESİ ARAÇ KİRALAMA SİSTEMİ</p>
        <div>
            <a href="<%=request.getContextPath()%>/kullaniciListele" class="navbar-brand"></a>
	</div>
	<ul class="navbar-nav"> </ul>
            
            
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        
    
    </div>
  </div>
</nav>
	</header>
	<br>
	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">
	<form action="loginUser" method="post" id="loginForm">
					
	<caption>
            <h2><span id="accountTypeName"></span> Giriş</h2>
	</caption>
            <input type="number" id="userType" name="userType" hidden/>
            
            <fieldset class="form-group">
			<label>Hesap Tipi</label>
		<select name="kullaniciTipi" id="kullaniciTipi" class="form-control" onchange="updateLogin()">
		<option value="0" selected>Müşteri</option>
		<option value="1">Kullanıcı</option>
							</select>
					</fieldset>
            
            
	<fieldset class="form-group">
	<label>Kullanıcı Adı</label> <input type="text" class="form-control"
	name="name" required="required">
	</fieldset>
					
	<fieldset class="form-group">
	<label>Şifre</label> <input type="password" class="form-control "
	name="password" required="required">
	</fieldset>
	
        <button type="submit" class="btn btn-success">Giriş Yap</button>
        <c:if test="${error != null}">
            <label class="text-danger">${error}</label>
	   </c:if>
        </form>
<a class="text-secondary" href="<%=request.getContextPath()%>/uyeOl" style="cursor:pointer"><i class="fa fa-arrow-left"> </i>Üye Ol</a>
			</div>
		</div>
	</div>
</body>

</html>

