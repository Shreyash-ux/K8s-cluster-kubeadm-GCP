# Configure kube`config
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
#0:0
#1000:1000

# Install Claico Network Plugin Network 
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml