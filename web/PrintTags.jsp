<%-- 
    Document   : PrintTags
    Created on : Oct 8, 2018, 1:27:19 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.body{
  padding-top: 100px;
  padding-right: 250px;
  padding-bottom: 80px;
  padding-left: 250px;
  text-align: left;
  font-family: monaco, monospace;
  background: grey;
  background-size: cover;
}
.grid-container {
  display: grid;
  grid-template-rows: auto auto;
  background-color: white;
  padding-top: 30px;
  padding-right: 150px;
  padding-bottom: 80px;
  padding-left: 150px;
  grid-gap: 50px;
}
.grid-item {
  background-color:white;
  border: 3px solid grey;
  border-radius: 5px;
  padding: 20px;
  font-size: 30px;
  text-align: center;
}
</style>
    </head>
    <body class="body">
<div class="grid-container">
    <div class="grid-item">1</div><br>
  <div class="grid-item">2</div><br>
  <div class="grid-item">3</div>  <br>
  <div class="grid-item">4</div><br>
  <div class="grid-item">5</div><br>
  <div class="grid-item">6</div>  <br>
  <div class="grid-item">7</div><br>
  <div class="grid-item">8</div><br>
  <div class="grid-item">9</div>  <br>
  <div class="grid-item">10</div>  
</div>

</body>


</html>