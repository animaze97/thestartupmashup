<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>


<title>Welcome</title>
</head>


<jsp:include page="adminCredentials.jsp"></jsp:include>
<body>

	<h4><a href="/StartupMashup/adminHomePage">Back to Main Menu</a></h4>


	<br>
	<h4>Enter Hackathon Details</h4>


	<br>
	<br>

	<table>
		<form:form action="/StartupMashup/admin/save-hackathon-details"
			modelAttribute="hackathonBean" method="POST" enctype="multipart/form-data">



			<tr>
				<td>Hackathon name :
				<td><input type="text" name="name" />
			<tr>
				<td>Hackathon Status :
				<td><input type="text" name="status" />
			<tr>
				<td>Hackathon Venue :
				<td><input type="text" name="venue" />
			<tr>
				<td>Event Date :
				<td><select name="day">
						<option value="-1">- dd -</option>
						<option value="01">01</option>
						<option value="02">02</option>
						<option value="03">03</option>
						<option value="04">04</option>
						<option value="05">05</option>
						<option value="06">06</option>
						<option value="07">07</option>
						<option value="08">08</option>
						<option value="09">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
				</select> <select name="month">
						<option>- mm -</option>
						<option value="01">01</option>
						<option value="02">02</option>
						<option value="03">03</option>
						<option value="04">04</option>
						<option value="05">05</option>
						<option value="06">06</option>
						<option value="07">07</option>
						<option value="08">08</option>
						<option value="09">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
				</select> <select name="year">
						<option>- yyyy -</option>
						<option value=2015>2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>

				</select>
				<tr>
				<td>Upload Hackathon Image : 
				<td><input type="file" name="hackImage"/>
				<br>(Size must be 700px X 400px)
			<tr>
				<td>Select Challenges
				<td><select name="challengeId" multiple size="4" >
					<option value="-1" selected>-Select-</option>
						<c:forEach var="challenge" items="${challengeBeanList}">
							<option value=" ${challenge.id}">${challenge.name}</option>
						</c:forEach>
				</select>
				<input type="hidden" name="participantCount" value="0" />
			<tr>
				<td>
				<td><input type="submit" value="SAVE">
		</form:form>
	</table>




</body>
</html>