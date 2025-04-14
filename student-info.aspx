<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-info.aspx.cs" Inherits="RZM.ummmmm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <h1><center>Student Information</center></h1>
       <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        body, html {
          height: 100%;
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
        }

        * {
          box-sizing: border-box;
        }

        .bg-image {
          background-image: url("https://image.slidesdocs.com/responsive-images/background/line-art-education-class-awards-certificates-powerpoint-background_f84de1795e__960_540.jpg");
  
          filter: blur(4px);
          -webkit-filter: blur(4px);
  
          height: 100%; 
  
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
        }

        .bg-text {
          background-color: rgb(0,0,0);
          background-color: rgba(255,255,255, 0.4); 
          color: black;
          font-weight: bold;
          border: 3px solid #000;
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          z-index: 2;
          width: 60%;
          padding: 20px;
          text-align: left;
        }
                #mySidenav a {
          position: absolute;
          left: -80px;
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

        #studentAttendance {
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
    <div class="bg-image"></div>
    <form id="form1" runat="server">
        <div class="bg-text">
             <b>Student Name:</b>
             <br>
            <br>
             <b>Roll Number:</b>
             <br>
            <br>
             <b>Guardian Name:</b>
             <br>
            <br>
             <b>Email:</b>
             <br>
            <br>
             <b>Address:</b>
             <br> 
            <br>
             <b>Date of Birth:</b>
             <br>
            <br>
             <b>Gender:</b>
             <br>
            <br>
             <b>Nationality:</b>
             <br>
            <br>
             <b>Class:</b>
             <br>
            <br>
             <b>Societies Enrolled:</b>
             <br>
            <br>
             <b>Phone Number:</b>
             <br>
            <br>
        </div>
        <div id="mySidenav" class="sidenav">
              <a href="https://localhost:44391/Student-attendance" id="studentAttendance"><small>Attendance</small></a>
              <a href="https://localhost:44391/gradebook" id="gradebook"><small>Gradebook</small></a>
              <a href="https://localhost:44391/Transcript" id="transcript"><small>Transcript</small></a>
              <a href="https://localhost:44391/Schedule" id="schedule"><small>Schedule</small></a>
              <a href="https://localhost:44391/Societies" id="societies"><small>Societies</small></a>
            </div>
    </form>
</body>
</html>
