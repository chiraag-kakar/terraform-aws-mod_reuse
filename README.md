This module helps in building reusable infrastructure in AWS by aggregating vpc, subnets, route, gateway, instances, security groups with ease.

## Authentication : 

Note : Make sure you have created the following "provider.tf"  and include the following values (If the resources are accessed by assuming role)

```
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "XXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  assume_role {
    role_arn    = "arn:aws:iam::XXXXXXXXXXXX:role/terraform"
    external_id = "role name"
  }
}
```

## Example Usage :


```
```
