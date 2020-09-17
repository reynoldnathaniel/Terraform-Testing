terraform {
    backend "s3" {
        bucket = "terraform-state-8jqtcvay"
        key    = "terraform.tfstate"
        region = "ap-southeast-1"
    }
}
