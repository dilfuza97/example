erraform {
  backend "s3" {
    region = "eu-west-1"
    bucket = "dilfuza-jenkins"
    key    = "remote.state"
  }
}
