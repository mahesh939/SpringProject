<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/include.jsp"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Festival Event Registration System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="StyleSheet" href="/WEB-INF/resources/css/style.css" type="text/css" />

<script type="text/javascript">
function previousPage()
{
	history.go(-1);
}
</script>

</head>
<body>
<br/><br/><br/>
	<table width="80%" align="center" border="2">
		<tr>
			<td>
			<div id="header">&nbsp;
			<div align="center"><b>Festival
			Registration System</b></div>
			</div>

			<table>
				<tr>
					<td width="100%">
					<table align="right" cellpadding="2">
						<tr>
							<td width="90">
							<div id="menu" align="center"><a href="<jstlcore:url value="/festival/login.html"/>">
							Logout </a></div>
							</td>
							
							<td width="90">
							<div id="menu" align="center"><a href="<jstlcore:url value="/festival/about.html"/>">
							About</a><br />
							</div>
							</td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td width="900">
					<div align="center"><img src="/resources/images/greenhorizontalline.jpg"
						height="5" width="100%" /></div>
					<br />
					<div id="content" align="center">
					<h3>Up-coming Events</h3>
					<table width="96%" border="1" align="center">
						<tr bgcolor="#669966">
							<th scope="col">Event Id</th>
							<th scope="col">Event name</th>
							<th scope="col">Description</th>
							<th scope="col">Venue</th>
							<th scope="col">Duration</th>
							<th scope="col">Event type</th>
							<th scope="col">Schedule</th>
							<th scope="col">Ticket Price</th>
							<th scope="col">Available Seats</th>
						</tr>
						<jstlcore:forEach items="${allEvents}" var="event" >
							<tr>
							<td><jstlcore:out value="${event.eventId}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.eventName}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.description}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.place}"></jstlcore:out></td>
							<td align="center"><jstlcore:out value="${event.duration}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.eventType}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.schedule}"></jstlcore:out></td>
							<td><jstlcore:out value="${event.ticketPrice}"></jstlcore:out></td>
							<%-- <td align="center"><jstlcore:out value="50"></jstlcore:out></td> --%>	
							<td align="center"><jstlcore:out value="${event.seatsAvailable}"></jstlcore:out></td>
							</tr>
						</jstlcore:forEach>

					</table>

					</div>
					</td>
				</tr>
				<tr></tr>
				<tr><td><br/></td></tr>
				<tr><td><br/></td></tr>
				<tr><td><br/></td></tr>
			</table>
			</td>

		</tr>
		
	</table>

</body>

</html>
