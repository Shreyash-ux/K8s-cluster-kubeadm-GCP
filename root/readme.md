Networking :

![alt text](image.png)

Calico port - ingress - TCP 179

# Configure kube`config for non-root user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Configure kube`config for root user
sudo su
export KUBECONFIG=/etc/kubernetes/admin.conf


# Token
kubeadm token create --print-join-command

#
kubectl label node node01  node-role.kubernetes.io/worker=worker

