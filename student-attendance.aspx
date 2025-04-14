<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-attendance.aspx.cs" Inherits="RZM.wth1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
       body {
    line-height: 1.6;
    margin: 2em;
}
.background {
            position: absolute;
            height: 100%;
            width: 100%;
            background-image: url(
"https://image.slidesdocs.com/responsive-images/background/line-art-education-class-awards-certificates-powerpoint-background_f84de1795e__960_540.jpg");
            background-size: cover;
            background-position: center;
            filter: blur(6px);
            z-index: -1;
        }
        
        .text-container {
            text-align: center;
        }

th {
    background-color: #001f3f;
    color: #fff;
    padding: 0.5em 1.5em;
}

td {
    border-top: 1px solid #eee;
    padding: 0.5em 1.5em;
}

input {
    cursor: pointer;
}

th.missed-col {
    background-color: #fa5b5b;
}

td.missed-col {
    background-color: #ffecec;
    color: #f00;
    text-align: center;
}

.name-col {
    text-align: left;
}

 #submit-btn {
      padding: 15px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    
    #submit-btn:hover {
      background-color: #3e8e41;
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
       .center {
           margin-left: auto;
           margin-right: auto;
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
    <script>
        (function () {
            if (!localStorage.attendance) {
                console.log('Creating attendance records...');
                function getRandom() {
                    return (Math.random() >= 0.5);
                }

                var nameColumns = $('tbody .name-col'),
                    attendance = {};

                nameColumns.each(function () {
                    var name = this.innerText;
                    attendance[name] = [];

                    for (var i = 0; i <= 11; i++) {
                        attendance[name].push(getRandom());
                    }
                });

                localStorage.attendance = JSON.stringify(attendance);
            }
        }());

        $(function () {
            var attendance = JSON.parse(localStorage.attendance),
                $allMissed = $('tbody .missed-col'),
                $allCheckboxes = $('tbody input');

            function countMissing() {
                $allMissed.each(function () {
                    var studentRow = $(this).parent('tr'),
                        dayChecks = $(studentRow).children('td').children('input'),
                        numMissed = 0;

                    dayChecks.each(function () {
                        if (!$(this).prop('checked')) {
                            numMissed++;
                        }
                    });

                    $(this).text(numMissed);
                });
            }

            $.each(attendance, function (name, days) {
                var studentRow = $('tbody .name-col:contains("' + name + '")').parent('tr'),
                    dayChecks = $(studentRow).children('.attend-col').children('input');

                dayChecks.each(function (i) {
                    $(this).prop('checked', days[i]);
                });
            });

            $allCheckboxes.on('click', function () {
                var studentRows = $('tbody .student'),
                    newAttendance = {};

                studentRows.each(function () {
                    var name = $(this).children('.name-col').text(),
                        $allCheckboxes = $(this).children('td').children('input');

                    newAttendance[name] = [];

                    $allCheckboxes.each(function () {
                        newAttendance[name].push($(this).prop('checked'));
                    });
                });

                countMissing();
                localStorage.attendance = JSON.stringify(newAttendance);
            });

            countMissing();
            $(document).ready(function () {
                countMissing();
        }());
    </script>
</head>
<body>
     <a href="#" class="previous">&laquo; Previous</a>
    <form id="form1" runat="server">
         <div class="background"></div>
    <div class="text-container">
        <div>
            <h1><center>Student Attendance</center></h1>
            <br />
            <table class="center">
            <thead>
                <tr>
                    <th class="name-col">Student Name</th>
                    <th>1</th>
                    <th>2</th>
                    <th>3</th>
                    <th>4</th>
                    <th>5</th>
                    <th>6</th>
                    <th>7</th>
                    <th>8</th>
                    <th>9</th>
                    <th>10</th>
                    <th>11</th>
                    <th>12</th>
                </tr>
            </thead>
            <tbody>
                <tr class="student">
                    <td class="name-col"><b>Mehak Fatima</b></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                </tr>
                <tr class="student">
                    <td class="name-col"><b>Rabia Sajal</b></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                </tr>
                <tr class="student">
                    <td class="name-col"><b>Raveeha Zubair</b></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                </tr>
                <tr class="student">
                    <td class="name-col"><b>Zenab Rizwan</b></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                </tr>
                <tr class="student">
                    <td class="name-col"><b>Minahil Mobin</b></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                    <td class="attend-col"><input type="checkbox"></td>
                </tr>
            </tbody>
        </table>
                <button id="submit-btn" type="submit">Submit</button>
        </div>
        <div id="mySidenav" class="sidenav">
              <a href="https://localhost:44391/teacher-attendance" id="teacherAttendance"><small>Attendance</small></a>
              <a href="https://localhost:44391/gradebook" id="gradebook"><small>Gradebook</small></a>
              <a href="https://localhost:44391/Transcript" id="transcript"><small>Transcript</small></a>
              <a href="https://localhost:44391/Schedule" id="schedule"><small>Schedule</small></a>
              <a href="https://localhost:44391/Societies" id="societies"><small>Societies</small></a>
            </div>
        <script>
            const form = document.getElementById("attendance-form");

            form.addEventListener("submit", function (event) {
                event.preventDefault();
                const attendance = {};

                for (const input of form.querySelectorAll("input[type='checkbox']")) {
                    const name = input.name.split("-")[1];
                    const day = input.name.split("-")[3];

                    if (!attendance[name]) {
                        attendance[name] = {};
                    }

                    attendance[name][day] = input.checked;
                }
        </script>
    </form>
</body>
</html>
