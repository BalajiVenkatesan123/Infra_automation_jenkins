// Null resource for local and remote exec //


resource "null_resource" "name" {
    depends_on = [ module.Public-baston-instance ]
    
    // connection block for baston host
    connection {
    type     = "ssh"
    user     = "ec2-user"
    password = ""
    host     = module.Public-baston-instance.public_ip
    private_key = file("./terra_key.pem")
    }
    
    // file provisioner for copy terra_key to baston host
    provisioner "file" {
        source = "./terra_key.pem"
        destination = "/home/ec2-user/terra_key.pem"
       
    }

    // remote exec to baston host for change the key permission
    provisioner "remote-exec" {
        inline = [ "sudo chmod 400 /home/ec2-user/terra_key.pem" ]
      
    }


}