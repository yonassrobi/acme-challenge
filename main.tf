

 module "ecs-fargate-service" {
  // depends_on                = [module.vpc]
   source                  = "./terraform/modules/ecs-fargate-service"
   vpc_id                  = var.vpc_id
   environment             = var.environment
   project                 = var.project
   region                  = var.region
   image_tag               = var.image_tag
   app_definitions         = local.app_definitions
   health_check_path       = "/swagger-ui/index.html"
 }
 

 
