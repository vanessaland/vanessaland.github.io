<head>
    <style>
        h1 {
            text-align: center;
        }
        body {
            font-family: sans-serif;
            background-color: <%= Request.QueryString("Colour")%>;
        }
    </style>
</head>

<body>
    <h1>Lab 10: Exploring</h1>
    <h2>Background Colour Changer</h2>
    <p>Use query strings in the url to change the colour of the background. For example, </p>
    <p><strong>http://vlandaya-001-site1.atempurl.com/Default.asp?colour=blue</strong> should make the page background colour blue.</p>

    <h2>Visit Counter</h2>
    <% 

    visits = Request.Cookies("visit")

    if visits >= 1 then
        Response.Write("Your Total Number of Visits: " & visits)
        Response.Cookies("visit") = visits + 1

        Response.Cookies("last_date") = Date
        Response.Cookies("last_time") = Time
    else 
        Response.Cookies("visit") = 1 
        Response.Write("Welcome! This is your first visit.")
        Response.Write("Your Total Number of Visits: " & visits)
        Response.Cookies("last_date") = Date
        Response.Cookies("last_time") = Time
    end if 
    %>

    <br>

    <%
    visits = Request.Cookies("visit")

    if visits > 1 then
        last_date = Request.Cookies("last_date")
        last_time = Request.Cookies("last_time")
        Response.Write("Your Last Visit was: " & last_date & " " & last_time)
    end if
    %>

</body>