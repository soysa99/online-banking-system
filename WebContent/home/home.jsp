<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>

    <style>
        /* Flexbox container to place the calendar and calculator in one line */
        .flex-container {
            display: flex;
            justify-content: space-between;
            gap: 30px;
            margin: 20px 0;
        }

        /* Calendar styling */
        #calendar {
            width: 45%;
            height: 300px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
        }

        /* Calculator container styling */
        #calcu {
            width: 45%;
            border: 1px solid #ddd;
            border-radius: 15px;
            background-color: #f4f4f4;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
        }

        /* Result display box */
        #result {
            width: 100%;
            padding: 20px;
            font-size: 32px;
            font-weight: bold;
            text-align: right;
            border: none;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        /* Buttons container */
        .button-row {
            display: flex;
            justify-content: space-between;
            width: 100%;
            margin-bottom: 10px;
        }

        /* Button styling */
        input[type="button"] {
            width: 22%;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            background-color: #4b9a87;
            border: none;
            border-radius: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        input[type="button"]:hover {
            background-color: #4b9a87;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            transform: translateY(-5px);
        }

        input[type="button"]:active {
            background-color: #4b9a87;
            transform: translateY(2px);
        }

        /* Clear button styling */
        input[type="button"].clear {
            background-color: #f44336;
        }

        input[type="button"].clear:hover {
            background-color: #e53935;
        }

        /* Equal button styling */
        input[type="button"].equal {
            background-color: #2196F3;
        }

        input[type="button"].equal:hover {
            background-color: #1976D2;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .flex-container {
                flex-direction: column;
                align-items: center;
            }

            #calcu {
                width: 90%;
            }

            #calendar {
                width: 90%;
            }

            .button-row {
                flex-direction: column;
                align-items: center;
            }

            input[type="button"] {
                width: 100%;
                margin-bottom: 10px;
            }
        }
    </style>
</head>

<body>

    <% 
        if (session.getAttribute("name") == null) {
            response.sendRedirect("../login.jsp");
            return;
        }
    %>
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />

        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
            </ul>

            <div class="flex-container">
                <!-- Calendar Section -->
                <div id="calendar"></div>

                <!-- Calculator Section -->
                <div id="calcu">
                    <input type="text" id="result" disabled>

                    <div class="button-row">
                        <input type="button" value="7" onclick="dis('7')">
                        <input type="button" value="8" onclick="dis('8')">
                        <input type="button" value="9" onclick="dis('9')">
                        <input type="button" value="/" onclick="dis('/')">
                    </div>

                    <div class="button-row">
                        <input type="button" value="4" onclick="dis('4')">
                        <input type="button" value="5" onclick="dis('5')">
                        <input type="button" value="6" onclick="dis('6')">
                        <input type="button" value="*" onclick="dis('*')">
                    </div>

                    <div class="button-row">
                        <input type="button" value="1" onclick="dis('1')">
                        <input type="button" value="2" onclick="dis('2')">
                        <input type="button" value="3" onclick="dis('3')">
                        <input type="button" value="-" onclick="dis('-')">
                    </div>

                    <div class="button-row">
                        <input type="button" value="0" onclick="dis('0')">
                        <input type="button" value="." onclick="dis('.')">
                        <input type="button" value="=" onclick="solve()" class="equal">
                        <input type="button" value="+" onclick="dis('+')">
                    </div>

                    <div class="button-row">
                        <input type="button" value="C" onclick="clr()" class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Function that display value in the result field
        function dis(val) {
            document.getElementById("result").value += val;
        }

        // Handle key events
        function myFunction(event) {
            if ('0123456789+-*/'.indexOf(event.key) !== -1) {
                document.getElementById("result").value += event.key;
            }
        }

        var cal = document.getElementById("calcu");
        cal.onkeyup = function (event) {
            if (event.keyCode === 13) {
                solve();
            }
        }

        // Function that solves the expression
        function solve() {
            let x = document.getElementById("result").value;
            let y = math.evaluate(x);  // Assuming you have math.js for eval
            document.getElementById("result").value = y;
        }

        // Function to clear the display
        function clr() {
            document.getElementById("result").value = "";
        }

        // Initialize FullCalendar
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                height: 'auto',  // Adjust calendar's height automatically
            });
            calendar.render();
        });
    </script>

</body>

</html>
