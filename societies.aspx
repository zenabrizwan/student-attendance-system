<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="societies.aspx.cs" Inherits="RZM.dumb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
           body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        
        .background {
            position: absolute;
            height: 100%;
            width: 100%;
            background-image: url(
"https://image.slidesdocs.com/responsive-images/background/line-art-education-class-awards-certificates-powerpoint-background_f84de1795e__960_540.jpg");
            background-size: cover;
            background-position: center;
            filter: blur(4px);
            z-index: -1;
        }
        
        .text-container {
            text-align: center;
        }
        #main {
	width: 800px;
	padding: 20px;
	margin: auto;
}
        table.timecard {
	margin: auto;
	width: 600px;
	border-collapse: collapse;
	border: 1px solid #fff;
	border-style: solid;
}

table.timecard caption {
	background-color: #ce8888;
	color: #fff;
	font-size: x-large;
	font-weight: bold;
	letter-spacing: .sem;
}

table.timecard thead th {
	padding: 30px;
	background-color: #fde9d9;
	font-size: medium;
}

table.timecard thead th# {
	width: 40%;	
}

table.timecard thead th#english, table.timecard thead th#urdu, table.timecard thead th#maths, table.timecard thead th#science, table.timecard thead th#islamiat, table.timecard thead th#history, table.timecard thead th#geography, table.timecard thead th#computer {
	width: 20%;
}

table.timecard th, table.timecard td {
	padding: 3px;
	border-width: 1px;
	border-style: solid;
	border-color: #f79646 #ccc;
}

table.timecard td {
	text-align: right;
}

table.timecard tbody th {
	text-align: left;
	font-weight: normal;
}
table.timecard tr.odd {
	background-color: #fff;
}
table.timecard tfoot {
	font-weight: bold;
	font-size: medium;
	background-color: darkgrey;
	color: #fff;
}

table.timecard tr.even {
	background-color: #ce8888;
}


                #mySidenav a {
          position: absolute;
          left: -100px;
          transition: 0.3s;
          padding: 15px;
          width: 100px;
          text-decoration: none;
          font-size: 15px;
          color: white;
          border-radius: 0 5px 5px 0;
        }

        #mySidenav a:hover {
          left: 0;
        }

        #teacherAttendance {
          top: 80px;
          background-color: #04AA6D;
        }

        #gradebook {
          top: 140px;
          background-color: #2196F3;
        }

        #transcript {
          top: 200px;
          background-color: #f44336;
        }

        #schedule {
          top: 260px;
          background-color: #555
        }
         #societies {
          top: 330px;
          background-color: #6b0da2
        }

                  a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #04AA6D;
  color: black;
}

.previous {
  background-color:gray;
  color: black;
}

.round {
  border-radius: 50%;
}

</style>
</head>
<body>
     <a href="#" class="previous">&laquo; Previous</a>
    <form id="form1" runat="server">
 <div class="background"></div>
    <div class="text-container">
        <div id="main">
			<br />
            <br />
			<br />
			<br />
			<br />
			<br />
			<table class="timecard">
	<caption>Societies</caption>
	<thead>
    <tr>
      <td> </td>
      <th scope="col">President</th>
      <th scope="col">Vice president</th>
      <th scope="col">Number of students enrolled</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <th scope="row">Sports</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row">Dramatics</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row">Music</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row">Debates</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row">Environmental</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row">Arts</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
</table>
        </div>
    </div>
		 <div id="mySidenav" class="sidenav">
              <a href="https://localhost:44391/teacher-attendance" id="teacherAttendance"><small>Attendance</small></a>
              <a href="https://localhost:44391/gradebook" id="gradebook"><small>Gradebook</small></a>
              <a href="https://localhost:44391/Transcript" id="transcript"><small>Transcript</small></a>
              <a href="https://localhost:44391/Schedule" id="schedule"><small>Schedule</small></a>
              <a href="https://localhost:44391/Societies" id="societies"><small>Societies</small></a>
            </div>
    </form>
</body>
</html>
