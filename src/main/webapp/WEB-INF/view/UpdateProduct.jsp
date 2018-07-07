<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head></head>
<script type="text/javascript">
function performOperationUpdate(operation){
	var quantity = $('#quantity').val();
	var productId = $('#productId').val();
	var productName = $('#productName').val();
	console.log('performOperation='+operation+',Product Id='+productId);
	
		$.ajax({
			url: "save",
			type: "POST",
			data:
				"operation="+operation+
				"&quantity="+quantity+
				"&productId="+productId+
				"&productName="+productName,

				success: function(data, textStatus, jqXHR) {
					alert('backend data updated');


				},
				error: function(jqXHR, textStatus, errorThrown){
					console.log("Something really bad happened " + textStatus +"\n"+jqXHR.responseText);

				}

		}).done(function( e ) {
			console.log( "word was saved" + e );
		});
	
	

}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title><%-- 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/resources/OM.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jQuery.Validate/1.6/jQuery.Validate.min.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<body>
	
    <h1>Test update</h1>
   <h2> Welcome ${username} </h2>
      <h2> Welcome ${product.quantity}   </h2>
      <h2> Welcome ${product.productId}   </h2>
      <h2> Welcome ${product.productName}   </h2>
      

      
      
      <div class="container">
    	<div class="orangeText boldText padding10">Update Product Management</div>                
        <div class="headerBarblock">
        	<div class="floatLeft boldText">&minus;</div>
            <div class="floatLeft paddingLeft10">Product Update</div>
            <div class="clear"></div>
        </div>
        <form action="" method="post"
        accept-charset="utf-8"
         name="productRegistration" id="productRegistration" >
    	<!-- Below class to show LEFT and Right border -->
        <div class="headercontentblock1">                      
            <div class="container1"> 
            	<div class="floatLeft scanner"></div>
                <div class="floatLeft selectWidth85 marginLeft20">
                	<div class="boldText">Modify the below item to update</div>
                    <div class="spacer2"></div>
                    <div class="floatLeft selectWidth15">
                        <input name="quantity" id="quantity" type="text" class="inputboxBg selectWidth45" size="15" maxlength="15" 
                        value=${product.quantity}>
                        <div class="padding10" >*Qty</div>
                      
                    </div>
                    <div class="floatLeft selectWidth25">
                        <input name="productId"  id="productId" type="text" class="inputboxBg selectWidth80" size="15" 
                        value=${product.productId}
                        maxlength="15" disabled="disabled">
                        <div class="padding10">*Item ID, UPC, SIM, or IMEI</div>
                    </div>
                     <div class="floatLeft selectWidth25">
                        <!-- <input name="productName"  id="productName" type="text" class="inputboxBg selectWidth80" size="15" maxlength="15" placeholder="">
                         -->
                          <label class="custom-select selectWidth90">
                            <select  name="productName" id="productName">
                            
                                <option selected value=""> Please select Item</option> 
                              
                              
                             <%if(request.getParameter("productName").equalsIgnoreCase("Shoe")){ %>
                            <option value="Shoe" selected>Shoe</option>
                            <%}else{ %>
                             <option value="Shoe" >Shoe</option>
                             <%} %>
                              <%if(request.getParameter("productName").equalsIgnoreCase("Phones")){ %>
                            <option value="Phones" selected>Phones</option>
                            <%}else{ %>
                             <option value="Phones" >Phones</option>
                             <%} %>
                              <%if(request.getParameter("productName").equalsIgnoreCase("Clothes")){ %>
                            <option value="Clothes" selected>Clothes</option>
                            <%}else{ %>
                             <option value="Clothes">Clothes</option>
                             <%} %> 
                               
                             </select> 
                        </label> 
                         <div class="padding10">*Product Name</div>
                    </div>
                   
                    <div class="floatLeft selectWidth15">
                        <input type="button" id="loading" value="Save" class="greenButton"  onclick="performOperationUpdate('updateAdd');">
                    </div> 
                    
                               
                    <div class="clear"></div>
                    <div class="spacer2"></div>
                     <div class="redText" id="error">
                   
                    </div>   
                </div>
                <div class="clear"></div>                                            	                
            </div>

   </form>
  
        <!-- End to show LEFT and Right border -->
        <!-- Below class to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="headercontentblock0"></div>
    	<!-- End to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="spacer2"></div>        
    </div> 
    <!--Code Ends Here-->
    </body>
</html>

