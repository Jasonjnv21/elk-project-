## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/Jasonjnv21/elk-project-/blob/main/diagrams/ELK%20VM%20Diagram.drawio

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - https://github.com/Jasonjnv21/elk-project-/blob/main/ansible/filebeat.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available_, in addition to restricting access to the network.
- What aspect of security do load balancers protect? What is the advantage of a jump box? Load balances defend against DDos attacks. An advantage of a jumpbox is it is a secure computer that any admin can connect to before performing an administrative act.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
 What does Filebeat watch for? Forwarding and centralizing data.
- What does Metricbeat record? metrics and statistics

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| web 1    | web server| 10.0.0.5   | ubuntu            |
| web 2    | web server| 10.0.0.6   | ubuntu            |
| elk vm  |Elastic search/ 10.1.0.4   | Ubuntu         |
           stack
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the host  machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
-  10.0.0.5  10.0.0.6  10.1.0.4

Machines within the network can only be accessed by jump box.
-  Which machine did you allow to access your ELK VM? What was its IP address?_
10.0.0.1
A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 10.0.0.0/24          |
| web1     | no                  | web load balancer/ 20.120.10.51    |
| web 2    | no                  |   web load balancer/ 20.120.10.51           | web load balancer | yes        |   *                  |
| elk vm   | yes                 |   *

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible? Provides a stable environment

The playbook implements the following tasks:
-  In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- . install docker.io
  . install python/pip3
  . increase virtual memory
  . download and launch docker elk container
  . enable service docker on boot
-

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

 Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6
10.1.0.4

We have installed the following Beats on these machines:
- Metricbeat and Filebeat on Web1, Web 2 and Elk vm

These Beats allow us to collect the following information from each machine: 
Metric beats allows us to see metrics and statistics. I would expect to see numbers on performance, availability and reliability. 
Filebeat allows us to see forwarding and centralizing data. with filebeat i can expect to see it monitor log files and locations that i specify, collect log events and as well as forward them to something like logstash

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk.yml file to /etc/ansible/elk.yml.
- Update the hosts file to include the attribute (webservers) (elk)
- Run the playbook, and navigate to the elk.vm.ip:5601/app/kibana to check that the installation worked as expected.

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._ First on your jumpbox you need to start your container then attach it then edit the hosts file and add the necessary ips and attribute then create your playbook and run it by doing ansible-playbook elk.yml and finally check that your install worked by navigating to your elk.vm.ip:5601/app/kibana.

