$(document).ready(function()
{
	if ($("#alertSuccess").text().trim() == "")
	 {
	 $("#alertSuccess").hide();
	 }
	 $("#alertError").hide();
});



 // SAVE ============================================
   
$(document).on("click", "#btnSave", function(event)
	{
		
		// Clear alerts---------------------
		
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide();
		 
		// Form validation-------------------
	
		var status = validateBillForm();
		if (status != true)
	  {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
	   }
	
		
	var type = ($("#hidBillIDSave").val().trim() == "") ? "POST" : "PUT";
	console.log(`\n\n\n>>>> FORM SUBMIT METHOD = ${type}\n\n\n`);
	$.ajax( 
			{ 
				 url : "BillsAPI", 
				 type : type, 
				 data : $("#formBill").serialize(), 
				 dataType : "text",
				 complete : function(response, status)
				 { 
				 	console.log(`>>>> RES ${response}`);
					 onBillSaveComplete(response.responseText, status); 
				 } 
			}
		);
		
	});
	
	
	
	//Billsavecomplefunction
	


	function onBillSaveComplete(response, status) 
	{ 
	  if (status == "success") 
	   { 
				 var resultSet = JSON.parse(response); 
				 
				 if (resultSet.status.trim() == "success") 
				 
				 { 
					 $("#alertSuccess").text("Successfully saved."); 
					 $("#alertSuccess").show(); 
					 $("#divItemsGrid").html(resultSet.data); 
					 
				 } else if (resultSet.status.trim() == "error") 
				 
				 { 
					 $("#alertError").text(resultSet.data); 
					 $("#alertError").show();
					  
				 } 
		 
		 } else if (status == "error") 
		 
		 { 
			 $("#alertError").text("Error while saving."); 
			 $("#alertError").show(); 
			 
		 } else
		 
		 { 
			 $("#alertError").text("Unknown error while saving.."); 
			 $("#alertError").show(); 
			 
		 } 
		
	
		 $("#hidBillIDSave").val(""); 
		 $("#formBill")[0].reset(); 
	}
	


	
	
// update
	/*
	$(document).on("click", ".btnUpdate", function(event) 
	{ 
		 $("#hidBillIDSave").val($(this).data("billid")); 
		 
		 $("#accountId").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#joinDate").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#meterReadingBeforeDate").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#meterReadingBefore").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#meterReadingNowDate").val($(this).closest("tr").find('td:eq(4)').text()); 
		 $("#meterReadingNow").val($(this).closest("tr").find('td:eq(5)').text()); 
		 $("#noOfUntitsConsumed").val($(this).closest("tr").find('td:eq(6)').text()); 
		 $("#chargeforelectricityConsume").val($(this).closest("tr").find('td:eq(7)').text());
		 $("#adjustments").val($(this).closest("tr").find('td:eq(8)').text());
		 $("#totalAmountDue").val($(this).closest("tr").find('td:eq(9)').text()); 
		 $("#billDate").val($(this).closest("tr").find('td:eq(10)').text()); 
		
	});
	*/
	
	$(document).on("click", ".btnUpdate", function(event) 
	{ 
		  
		 $("#hidBillIDSave").val($(this).closest("tr").find('td:eq(0)').text()); 
		 
		 $("#billId").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#accountId").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#joinDate").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#meterReadingBeforeDate").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#meterReadingBefore").val($(this).closest("tr").find('td:eq(4)').text()); 
		 $("#meterReadingNowDate").val($(this).closest("tr").find('td:eq(5)').text()); 
		 $("#meterReadingNow").val($(this).closest("tr").find('td:eq(6)').text()); 
		 $("#noOfUntitsConsumed").val($(this).closest("tr").find('td:eq(7)').text()); 
		 $("#chargeforelectricityConsume").val($(this).closest("tr").find('td:eq(8)').text());
		 $("#adjustments").val($(this).closest("tr").find('td:eq(9)').text());
		 $("#totalAmountDue").val($(this).closest("tr").find('td:eq(10)').text()); 
		 $("#billDate").val($(this).closest("tr").find('td:eq(11)').text()); 
		
	});
	
	
	
//delete
	
$(document).on("click", ".btnRemove", function(event) 
	{ 
		 $.ajax( 
			 { 
					 url : "BillsAPI", 
					 type : "DELETE", 
					 data : "billid=" + $(this).data("billid"),
					 dataType : "text", 
					 complete : function(response, status) 
				 { 
			     onBillDeleteComplete(response.responseText, status); 
			     } 
		 }); 
	});
	


//deletecompletion

function onBillDeleteComplete(response, status) 
{ 
	  if (status == "success") 
	 { 
		 var resultSet = JSON.parse(response); 
		 
			 if (resultSet.status.trim() == "success") 
				 { 
					 $("#alertSuccess").text("Successfully deleted."); 
					 $("#alertSuccess").show(); 
					 
					 $("#divItemsGrid").html(resultSet.data); 
			 } else if (resultSet.status.trim() == "error") 
				 
			 { 
				 $("#alertError").text(resultSet.data); 
				 $("#alertError").show(); 
			 } 
			 
	} else if (status == "error") 
			 
	{ 
	     $("#alertError").text("Error while deleting."); 
		 $("#alertError").show(); 
	} else
			 
	 { 
	     $("#alertError").text("Unknown error while deleting.."); 
		 $("#alertError").show(); 
	 } 
		
		
	}	
		
	// CLIENT-MODEL================================================================
	
	function validateBillForm()
	{
	
	 
		
		if ($("#accountId").val().trim() == "")
		 {
			 return "Insert Account ID.";
		 }
	 
		
		if ($("#joinDate").val().trim() == "")
		 {
		 	return "Insert joinDate.";
		 }
		 
		
		if ($("#meterReadingBeforeDate").val().trim() == "")
		 {
			 return "Insert meterReadingBeforeDate.";
		 }
		 
		 if ($("#meterReadingBefore").val().trim() == "")
		 {
		 	return "Insert meterReadingBefore.";
		 }
		 
		 
		 if ($("#meterReadingNowDate").val().trim() == "")
		 {
		 	return "Insert meterReadingNowDate.";
		 }
		 
		  if ($("#meterReadingNow").val().trim() == "")
		 {
		 	return "Insert meterReadingNow.";
		 }
		 
		  if ($("#noOfUntitsConsumed").val().trim() == "")
		 {
		 	return "Insert no Of Untits.";
		 }
		 
		  if ($("#chargeforelectricityConsume").val().trim() == "")
		 {
		 	return "Insert charge for electricity Consume.";
		 }
		 
		  if ($("#adjustments").val().trim() == "")
		 {
		 	return "Insert adjustments.";
		 }
		 
		 if ($("#chargeforelectricityConsume").val().trim() == "")
		 {
		 	return "Insert charge for electricity Consume.";
		 }
		 
		  if ($("#billDate").val().trim() == "")
		 {
		 	return "Insert billDate.";
		 }
		
		return true;
		


}
