# Overview

This module creates a terraform backend in AWS S3 and dyanamo DB. It takes a
bucket name and a dynamodb table name, and creates the proper resources. 

An optional input `force_destroy` can be toggled to true to enable  deleting data
from the bucket when destroying it.
