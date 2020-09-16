resource "null_resource" "minikubeservice" {
    provisioner "local-exec" {
        command = " minikube service list"
    
    }

  depends_on = [
    kubernetes_deployment.pmbwp,
    kubernetes_service.pmbwplb,
    aws_db_instance.pmbdatabase
  ]
    
}