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

<p>It is based on the Image <strong><%= System.getenv("BOXFUSE_IMAGE_COORDINATES")%>
</strong> generated from <strong><%= System.getenv("BOXFUSE_PAYLOAD_NAME")%>
</strong></p>

<% if("virtualbox".equals(System.getenv("BOXFUSE_PLATFORM_ID"))) { %>
<h2 style="margin-top: 80px">Next steps</h2>

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
    <strong>boxfuse run -env=prod <%= System.getenv("BOXFUSE_APP")%>:<%= System.getenv("BOXFUSE_IMAGE_VERSION")%>
    </strong>
</p>
<% } else { %>
<h2 style="margin-top: 80px">Now it's your turn!</h2>

<p>Check out <strong><a href="https://github.com/boxfuse/boxfuse-sample-java-war-hello">this app</a></strong> from GitHub, modify it, and give it version 2.<br/>You are now ready to fuse and <strong>deploy it with zero downtime</strong> using the commands you already know.</p>

<p>Alternatively you can go back to the <strong><a href="https://console.boxfuse.com">Boxfuse Console</a></strong>,<br/> and simply create your own.</p>

<p>If you need any help the <strong><a href="http://boxfuse.com/docs">documentation</a></strong> is there for you,<br/>or simply shoot us an email at <a href="mailto:support@boxfuse.com">support@boxfuse.com</a></p>

<p>Say goodbye to snowflake servers.</p>
<p><strong>Enjoy Boxfuse!</strong></p>
<% } %>
</body>
</html>
