How to contribute
=================

Apollo is based on an strong open-source philosophy so we would love your contributions.

## Apollo Core

Apollo is built on top of several opensource tecnologies:

* [Packer](https://packer.io) for automating the build of the base images
* [Terraform](https://www.terraform.io/) for provisioning the infrastructure
* [Apache Mesos](http://mesos.apache.org/) for cluster management, scheduling and resource isolation
* [Consul](http://consul.io) for service discovery, DNS
* [Docker](http://docker.io) for application container runtimes
* [Weave](https://github.com/zettio/weave) for networking of docker containers

We want Apollo core to be as much slim as possible providing a cloud agnostic mesos cluster with an autodiscovery system based on consul for multi-service tasks.

This reduce the impact of core changes allowing to the user customize Apollo behaviour via plugins for satisfying the requirements of a given project.

If you find an issue belonging to any of the tools used by Apollo please, refer to the project in question.

## Contributing to Apollo Core

* Submit an issue describing your proposed change to the Apollo repo.

* Fork the repo if you are modifying an existing one, develop and test your feature.

* Submit a pull request.

## Contributing to Apollo Core Plugins

* Create a new issue describing your proposed change to the plugin repo.

* Fork the repo, develop and test your feature.

* Create a pull request.

## Developing Apollo Plugins

We want Apollo to be as much pluggable as possible making contributions easier via core-agnostic plugins giving them freedom and flexibility regarding isolated testing, development and release management.

A new Apollo plugin is not more than a Ansible role hooked into an Apollo deploy.

For hooking up a new plugin e.g yet another framework on top of mesos into Apollo you need to add your role in the plugins.yaml and playbook.yml files.

When creating a new plugin we are keen on using ansible role for deploying mesos frameworks inside containers so we achieve total flexibility reusability and portabilty across operating systems.

## Contributing a new Apollo Plugin

* Apollo gives official support only for core plugins.

* If you think your plugin should be part of Apollo core plugins please create a new issue describing your feature, and explaining the motivation.

* You can hook up your own plugins into Apollo even if they are not core plugins as explained in section above.