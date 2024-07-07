alias icat='kitten icat';
alias k='kubectl';
alias kontext='kubectl config current-context';
alias magedump='kontext && kubectl exec deployment/magento -- magerun2 db:dump --strip="@development akeneo_connector_*" --stdout > ./development.sql && ls -lah development.sql';
alias mageconfig='kontext && kubectl exec deployment/fpm -- bin/magento app:config:dump && kubectl exec deployment/fpm -- cat app/etc/config.php > ./config.dump.php && ls -lah config.dump.php';

# Set kube contexts
alias magelocal='(minikube status || minikube start --static-ip="192.168.20.2") && kubectl config use-context minikube';
alias magedev='gcloud config set project fotocadeau-magento-2-dev && kubectl config use-context gke_fotocadeau-magento-2-dev_europe-west4_magento-dev-autopilot';
alias magestaging='gcloud config set project fotocadeau-magento-2-staging && kubectl config use-context gke_fotocadeau-magento-2-staging_europe-west4_magento-staging-autopilot';
alias mageprod='gcloud config set project fotocadeau-magento-2 && kubectl config use-context gke_fotocadeau-magento-2_europe-west4_magento-production-autopilot';

# Run magerun2 db:dump for a development database. This stores the dump locally as ./development.sql
alias magedump='kontext && kubectl exec deployment/magento -c fpm -- magerun2 db:dump --strip="@development" --stdout > ./development.sql && ls -lah development.sql';
# Dump config and download it locally as config./.dump.php
alias mageconfig='kontext && kubectl exec deployment/magento -c fpm -- bin/magento app:config:dump && kubectl exec deployment/magento -c fpm -- cat app/etc/config.php > ./config.dump.php && ls -lah config.dump.php';

# Set kube contexts
alias magetest='gcloud config set project fotocadeau-magento-2-test && kubectl config use-context gke_fotocadeau-magento-2-test_europe-west4_magento-test-autopilot';
alias magedev='gcloud config set project fotocadeau-magento-2-dev && kubectl config use-context gke_fotocadeau-magento-2-dev_europe-west4_magento-dev-autopilot';
alias magestaging='gcloud config set project fotocadeau-magento-2-staging && kubectl config use-context gke_fotocadeau-magento-2-staging_europe-west4_magento-staging-autopilot';
alias mageprod='gcloud config set project fotocadeau-magento-2 && kubectl config use-context gke_fotocadeau-magento-2_europe-west4_magento-production-autopilot';

# Run in containers
alias dmagento='docker exec -it magento';
alias mage='docker exec -it magento magerun2';
alias dgrutte='docker exec -w /var/www/grutte-apier -it php82';
