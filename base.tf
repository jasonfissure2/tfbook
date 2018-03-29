/* This is a multi-line comment. This is a multi-line comment. This is a multi-line comment. This is a multi-line comment. This is a multi-line comment. This is a multi-line comment. */
provider "aws" {
  shared_credentials_file = "/Users/jfisher/.aws/credentials"
  profile                 = "jmf-personal"
  region                  = "us-east-1"
}

# This is a single-line comment.
resource "aws_instance" "testtfi" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}

resource "aws_eip" "testtfi" {
  instance = "${aws_instance.testtfi.id}"
}
