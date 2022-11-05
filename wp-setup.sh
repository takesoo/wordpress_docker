#!/bin/bash
set -ex;
wp core language install ja --activate
wp core multisite-convert
