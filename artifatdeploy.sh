#!/bin/bash
#Author: Phil Obi
scp -i mkey /var/lib/jenkins/workspace/maven-project/MavenEnterpriseApp-web/target/MavenEnterpriseApplication.war ubuntu@54.83.141.8:/opt/tomcat/apache-tomcat-9.0.65/webapps