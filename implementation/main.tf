module "ec2_ins"{
    source="../ec2"
    name = "var.ins_type"
    bucket_name2 = "2nd-bucket"
}
module "s3_bucket"{
    source="../s3"
    bucket_name  = "var.ins_type2"
    acl="private"
}