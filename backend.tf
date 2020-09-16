terraform{
    backend "s3"{
        bucket = "terraform-state-singapore"
        key = "terraform/demo4"
        region = "ap-southeast-1"
    }
}