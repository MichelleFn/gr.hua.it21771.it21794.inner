
## Instructions for cloning project into eclipse
Step 1:<br/>
In eclipse workspace go to *File* > *Import* > *Projects from Git* > *Clone URI* 

Project URL: https://github.com/MichelleFn/DS.git.

When the wizard for project import appears select the third option *Import as general project*.

Step 2:<br/>
Once you have the cloned project in your project explorer *Right Click* > *Configure* > *Convert to Maven Project*.

Step 3:<br/>
You will also need to add a file named *application.properties* with the following content:

jdbc.url=jdbc:mysql://server-ip/db_name?useSSL=false<br/>
jdbc.user=username<br/>
jdbc.password=password
