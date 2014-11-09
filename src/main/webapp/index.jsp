<html>
<body style="text-align: center">
<h1>Congratulations!</h1>
<img src="boxfuse.png">

<h2>You have successfully launched your Instance!</h2>

<p>This Instance has the id <strong><%= System.getenv("BOXFUSE_INSTANCE_ID") %>
</strong>.</p>

<p>It is based on the Bootable App <strong><%= System.getenv("BOXFUSE_BOOTABLEAPP_ID")%>
</strong> generated from <strong><%= System.getenv("BOXFUSE_PAYLOAD_NAME")%>
</strong></p>

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

</body>
</html>
