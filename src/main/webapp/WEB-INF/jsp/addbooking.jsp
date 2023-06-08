<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body style="padding: 150px" >


<!--creating the add booking form-->
<div class="container">
    <div class="card">
        <h1 class="text-light text-center " style="background:#1D63ff"; ><b style="color:white";>Checkout</b> </h1>
            <form:form method="post" action="/add-booking">
                <table>
                <tr>
                    <td> Name: </td>
                    <td><form:input path="firstname"/></td>
                 <tr>
                 </tr>
                    <td>email: </td>
                    <td><form:input path="email"/></td>
                 <tr>
                 </tr>
                    <td>Package Id: </td>
                    <td><form:input path="packageid"/></td>
                 <tr>
                 </tr>
                    <td>phone number: </td>
                    <td><form:input path="phonenumber"/></td>
                 <tr>
                 </tr>
                    <td>Number of days: </td>
                    <td><form:input path="numberofdays"/></td>
                </tr>
                <tr>
               <!-- after book generate to read page-->
                    <td></td>
                    <td><input class="btn btn-outline-success"type="submit" value="Book" style="background-color: blue"/></td>

                </tr>
            </table>
        </form:form>
    </div>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>