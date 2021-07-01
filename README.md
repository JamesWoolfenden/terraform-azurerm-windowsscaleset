# terraform-azurerm-windowsscaleset

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-windowsscaleset.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-windowsscaleset.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-windowsscaleset/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-windowsscaleset&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-windowsscaleset/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-windowsscaleset&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

Include **module.windowsscaleset.tf** this repository as a module in your existing terraform code:

```terraform
module "windowsscaleset" {
  source         = "JamesWoolfenden/windowsscaleset/azurerm"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.example
  azurerm_subnet = azurerm_subnet.internal
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_windows_virtual_machine_scale_set.windows](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine_scale_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | n/a | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | n/a | `string` | `"adminuser"` | no |
| <a name="input_azurerm_subnet"></a> [azurerm\_subnet](#input\_azurerm\_subnet) | (optional) describe your variable | `any` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_os_disk"></a> [os\_disk](#input\_os\_disk) | n/a | `map(any)` | <pre>{<br>  "caching": "ReadWrite",<br>  "storage_account_type": "Standard_LRS"<br>}</pre> | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `any` | n/a | yes |
| <a name="input_scaleset_name"></a> [scaleset\_name](#input\_scaleset\_name) | n/a | `string` | `"ex-vmss"` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | `"Standard_F2"` | no |
| <a name="input_source_image_reference"></a> [source\_image\_reference](#input\_source\_image\_reference) | n/a | `map(any)` | <pre>{<br>  "offer": "WindowsServer",<br>  "publisher": "MicrosoftWindowsServer",<br>  "sku": "2016-Datacenter-Server-Core",<br>  "version": "latest"<br>}</pre> | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | (optional) describe your variable | `map(any)` | <pre>{<br>  "name": "backend",<br>  "resource_group_name": "networking",<br>  "virtual_network_name": "production"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_scale_set"></a> [scale\_set](#output\_scale\_set) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-windowsscaleset&url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-windowsscaleset&url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset
[share_email]: mailto:?subject=terraform-azurerm-windowsscaleset&body=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscaleset
