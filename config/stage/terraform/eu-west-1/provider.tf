# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
 default_tags {
    tags = {
      Environment = "lightStage"
      ManagedBy   = "terraform"
    }
  }
}