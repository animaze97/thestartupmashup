<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<jsp:include page="adminCredentials.jsp"></jsp:include>
<body>

	<h4><a href="/StartupMashup/adminHomePage">Back to Main Menu</a></h4>
	<h4><a href="/StartupMashup/admin/list-testimonials">Back to Previous Menu</a></h4>

	<h3>Edit Testimonials Details:</h3>
	<br><br>
	<table>
	<form:form action="/StartupMashup/admin/save-edited-testimonial" method="post" modelAttribute="testimonialBean"
		enctype="multipart/form-data">
		<tr>
			<td>Participant Name:
			<td><input type="text" name="participantName" value="${testimonialBean.participantName}"/>
			<input type="hidden" name="id" value="${testimonialBean.id}">
		<tr>
			<td>Challenge Name:
			<td><input type="text" name="challengeName"  value="${testimonialBean.challengeName}"/>
		<tr>
			<td>Company Name:
			<td><input type="text" name="companyName"  value="${testimonialBean.companyName}"/>
		<tr>
			<td>Words:<td>
			<input type="text" name="words" value="${testimonialBean.words}"/>
		<tr>
			<td>Event Date<td><select name="day">
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
				</select>
		<select name="month">
						<option value="-1">- mm -</option>
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
				</select>
		<select name="year">
				<option value="-1">- yyyy -</option>
						<option value=2015>2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>

				</select>
		<tr>	
			<td>Previous Date was : 
			<td><input name="previousDate" readonly="readonly" value="${testimonialBean.date } (yyyy-mm-dd)">

		<tr><td>Your Previous Image
			<td><img height="50" width="50" src="${testimonialBean.image }"><br><a href="${testimonialBean.image }" target="_blank">View Large Image</a>
		<tr>
			<td>Edit your image :
			<td><input type="file" name="testimonialImage" />
	    <tr>
	        <td><td>(Size of image must be 100px X 100px)
			<input type="hidden" name="previousImage" value="${testimonialBean.image}" />
		
		<tr><td><td><input type="submit" name="submit" />
	</form:form>
	</table>

</body>
</html>