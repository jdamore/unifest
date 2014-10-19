&#161;UniFest!
==============

## Description

UQ Presentation UniFest project example.
Contains a very simple website and its Ansible configuration.
Requires Ansible and Java.
Developed on MacOSX 10.9.5.

## Get Started

### Try locally (on MacOSX)

1. Install Ansible http://www.ansible.com/home
2. cd to config
3. run ansible-playbook -i local bootstrap.yml
4. run ansible-playbook -i local deploy.yml
5. You should now have the UniFest site at http://localhost/unifest

### Create a remote server and deploy the site

1. Create an AWS Account and generate an Access Key
2. In ec2/ec2.config specify your access key
3. Run new.sh to create a new instance
4. Add this instance name to the [remote] inventory e.g. ec2-54-163-145-57.compute-1.amazonaws.com
5. cd to config
6. run ansible-playbook -i remote bootstrap.yml
7. run ansible-playbook -i remote deploy.yml
8. You should now have the UniFest site on the remote server e.g. http://ec2-54-163-145-57.compute-1.amazonaws.com/unifest

### All in one

1. Run new.sh to create another instance
2. Add this instance name to the [remote] inventory e.g. ec2-54-163-145-57.compute-1.amazonaws.com
3. run boot.sh to bootstrap your Mac and the remote instances
4. run deploy.sh to deploy the site to all resources
5. You should now have the UniFest site on the remote server e.g. http://ec2-<something>.compute-1.amazonaws.com/unifest

## Files

* config : Ansible configuration
	* local: local resources inventory
	* remote: remote resources inventory
	* bootstrap.yml: Playbook for bootstrapping the resources
	* deploy.yml: Playbook for deploying the site to local and remote resources

* ec2 : AWS EC2 command line API and wrappers
 	* ec2-api-tools-1.7.1.1: CLI provided by Amazon
 	* ec2-amis: list all available AMIs
 	* ec2-create: create an EC2 instance
 	* ec2-describe: describe all instance you have created
 	* ec2-kill: destroy an EC2 instance
 	* ec2-start: start an ESB-backed EC2 instance
 	* ec2-stop: stop an ESB-backed EC2 instamce
 	* ec2-stop-all-running: stop all running ESB-backed EC2 instances
 	* ec2-tag: add a custom tag to an EC2 instance
 	* ec2.consfig: the config file - add your keys here

 * unifest: The UniFest website

 * all.sh: list all remote (AWS) resources (ec2-api)
 * boot.sh: bootstrap all resources with (Ansible)
 * deploy.sh: deploy the UniFest websote to all resources (Ansible)
 * new.sh: create a new EC2 instance (ec2-api)


