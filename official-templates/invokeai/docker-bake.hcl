variable "RELEASE" {
    default = "3.2.0"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["runpod/stable-diffusion:invoke-${RELEASE}"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
}
