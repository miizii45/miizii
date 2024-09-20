<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="j" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Produits Approvisionnements</title>
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

	<section class="container">
	<h1 align="center">Gestion des Produits Approvisionnements</h1>
	<h3>Ajouter dans la liste</h3>
		<div class="container">
			<table class="table table-bordered">
 				 <s:form action="savea" method="get">
					<tr>
					<td><s:textfield label="codePdt" name="produit.codePdt" class="form-control"></s:textfield></td>
					</tr>
					<tr>
					<td><s:textfield label="qteCommande" name="produit.qteCommande" class="form-control"></s:textfield></td>
					</tr>
					<tr>
					<td><j:datepicker label="datePrevueLivraison" name="produit.datePrevueLivraison" labelposition="left" class="form-control"></j:datepicker></td>
					</tr>	
					<tr>
					<td>
					<s:textfield name="Modea"></s:textfield>	
					</td></tr>			
					<tr>
					<td><s:submit value="save" class="btn btn-warning"></s:submit></td>
					</tr>	
				</s:form>
			</table>
		</div>
	<h3 class="text-center">Listes des Produits Stocks</h3>
	
	<s:url namespace="/" action="produitsa" var="lien5"></s:url>
		<s:a href="%{lien5}" class="btn btn-info">Convertir en PDF</s:a>
		<div class="row">
         	<div class="col-12">
				<table class="table" data-toggle="table" data-search="true" data-show-columns="true" data-pagination="true">
					<thead class="thead-dark">
					<tr>
					<th data-sortable="true" data-field="code produit">code produit</th>
					<th>quantity Commande</th>
					<th data-sortable="true" data-field="datePrevueLivraison">datePrevueLivraison</th>
					<th>Supprimer</th>
					<th>Modifier</th>
					</tr>
					</thead>
					<tbody>
					<s:iterator value="produits">
					<tr>
					<td><s:property value="codePdt"/></td>
					<td><s:property value="qteCommande"/></td>
					<td><s:property value="datePrevueLivraison"/></td>	
					<s:url namespace="/" action="deletea" var="lien8">
					<s:param name="code">
					<s:property value="codePdt"/>
					</s:param>
					</s:url>
					<s:url namespace="/" action="edita" var="lien6">
					<s:param name="code">
					<s:property value="codePdt"/>
					</s:param>
					</s:url>
					<td><s:a href="%{lien8}" class="btn btn-danger">Supprimer</s:a></td>
					<td><s:a href="%{lien6}" class="btn btn-success">Modifier</s:a></td>
					</tr>
					</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
</body>
</html>