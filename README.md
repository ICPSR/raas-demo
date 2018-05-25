# Repository As A Service Demo Web Application
This is a simple web application that has only few static html contents and sample code to embed ICPSR RaaS component for demo purposes.

##Instructions
* Make sure JDK 1.8 is installed, follow OS specific [instructions](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* Set environment variables JAVA\_HOME correctly, for e.g on windows set JAVA_HOME=D:\Programs\Java\jdk1.8
* Install GIT (optional), documentation available [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* Install Apache Maven, follow [instructions](https://maven.apache.org/install.html), and zip binary can be downloaded from [here](http://mirrors.advancedhosters.com/apache/maven/binaries/apache-maven-3.0.5-bin.zip)*   
* Use git clone command "git clone https://github.com/ICPSR/raas-demo.git"  or download the project as a zip archive file from above "Clone or download" button.
* Extract the contents into a local drive directory and cd into contents folder with pom.xml file.
* Open command terminal, set path to enable maven, for e.g on windows set path=D:\Programs\apache-maven-3.0.5\bin
* Run command "mvn clean package jetty:run"
* Application is available here http://localhost:8080/raas

