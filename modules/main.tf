module "child" {
  source = "../modules/child"
  cidr_ranges = {}
  vpc_cidr_block = ""
}