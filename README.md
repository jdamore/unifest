&#161;UniFest!
==============

## Description

* UQ Presentation UniFest project example.
* Contains a very simple website and its Ansible configuration.
* Requires Ansible, Boto and Java.
* Developed on MacOSX 10.9.5.

## Get Started

### Setup the site locally

1. Install [Ansible](http://www.ansible.com/home)
2. ```cd``` to ```config```
3. run ```ansible-playbook -i local bootstrap.yml```
4. run ```ansible-playbook -i local deploy.yml```
5. You should now have the UniFest site at [http://localhost/unifest](http://localhost/unifest)

### Setup the site to a remote EC2 instance

1. Install [Java](https://www.java.com/en/download/mac_download.jsp?locale-=en)
2. Install [Boto](https://boto.readthedocs.org/en/latest/) : ```sudo easy_install boto```
2. Create an AWS Account and generate an Access Key
3. In ```ec2.config``` specify your access and secret keys
4. Run ```./ec2-new.sh``` to create a new instance
5. Run ```./ec2-boot.sh```
8. Run ```./ec2-deploy.sh```
9. You should now have the UniFest site on the remote server (e.g. http://ec2-54-163-145-57.compute-1.amazonaws.com/unifest)

## Files

* ```config``` : Ansible configuration
	* ```local```: local resources inventory
	* ```ec2.yml```: Playbook to provision a new EC2
	* ```bootstrap.yml```: Playbook for bootstrapping the resources
	* ```deploy.yml```: Playbook for deploying the site to local and remote resources
	* ```ec2.py```: Ansible EC2 Python module (requires boto)

* ```unifest```: The UniFest website

* Plus some top level scripts
	* ```boot.sh```: bootstrap all resources with
	* ```deploy.sh```: deploy the UniFest website to yor local apache server
	* ```ec2-new.sh```: create a new EC2 instance
	* ```ec2-boot.sh```: bootstrap all ec2 instances with the UnitFest stack
	* ```ec2-deploy.sh```: deploy the UniFest sitew to all ec2 instances
	* ```ec2-list.sh```: lists all available ec2 instances
	* ```ec2.config```: Ansible EC2 module required properties
	* ```ec2.ini```: Ansible EC2 inventory



