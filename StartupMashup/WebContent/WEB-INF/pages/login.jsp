<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>

<script type = "text/javascript" >
    history.pushState(null, null, 'login');
    window.addEventListener('popstate', function(event) {
    history.pushState(null, null, 'login');
    });
    </script>

</head>
<body>
 <form method="post"  
    action="/StartupMashup/j_spring_security_check">  
  <h2>Inside spring login
  ${msg}</h2>

    <table>  
   
     <tr>  
      <td>User Name:</td>  
      <td><input type="text" name="username" /></td>  
     </tr>  
     <tr>  
      <td>Password:</td>  
      <td><input type="password" name="password" /></td>  
     </tr>  
     <tr>  
      <td> </td>  
      <td><input type="submit" value="Login" /></td>  
  
     </tr>  
    </table>  
   </form>  
</body>
</html>