variable "instance_types" {
  description = "인스턴스 타입 설정"
  type = object({
    bastion    = object({ id = string })
    web        = object({ id = string })
    nat        = object({ id = string })
    k8s_master = object({ id = string })
    k8s_worker = object({ id = string })
  })
}

variable "images" {
  description = "이미지 설정"
  type = object({
    ubuntu = object({ id = string })
  })
}

variable "ssh_key_name" {
  description = "SSH 키페어 이름"
  type        = string
}

variable "prefix" {
  description = "리소스 이름 접두사"
  type        = string
}

variable "bastion_port_id" {
  description = "Bastion 포트 ID"
  type        = string
}

variable "web_port_id" {
  description = "Web 포트 ID"
  type        = string
}

variable "nat_port_id" {
  description = "NAT 포트 ID"
  type        = string
}

variable "k8s_master_port_id" {
  description = "K8s Master 포트 ID"
  type        = string
}

variable "k8s_worker_port_ids" {
  description = "K8s Worker 포트 ID list"
  type        = list(string)
}
