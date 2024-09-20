<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Page Home</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
</head>
<body>



			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			  <ul class="navbar-nav">
			    <li class="nav-item active">
			      <s:url namespace="/" action="index" var="lien3"></s:url>
				  <s:a href="%{lien3}" class="nav-link">Home</s:a>
			    </li>
			    <li class="nav-item">
			      <s:url namespace="/" action="produits" var="lien1"></s:url>
				  <s:a href="%{lien1}" class="nav-link">Stocks</s:a>
			    </li>
			    <li class="nav-item">
			      <s:url namespace="/" action="aproduits" var="lien2"></s:url>
				   <s:a href="%{lien2}" class="nav-link">Approvisionnements</s:a>
			    </li>
			   
			  </ul>
			</nav>

	<h1 align="center">Gestion des  Stocks</h1>
	<br>
	<h3 class="text-center">Welcome Sir</h3>
	<br><br><br>
  
	

  
  
  
  
  
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
</body>
</html>