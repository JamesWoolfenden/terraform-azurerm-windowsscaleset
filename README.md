# terraform-azurerm-windowsscalset

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-windowsscalset.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

Include **module.windowsscalset.tf** this repository as a module in your existing terraform code:

```terraform
module "windowsscalset" {
  source         = "JamesWoolfenden/windowsscalset/azurerm"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.example
  azurerm_subnet = azurerm_subnet.internal
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name    | Version |
| ------- | ------- |
| azurerm | n/a     |

## Inputs

| Name                   | Description                                        | Type     | Default                                                                                                                                                      | Required |
| ---------------------- | -------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | :------: |
| admin_password         | n/a                                                | `string` | n/a                                                                                                                                                          |   yes    |
| admin_username         | n/a                                                | `string` | `"adminuser"`                                                                                                                                                |    no    |
| azurerm_subnet         | (optional) describe your variable                  | `any`    | n/a                                                                                                                                                          |   yes    |
| common_tags            | This is to help you add tags to your cloud objects | `map`    | n/a                                                                                                                                                          |   yes    |
| instance_count         | n/a                                                | `number` | `1`                                                                                                                                                          |    no    |
| os_disk                | n/a                                                | `map`    | <pre>{<br> "caching": "ReadWrite",<br> "storage_account_type": "Standard_LRS"<br>}</pre>                                                                     |    no    |
| resource_group         | n/a                                                | `any`    | n/a                                                                                                                                                          |   yes    |
| scaleset_name          | n/a                                                | `string` | `"ex-vmss"`                                                                                                                                                  |    no    |
| sku                    | n/a                                                | `string` | `"Standard_F2"`                                                                                                                                              |    no    |
| source_image_reference | n/a                                                | `map`    | <pre>{<br> "offer": "WindowsServer",<br> "publisher": "MicrosoftWindowsServer",<br> "sku": "2016-Datacenter-Server-Core",<br> "version": "latest"<br>}</pre> |    no    |
| subnet                 | (optional) describe your variable                  | `map`    | <pre>{<br> "name": "backend",<br> "resource_group_name": "networking",<br> "virtual_network_name": "production"<br>}</pre>                                   |    no    |

## Outputs

| Name      | Description |
| --------- | ----------- |
| scale_set | n/a         |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 James Woolfenden

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
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-windowsscalset&url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-windowsscalset&url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset
[share_email]: mailto:?subject=terraform-azurerm-windowsscalset&body=https://github.com/JamesWoolfenden/terraform-azurerm-windowsscalset
