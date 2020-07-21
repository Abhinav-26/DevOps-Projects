# Automated WebSite Deployment using Docker

![](images/Git-Docker-Jenkins.png)

In this Project I have used the Git/GitHub, Jenkins and Docker and integrated all these technologies to create an automated system for AutoDeployment. For building this project I have used my another account ie, <a href="https://github.com/Abhinav-26-DevOps/Task-2">Abhinav-26-DevOps</a>, where I practise DevOps tasks.
If you are new to Git/GitHub, Jenkins, WebServer, I have written a well documented article on these topics in my <a href="https://www.linkedin.com/in/abhinavdubey26/">LinkedIn Profile</a> and shown how we can configure these in our system and integrate these technologies. To read the article <a href="https://www.linkedin.com/posts/abhinavdubey26_dockers-dockerimage-automation-activity-6668859867073273856-P6D2">click here<a>.

# How it Works
The Project which I have created is a very basic integration in DevOps Domain. In this Project, when the developer will commit the code, it will automatically push the code in backend to the respective GitHub Repository. Using the WebHooks from GitHub, as soon as the developer pushes the code, it will be send to Jenkins Workspace automatically and then Jenkins Jobs will be triggered automatically as per the Jobs queue. Also I have used the concept of Build Pipeline so that it will be easy to monitor the Jobs.<br>
<b>Job-1</b> - This Job will copy the Code which GitHub send to Jenkins to the required WorkSpace/folder.<br>
<b>Job-2</b> - This Job will Launch the Docker Container having the specifications to deploy the website within it.<br>
<b>Job-3</b> - This Job will be used to test the website weather it is working properly or not.<br>

And the best thing about all these Jobs is that it all will be automatically triggered as soon as the developer pushes the code to GitHub Repository.

