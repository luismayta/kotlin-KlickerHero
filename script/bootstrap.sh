#!/usr/bin/env bash
# -*- coding: utf-8 -*-

export PROJECT_NAME=KotlinKlickerHero

export PYTHON_VERSION=3.6.0
export PYENV_NAME="${PROJECT_NAME}"

export GRIP_PORT=6430

# Vars Dir
export ROOT_DIR
ROOT_DIR=$(pwd)
export RESOURCES_DIR="$ROOT_DIR/resources"
export RESOURCES_DB_DIR="$RESOURCES_DIR/db"
export PROVISION_DIR="$ROOT_DIR/provision/ansible"
export SOURCE_DIR="${ROOT_DIR}/"
export REQUIREMENTS_DIR="${SOURCE_DIR}/requirements/"
export FILE_README="${SOURCE_DIR}/README.rst"
