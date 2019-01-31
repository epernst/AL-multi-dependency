# Business Central AL multi-level extension dependency

This is a test made to support my blog post:

<https://dynamicsuser.net/nav/b/admin>



## How to test yourself

Start by cloning/forking this repository. After you've done this, then open it in Visual Studio Code. Make sure to open the .workspace file.

You need to setup a development server, unless you have one already. I've used a container based sandbox called Sandbox. If your server is different, then update the launch.json file. I've used the latest public Sandbox image.

1) Download symbols in ALProject1 - the library extension.
1) Publish ALProject1 to the server.
1) Download symbols in ALProject1 - the main extension.
1) Publish ALProject2 to the server.
1) Download symbols to ALProject3 - the test extension.
1) Publish ALProject3 to the server.

Then you can open the client and run the test toolkit.

Remember that each time you need to re-publish an extension, then you need to uninstall any extensions dependent on that app. So if you go back and make changes in ALProject1, then you need to uninstall ALProject2 and ALProject3, but you can publish it again. In the script folder is a small Powershell script, that will do it for you, if your server is in a local container.

## NOTICE

This is just for testing!