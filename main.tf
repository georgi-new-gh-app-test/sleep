resource "random_pet" "name" {
 length    = "99"
 separator = "-"
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 480"
  }
  triggers = {
    run_every_time = uuid()
  }
}
