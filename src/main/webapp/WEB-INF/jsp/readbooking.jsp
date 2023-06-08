<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">

<!--after created new record this page view the details -->
<center><body style="padding: 150px">
<h1 class="text-dark text-center " style="background:#1D63ff; "><b style="color:white";>view booking</b></h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>first Name</th>
            <th>email</th>
            <th>Package id</th>
            <th>phone number</th>
            <th>Number of days</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.firstname}</td>
                <td>${booking.email}</td>
                <td>${booking.packageid}</td>
                <td>${booking.phonenumber}</td>
                <td>${booking.numberofdays}</td>
                <td><a class="btn btn-warning" href="/update-booking/${booking.id}" style="background-color: blue">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-booking/${booking.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<!--redirect to add booking page-->
<a class="btn btn-Primary" href="/add-booking">Create Bookings</a>
</body></center>
<script src="/js/bootstrap.js"></script>