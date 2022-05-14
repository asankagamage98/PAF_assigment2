<%@ page import="com.Bill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Componets/jquery-3.2.1.min.js"></script>
<script src="Componets/bills.js"></script>

</head>
<body class="container">
	<div class="row my-3">
	 	<div class="col-md-12">
	
		<h1>Bill Management</h1>
		   <form id="formBill" name="formBill" method="post" action="bills.jsp">
				
			    
				 Bill ID:
				<input id="billId" name="billId" type="text"
				 class="form-control form-control-sm" readonly>
				 <br>
				  Account ID:
				<input id="accountId" name="accountId" type="text"
				 class="form-control form-control-sm">
				<br>
				 Join Date:
				<input id="joinDate" name="joinDate" type="date"
				 class="form-control form-control-sm">
				<br> 
				Meater reading before date:
				<input id="meterReadingBeforeDate" name="meterReadingBeforeDate" type="date"
				 class="form-control form-control-sm">
				<br>
				 Meater reading before:
				<input id="meterReadingBefore" name="meterReadingBefore" type="text"
				 class="form-control form-control-sm">
				<br>
				<br> Meater reading now date:
				<input id="meterReadingNowDate" name="meterReadingNowDate" type="date"
				 class="form-control form-control-sm">
				<br> Meater reading now:
				<input id="meterReadingNow" name="meterReadingNow" type="text"
				 class="form-control form-control-sm">
				<br>
				<br>No of Units:
				<input id="noOfUntitsConsumed" name="noOfUntitsConsumed" type="text"
				 class="form-control form-control-sm">
				<br> Charge for electricity:
				<input id="chargeforelectricityConsume" name="chargeforelectricityConsume" type="text"
				 class="form-control form-control-sm">
				<br>
				<br> Adjustments:
				<input id="adjustments" name="adjustments" type="text"
				 class="form-control form-control-sm">
				<br>Total Amount:
				<input id="totalAmountDue" name="totalAmountDue" type="text"
				 class="form-control form-control-sm">
				<br>
				<br>Bill Date:
				<input id="billDate" name="billDate" type="date"
				 class="form-control form-control-sm">
				<br>
				
				<input id="btnSave" name="btnSave" type="button" value="Save"
				 class="btn btn-primary">
				<input type="hidden" id="hidBillIDSave" name="hidBillIDSave" value="">
				
			  </form>	
		
			<div id="alertSuccess" class="alert alert-success"></div>
		    <div id="alertError" class="alert alert-danger"></div>
	
		</div>
	 
	 </div>


<div class="row my-3">
 
		<div class="col-md-12">
				<div id="divItemsGrid">
				 <%
				 
				 Bill itemObj = new Bill();
				 out.print(itemObj.readBill());
				 
				 %>
				 </div>
		</div>
 
</div>

	
		<br> 
	

</body>
</html>