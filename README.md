This is a Capstone project for Terraform.</br>
In this project we will be</br>
	-- Creating a Custom VPC along with its associated components such as</br>
		-- Subnet</br>
		-- Route Table</br>
		-- IGW</br>
		-- Security Group</br>
		-- NACL</br>
	-- Create an EC2 instance within the Custom VPC</br>
	-- Update the Image</br>
	-- Deploy an Apache httpd server</br>
	-- Verify that the Apache test page is accessible from the outside world.</br>

All the codes required to make this project a functional one have been provided in the Infratute’s GitHub account.</br>
You may fork the files from GitHub and test them right away or take a step-by-step approach to bisect each of the “tf” files and then deploy using Terraform.</br>
Required files for implementation</br>
	-- vars.tf > File that contains the variables</br>
	-- ec2.tf > File that defines the AMI, instance type, and the VPC characteristics</br>
	-- provider.tf > File that defines the provider and the access keys.</br>
	-- vpc.tf > File that defines the custom vpc configuration.</br>
	-- network.tf > File that defines the custom network deployment in detail.</br>
	-- httpd.sh > script file that defines the steps to be followed once the instance is up</br>
You may view and fork or download the “tf” files from here.
