<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>

</head>
<body background="http://www.zastavki.com/pictures/2560x1600/2011/3D-graphics_Textures_029787_.jpg">
<font color="Red" size=3>
<center><h1>Instant Booking</h1></center>
</font>
<Form name="bookingpage" Method="post">
<table align="center" bgcolor="lightgrey">    
  <tr>
  <td > 
  <b>Select Movie</b></td><td><select name="selectionField"> 
  <option value="HG" >Select a movie </option>
  <option value="HG" >Hunger Games Mockingjay Part1 </option>
  <option value="In" >Intersteller</option>
  <option value="PM" >Penguins of Madagascar</option>
</select>
  </td>
  </tr>
  <tr>
  <td> 
  <b>Select Date</b></td>
  <td> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() 
{
    $( "#datepicker" ).datepicker();
 }
  );
  </script>
<p><input type="text" id="datepicker"></p>
  </td>
  </tr>
  <tr>
  
  <td>
  <b>Select No. of persons</b><td><select name="selectionField"> 
  <option value="1" >1 </option>
  <option value="2" >2 </option>
  <option value="3" >3</option>
  <option value="4" >4</option>
  <option value="5" >5</option>
  <option value="6" >6</option>
  <option value="7" >7</option>
  <option value="8" >8</option>
  <option value="9" >9</option>
  <option value="10" >10</option>
  
</select>
  </td>
  </tr>
   <tr>
   <td colspan="2">
   <center><b><input type="submit" value="Book Ticket"/></b></center>
   </td>
   </tr>   
   
    </table>
</body>
</html>