<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
<title>ADAm TEMPLATE</title>
<%@ include file="/include1/css.jsp" %>
</head>

<body class="g-sidenav-show  bg-gray-200">
 <section id="container">
 


<%@ include file="/include1/SideBar.jsp" %>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ps ps--active-y">
    <!-- Navbar -->
   <%@ include file="/include1/header.jsp" %>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
     <%@page import="beans.Section"%>
<%@page import="service.SectionService"%>

	<div class="container-fluid">

		<link href="include1/style.css" rel="stylesheet" type="text/css" />
		<link href="include1/csslocal.css" rel="stylesheet" type="text/css" />

		<form action="SectionController" method="GET">
			<input type="hidden" name="id"
				value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>" />
			<%@page import="service.PlaceService"%>
			<%@page import="beans.Place"%>

			<fieldset style="width: 588px;">
				<legend>Nouvelle Section</legend>
				<table border="0">
					<tr>
						<td>code</td>
						<td><input id="code" type="text" name="code"
							value="<%=request.getParameter("code") == null ? "" : request.getParameter("code")%>"
							required="" style="width: 135px;" /></td>
						<td style="width: 307px;">*</td>
					</tr>

					<tr>
						<td style="width: 76px;">type</td>
						<td style="width: 737px;">
							<form action="some.jsp">
								<input id="type" type="text" name="type"
									value="<%=request.getParameter("type") == null ? "" : request.getParameter("type")%>"
									required="" style="width: 134px; height: 33px;" />
						</td>
					<tr>
						<td>prixParHeure</td>
						<td><input id="prixParHeure" type="text" name="prixParHeure"
							value="<%=request.getParameter("prixParHeure") == null ? "" : request.getParameter("prixParHeure")%>"
							required="" style="width: 135px;" /></td>
						<td style="width: 307px;">*</td>
					</tr>

					
					<tr>
						<td></td>
						<td><input id="add" type="submit" value="Envoyer" /></td>
					</tr>


					</form>

				</table>
			</fieldset>


			<fieldset>
				<legend>Liste des Sections</legend>

				<table border="1" class="tab" style="width: 501px;">
					<thead>
						<tr>
							<th>Id</th>
							<th>code <br>
							<th>type</th>
							<th>prixParHeure</th>
							<th>supprimer</th>
							<th>modifier</th>
						</tr>
					</thead>
					<tbody id="content">
						<%
						SectionService ss = new SectionService();
						for (Section s : ss.findAll()) {
						%>
						<tr>
							<td><%=s.getId()%></td>
							<td><%=s.getCode()%></td>
							<td><%=s.getType()%></td>
							<td><%=s.getPrixParHeure()%></td>
							

							<td><a href="SectionController?id=<%=s.getId()%>&op=delete">Supprimer
							</a></td>
							<td><a href="SectionController?id=<%=s.getId()%>&op=update">Modifier
							</a></td>
						</tr>

						<%
						}
						%>
					</tbody>
				</table>

			</fieldset>
		</form>
	</div>

</footer>
      
    </div>
  <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 672px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 345px;"></div></div>
  <%@ include file="/include1/footer.jsp" %></main>
  <div class="fixed-plugin ps">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="material-icons py-2">settings</i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Material UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="material-icons">clear</i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3 d-flex">
          <h6 class="mb-0">Navbar Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark my-3">
        <div class="mt-2 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
        <a class="btn btn-outline-dark w-100" href="">View documentation</a>
        <div class="w-100 text-center">
          <span></span>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/material-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
      </div>
    </div>
  <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
  <!--   Core JS Files   -->
 
 
</section>
</body>
<%@ include file="/include1/js.jsp" %>
</html>