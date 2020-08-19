# Basics concepts to deploy an application

For this challenge we have to deploy the Movie Analyst application.

## Requirements

For this project, the following softare will be required:

- VirtualBox.

- Vagrantfile (for automatic VM creation).

## Deployment process

### Virtual Machine

**Manual creation**

1. Download Linux distro of your preference, in this case we will use an [Ubuntu distro](https://ubuntu.com/download/desktop/thank-you?version=20.04.1&architecture=amd64).

2. Create a new virtual machine.

3. Install the Ubuntu distro in the virtual machine.

4. Set the network connection to allow ssh connections and port forwarding.

**Automatic creation**

For an automatic deployment we need to run:

```
$ vagrant up basic
```

This command would create a virtual machine with Ubuntu, in this case we assign a Host-only network for the machine with the 192.168.56.23 ip.

Connect with ssh running the following command:

```
vagrant ssh basic
```

Then it's time to setup the environment.

### Environment setup

1. Install nodejs.

```
$ sudo apt update
$ sudo apt install -y nodejs
```

2. Download the Movie analyst UI and API repositories.

```
$ git clone https://github.com/mnl359/movie-analyst-ui
$ git clone https://github.com/mnl359/movie-analyst-api
```

3. Install node modules and test the application.

For UI:
```
$ cd movie-analyst-ui
$ npm install
$ node server.js
```

For API:
```
$ cd movie-analyst-api
$ npm install
$ npm start
```

Then go to 192.168.56.23:3030 in your browser and test if the application is working propertly.
