#!/bin/sh
set -e
# NOTE: This resource (azurerm_role_assignment at tenant-root scope="/") cannot be
# imported via 'tofu import' due to:
#   1. azurerm v4.75.0: ID parsing bug for scope="/" (regex requires non-empty scope prefix)
#   2. azapi v2.10.0: 403 Forbidden - SP lacks Microsoft.Authorization/roleAssignments/read
#      at tenant root scope (/providers/Microsoft.Authorization/roleAssignments/*)
#
# The resource is tracked via terraform_data with state manually injected.
# The underlying Azure role assignment is NOT modified by tofu apply.
echo "INFO: terraform_data proxy resource - state was manually injected, no import needed."
