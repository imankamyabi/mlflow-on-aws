#!/bin/sh

# Usage: ./scripts/02_create_user_pass.sh <Username> <Password>

htpasswd -nb $1 $2
