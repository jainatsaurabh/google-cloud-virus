<%@page import="com.example.virus.entity.StateUpdate"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.example.virus.entity.States"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title style="color: #2243B6;">Covid19trackin</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

</head>
<%
	NumberFormat nf = NumberFormat.getNumberInstance();
List<States> ls = (List<States>) request.getAttribute("states");
List<StateUpdate> lstat = (List<StateUpdate>) request.getAttribute("dailyState");
List<Integer> ls1 = (List<Integer>) request.getAttribute("stateTotal");
List<Integer> ls2 = (List<Integer>) request.getAttribute("daily");
String d = (String) request.getAttribute("last");
%>
<body style="font-weight: bold; margin: 10px;">
	<img src="android-chrome-192x192.png" style="float: left;">&nbsp
	<br><br><label
		style="font-size: 40px; font-family: sans-serif; color: navy; float: left;">Covid19trackin</label>
	<br><br><br><br><table class="table table-borderless"
		style="text-align: center; margin: 20px; float: right; width: 160px; height: 100px; font-size: 20px;">
		<thead>
			<tr>
				<th scope="col" style="color: red;">Confirmed</th>
				<th scope="col" style="color: blue;">Active</th>
				<th scope="col" style="color: #41A317;">Recovered</th>
				<th scope="col" style="color: grey;">Decease</th>
			</tr>
		</thead>
		<tr style="font-size: 18px; width: 20px;">
			<td style="color: red;">+<%=nf.format(ls2.get(0))%></td>
			<td style="color: blue;"></td>
			<td style="color: #41A317;">+<%=nf.format(ls2.get(2))%></td>
			<td style="color: grey;">+<%=nf.format(ls2.get(3))%></td>
		</tr>
		<tr style="font-size: 25px;">
			<td style="color: red;"><%=nf.format(ls1.get(0))%></td>
			<td style="color: blue;"><%=nf.format(ls1.get(2))%></td>
			<td style="color: #41A317;"><%=nf.format(ls1.get(3))%></td>
			<td style="color: grey;"><%=nf.format(ls1.get(1))%></td>
		</tr>
	</table>
	<br>
	<font
		style="font-size: 15px; float: left; margin-left: 20px; font-style: bold; color: #41A317; font-family: cursive;">Data
		of: <%=lstat.get(0).getDate()%></font>
	<div class="contianer"
		style="width: 765px;; height: 780px; overflow: auto; float: left;">
		<table class="table table-striped table-borderless"
			style=" margin: 2px;">
			<thead>
				<tr class="table-active">
					<th
						style="position: sticky; top: 0; color: white; background: black;"
						scope="col">States</th>
					<th
						style="position: sticky; top: 0; color: white; background: black;"
						scope="col">Confirmed</th>
					<th
						style="position: sticky; top: 0; color: white; background: black;"
						scope="col">Active</th>
					<th
						style="position: sticky; top: 0; color: white; background: black;"
						scope="col">Recovered</th>
					<th
						style="position: sticky; top: 0; color: white; background: black;"
						scope="col">Decease</th>
				</tr>
			</thead>
			<tbody>
				<%
					Iterator itr = ls.iterator();
				while (itr.hasNext()) {
					String total = " ";
					String recover = " ";
					String decease = " ";
					States st = (States) itr.next();
					String s = st.getId();
					Iterator itr1 = lstat.iterator();
					if (lstat.size() > 0) {
						while (itr1.hasNext()) {
					StateUpdate stat = (StateUpdate) itr1.next();

					if (stat.getSid().equals(st.getId())) {
						total = "+" + nf.format(stat.getTotal());
						recover = "+" + nf.format(stat.getRecover());
						decease = "+" + nf.format(stat.getDecease());
					}
						}
					}
				%>

				<tr>
					<td><a class="dropdown-item  btn-block"
						href="/citiess?st=<%=s%>" style="font-weight: bold;"><%=st.getScode()%></a></td>
					<td><font style="color: red;"><%=total%></font><br><%=nf.format(st.getTotal())%></td>
					<td><br><%=nf.format(st.getActive())%><font
						style="color: red;"></font></td>
					<td><font style="color: #77AB59;"><%=recover%></font><br><%=nf.format(st.getRecover())%></td>
					<td><font style="color: grey;"><%=decease%></font><br><%=nf.format(st.getDecease())%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

	<br>
	<font
		style="font-size: 15px; float: right; margin-right: 20px; font-style: bold; font-family: cursive;">Last
		Updated on <%=d%></font>
	<table class="table table-borderless"
		style="float: right; margin-right: 30px; margin-left: 30px; width: 500px; height: 400px; text-align: left; font-size: 20px; border: 5px solid white;">
		<tbody>
			<tr>
				<td style="background-color: #ffe6e6; color: #F62217;">Infected&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTotal
					Population: 1,380,004,385<br> <font style="font-size: 30px;">
						<%=(ls1.get(0) * 100 / 1380004385)%>%
				</font> of total population infected
				</td>
			</tr>
			<tr height="30px;"></tr>
			<tr>
				<td style="background-color: #E6E6FA; color: #2243B6;">Active:
					<font style="font-size: 30px;"><%=ls1.get(2) * 100 / ls1.get(0)%>%</font>
					are currently infected with virus<br>For every 100 confirmed
					cases, <%=Math.round(ls1.get(2) * 100 / ls1.get(0))%> are currently
					infected.
				</td>
			</tr>
			<tr height="30px;"></tr>
			<tr>
				<td style="background-color: #cbe5be; color: #41A317;">Recovery:
					<font style="font-size: 30px;"><%=ls1.get(3) * 100 / ls1.get(0)%>%</font>
					patient recovered from virus<br>For every 100 confirmed cases,
					<%=Math.round(ls1.get(3) * 100 / ls1.get(0))%> have recovered from
					the virus.
				</td>
			</tr>
			<tr height="30px;"></tr>
			<tr>
				<td style="background-color: #D3D3D3; color: gray;">Fatality: <font
					style="font-size: 30px;"><%=ls1.get(1) * 100 / ls1.get(0)%>%</font>
					deceased by virus<br>For every 100 confirmed cases, 0 have
					unfortunately passed away from the virus.
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>