
module "Storage1" {
  source              = ".//Storage"
  #names = ["iashishhere-bucket1","iashishhere-bucket2","iashishhere-bucket3"]
  names = ["iashishhere-bucket1"]
  locations = [ "us-west2"]
  storage_classes = ["STANDARD"]
  project = "ashish-sandbox-2020"
}

module "Storage2" {
  source              = ".//Storage"
  #names = ["iashishhere-bucket4","iashishhere-bucket5","iashishhere-bucket6"]
  names = ["iashishhere-bucket2"]
  locations = [ "us-west2"]
  storage_classes = ["COLDLINE"]
  project = "ashish-sandbox-2020"
  depends_on = [module.Storage1]
}

output "StorageName" {
  value = module.Storage2.*.name
}