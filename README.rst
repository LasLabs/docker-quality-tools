|License Apache 2.0| |Build Status|

====================
Docker Quality Tools
====================

This repo provides scripts primarily focused at performing the following actions
in a Continuous Integration server for Docker repos:

* Testing
* Linting
* Deploying to Dockerhub

Usage
=====

This repo is meant to be called by a Continuous Integration server. A sample Travis
file is included at ``sample_files/.travis.yml``.

The test runner will automatically run any files matching the path ``./tests/test_*``.

The environment variable ``DOCKER_CONTAINER_ID`` will be available to all tests, as well
as all other environment variables that are available in other parts of the build.

Known Issues / Road Map
=======================

-  Enhance ReadMe
-  Add tests for Lint and Docker Hub
-  Centralize and refactor
-  Add some more test helpers

Credits
=======

Contributors
------------

* Dave Lasley <dave@laslabs.com>

Maintainer
----------

.. image:: https://laslabs.com/logo.png
   :alt: LasLabs Inc.
   :target: https://laslabs.com

This module is maintained by `LasLabs Inc. <https://laslabs.com>`_.

.. |License Apache 2.0| image:: https://img.shields.io/badge/license-Apache--2.0-blue.svg
   :target: https://www.apache.org/licenses/LICENSE-2.0.html
   :alt: License: Apache 2.0
.. |Build Status| image:: https://api.travis-ci.org/LasLabs/docker-quality-tools.svg?branch=master
   :target: https://travis-ci.org/LasLabs/docker-quality-tools
   :alt: Build Status
