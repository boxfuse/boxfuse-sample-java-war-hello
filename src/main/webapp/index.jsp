<html>
<head>
    <title>Boxfuse Sample App: success!</title>
</head>
<body style="text-align: center">
<h1>Congratulations!</h1>
<img src="boxfuse.png">

<h2>You have successfully launched your Instance!</h2>

<p>This Instance is running on <strong><%= System.getenv("BOXFUSE_PLATFORM_NAME") %>
</strong> and has the id <strong><%= System.getenv("BOXFUSE_INSTANCE_ID") %>
</strong>.</p>

<p>It is based on the Image <strong><%= System.getenv("BOXFUSE_IMAGE_OWNER")%>/<%= System.getenv("BOXFUSE_IMAGE_APP")%>:<%= System.getenv("BOXFUSE_IMAGE_VERSION")%>
</strong> generated from <strong><%= System.getenv("BOXFUSE_PAYLOAD_NAME")%>
</strong></p>

<h2 style="margin-top: 80px">Next steps</h2>

<% if("virtualbox".equals(System.getenv("BOXFUSE_PLATFORM_ID"))) { %>
<p style="margin-bottom: 20px;">
    Display the Instance console:<br/>
    <strong>boxfuse logs <%= System.getenv("BOXFUSE_INSTANCE_ID") %>
    </strong>
</p>

<p style="margin-bottom: 20px;">
    List all running Instances:<br/>
    <strong>boxfuse ps</strong>
</p>

<P style="margin-bottom: 20px;">
    List all Bootable Apps:<br/>
    <strong>boxfuse ls</strong>
</p>

<p>
    Gracefully kill the Instance:<br/>
    <strong>boxfuse kill <%= System.getenv("BOXFUSE_INSTANCE_ID") %>
    </strong>
</p>

<p>
    Deploy this Image unchanged on AWS:<br/>
    <strong>boxfuse deploy <%= System.getenv("BOXFUSE_IMAGE_APP")%>:<%= System.getenv("BOXFUSE_IMAGE_VERSION")%>
    </strong>
</p>
<% } else { %>
<p>Now it's your turn!</p>

<p>Go back to the <strong><a href="https://console.boxfuse.com">Boxfuse Console</a></strong>,<br/>delete this App and create your own.</p>

<p>If you need any help the <strong><a href="http://boxfuse.com/docs">documentation</a></strong> is there for you,<br/>or simply shoot us an email at <a href="mailto:support@boxfuse.com">support@boxfuse.com</a></p>

<p>Say goodbye to snowflake servers.</p>
<p><strong>Enjoy Boxfuse!</strong></p>
<% } %>
</body>
</html>
