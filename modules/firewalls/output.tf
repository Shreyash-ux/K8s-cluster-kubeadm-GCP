output "tags" {
    value = [tolist(resource.google_compute_firewall.ssh.target_tags)[0], 
    tolist(resource.google_compute_firewall.http.target_tags)[0],
    tolist(resource.google_compute_firewall.https.target_tags)[0],
    tolist(resource.google_compute_firewall.internal_connection.target_tags)[0],
    tolist(google_compute_firewall.k8sfirst.target_tags)[0],
    tolist(google_compute_firewall.k8ssecond.target_tags)[0],
    tolist(google_compute_firewall.k8sthird.target_tags)[0],
    tolist(google_compute_firewall.k8sfourth.target_tags)[0]
    ]
  
}

output "master" {
    value = [tolist(resource.google_compute_firewall.ssh.target_tags)[0],
    tolist(resource.google_compute_firewall.http.target_tags)[0],
    tolist(resource.google_compute_firewall.https.target_tags)[0],
    tolist(resource.google_compute_firewall.internal_connection.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sfirst.target_tags)[0],
    tolist(resource.google_compute_firewall.k8ssecond.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sthird.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sfourth.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sfifth.target_tags)[0],
    tolist(resource.google_compute_firewall.cni.target_tags)[0]
    ]
  
}
output "worker" {
    value = [tolist(resource.google_compute_firewall.ssh.target_tags)[0],
    tolist(resource.google_compute_firewall.http.target_tags)[0],
    tolist(resource.google_compute_firewall.https.target_tags)[0],
    tolist(resource.google_compute_firewall.internal_connection.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sthird.target_tags)[0],
    tolist(resource.google_compute_firewall.k8ssixth.target_tags)[0],
    tolist(resource.google_compute_firewall.k8sseventh.target_tags)[0]
    ]
  
}


# output "k8s-first" {
#   value = tolist(google_compute_firewall.first.target_tags)[0]
# }
# output "k8s-second" {
#   value = tolist(google_compute_firewall.second.target_tags)[0]
# }
# output "k8s-third" {
#   value = tolist(google_compute_firewall.third.target_tags)[0]
# }
# output "k8s-fourth" {
#   value = tolist(google_compute_firewall.fourth.target_tags)[0]
# }