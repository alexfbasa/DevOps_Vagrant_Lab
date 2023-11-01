Lab Purpose
This local lab environment, provisioned using the provided Vagrantfile, is designed to serve as a sandbox for DevOps
practices and experimentation. The lab's primary purposes are as follows:

DevOps Learning and Practice: The lab provides a controlled environment where you can practice various DevOps concepts
and technologies, including infrastructure as code (IaC), virtualization, and automation. It allows you to gain hands-on
experience with these tools and techniques, which are crucial for modern software development and operations.

Service Isolation and Testing: Each virtual machine (VM) within the lab is dedicated to a specific service or component,
such as databases, message queuing, web servers, and application servers. This isolation facilitates the testing and
development of individual components, ensuring that changes or updates do not impact unrelated services.

Development and Testing: You can use this lab to develop and test applications that rely on the provisioned services.
For instance, you can build and deploy web applications on Tomcat, interact with databases using MariaDB, or implement
messaging systems using RabbitMQ. This practice environment helps in application development and testing.

Customization and Scaling: The provided Vagrantfile and configuration allow you to customize the lab environment
according to your specific requirements. You can modify the number of VMs, adjust their resource allocations, and
install additional software components. This flexibility makes the lab suitable for various projects.

Continuous Integration and Continuous Deployment (CI/CD): The lab can serve as a testing ground for CI/CD pipelines,
where you can automate the build, test, and deployment processes for your applications. You can integrate tools like
Jenkins, GitLab CI/CD, or others to streamline your software development workflows.

Knowledge Transfer and Documentation: Documenting your lab environment and the configurations of each VM helps in
knowledge transfer and collaboration with team members or as a reference for your future self. The README file serves as
an excellent starting point for anyone joining the project.

Troubleshooting and Debugging: In the event of issues or errors in your DevOps workflows, this lab can be used for
debugging and troubleshooting. You can replicate issues, test potential solutions, and refine your problem-solving
skills.

By creating this local lab environment, you empower yourself with the resources needed to develop, test, and experiment
with a wide range of DevOps tools and technologies. It's a valuable resource for both learning and practical
application,
ultimately contributing to your proficiency in DevOps practices.
---

# Vagrantfile

This `Vagrantfile` is used to provision a local lab environment with multiple virtual machines (VMs) for various DevOps
services. Each VM serves a specific purpose in your local development environment. The following services are
provisioned:

- MariaDB: A relational database management system.
- Memcache: A distributed memory object caching system.
- RabbitMQ: A message broker to support message queuing.
- Tomcat: An application server for deploying web applications.
- Nginx: A web server and reverse proxy server.

## Configuration

The `Vagrantfile` is configured to create the necessary VMs and set up their networking, box images, and provisioning
scripts. Here's a brief overview of each VM configuration:

### MariaDB VM (db01)

- IP Address: 192.168.56.15
- Box: eurolinux-vagrant/centos-stream-8
- Memory: 1024 MB
- Provisioning Script: `mysql.sh`

### Memcache VM (mc01)

- IP Address: 192.168.56.14
- Box: eurolinux-vagrant/centos-stream-8
- Memory: 1024 MB
- Provisioning Script: `memcache.sh`

### RabbitMQ VM (rmq01)

- IP Address: 192.168.56.16
- Box: eurolinux-vagrant/centos-stream-8
- Memory: 1024 MB
- Provisioning Script: `rabbitmq.sh`

### Tomcat VM (app01)

- IP Address: 192.168.56.12
- Box: eurolinux-vagrant/centos-stream-8
- Memory: 1024 MB
- Provisioning Script: `tomcat.sh`

### Nginx VM (web01)

- IP Address: 192.168.56.11
- Box: ubuntu/focal64
- Memory: 800 MB
- GUI Enabled
- Provisioning Script: `nginx.sh`

## Getting Started

To set up your local lab environment using this `Vagrantfile`, follow these steps:

1. Install Vagrant: If you haven't already, install Vagrant on your local machine.

2. Clone this repository: Clone the repository containing your `Vagrantfile` and provisioning scripts.

3. Navigate to the repository directory in your terminal.

4. Run the following Vagrant command to create and provision the VMs:

```bash
vagrant up
```

5. Wait for the provisioning process to complete. Vagrant will create and configure the VMs according to the defined
   settings in the `Vagrantfile`.

6. Once the VMs are up and running, you can access and interact with the services they provide.

## Usage

- You can access the services provided by each VM using their respective IP addresses.

- Use the provided provisioning scripts to further configure and install specific software on each VM.

- Customize the Vagrantfile or provisioning scripts to fit your specific needs or add additional services as required.

---
