#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.iam_instance_profile.aws_iam_instance_profile.this' 'sg-private-runner-connector'
"$1" import -var-file environments/sg.tfvars 'module.key_pair.aws_key_pair.this' 'aplattel-private-runner'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this' 'i-078af6ee78e348aa8'
"$1" import -var-file environments/sg.tfvars 'module.network_interface.aws_network_interface.this' 'eni-0ec9413e836fa1cad'