# DevEnv/ProductionEnv Deployment Automation

![](images/CI:CD.png)

In this Project I have created an Automated System for deployment of application in Docker Container. The GitHub Repo for this project will have two branches, one for developer ie, <b>devenv</b> & another for master ie, <b>master</b>. The developer will commit to devenv branch and master will commit to master branch. As soon as the developer will commit, it will check for the website/application and if it is working properly then it will merge it with the production/master branch and will deploy it.

# Working Architecture and Use-Cases
In the above image you can see we have two persons sitting with Laptops and a Source Repository and then a CI Server from which the result is going back to one of the person sitting with Laptop. Let's assume one person is a developer of an organisation and another person is client. The Source Repository is GitHub in our case and CI Server is Jenkins.
