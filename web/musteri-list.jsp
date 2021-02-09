<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
<head>
  <title>Araç Kiralama</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
      <style>
         body{
    background-color: #f1f2f6;
         }
     </style>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
         <a class="navbar-brand" href="<%=request.getContextPath()%>/home">Araç Kiralama Sistemi</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Araç İşlemleri <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=request.getContextPath()%>/listArac">Araç Listesi</a></li>
          <li><a href="<%=request.getContextPath()%>/newArac">Araç Ekle</a></li>
        </ul>
      </li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Müşteri İşlemleri <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=request.getContextPath()%>/listMusteri">Müşteri Listesi</a></li>
          <li><a href="<%=request.getContextPath()%>/newMusteri">Müşteri Ekle</a></li>
        </ul>
      </li>
                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Araç Kiralama İşlemleri <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=request.getContextPath()%>/listKiralama">Kiralanan Araçlar Listesi</a></li>
          <li><a href="<%=request.getContextPath()%>/newKiralama">Araç Kirala</a></li>
          <li><a href="<%=request.getContextPath()%>/listAracTeslim">Araç Teslim Listesi</a></li>
        </ul>
      </li>
    </ul>
        <ul class="nav navbar-nav  navbar-right" >
            <li class="dropdown"><a class="dropdown-toggle text-uppercase" data-toggle="dropdown" href="#">${loggedUser.firstName} ${loggedUser.lastName} <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=request.getContextPath()%>/profilim">Profilim</a></li>
          <li><a href="<%=request.getContextPath()%>/cikisYap">Çıkış Yap</a></li>
        </ul>
      </li>
      
    </ul>
  </div>
</nav>
  
<div class="container">
    <div class="row">
	<br>
	<div class="container">
            <h3 class="text-center">Müşteri Listesi</h3>
            			<br>
                                <div class="container text-left">

				<a href="<%=request.getContextPath()%>/newMusteri" class="btn btn-success">Müşteri Ekle</a>
			</div>
                        </br>

		<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Ad</th>
						<th>Soyad</th>
						<th>Telefon</th>
						<th>Adres</th>
						
					</tr>
				</thead>
				<tbody>
                                    	<c:forEach var="arac" items="${listMusteri}">

						<tr>
							<td><c:out value="${musteri.id}" /></td>
							<td><c:out value="${musteri.Ad}" /></td>
							<td><c:out value="${musteri.Soyad}" /></td>
							<td><c:out value="${musteri.Telefon}" /></td>
							<td><c:out value="${musteri.Adres}" /></td>
                                                        <td>
                                                            
                                                          
                                                           
                                                        
                                                        <td><a href="<%=request.getContextPath()%>/editMusteri?id=<c:out value='${musteri.id}' />">Düzenle</a>
				&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="<%=request.getContextPath()%>/deleteMusteri?id=<c:out value='${musteri.id}' />">Sil</a></td>
						</tr>
                                                
                                                </c:forEach>
			
			</tbody>

			</table>
		</div>
	</div>
</div>

</body>
</html>