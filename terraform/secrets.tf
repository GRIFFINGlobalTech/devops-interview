module "development-secret" {
  source                  = "./secret"
  project                 = "python-app"
  environment             = "development"
  application             = "internal-apps"
}
