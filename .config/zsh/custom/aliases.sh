alias icat='kitten icat';
alias datapkg='cp -r $HOME/web/data/src $HOME/web/grutte-apier/vendor/fotocadeau/data/ && cp -r $HOME/web/data/src $HOME/web/laravel-backend/vendor/fotocadeau/data/ && composer --working-dir=$HOME/web/grutte-apier dump --optimize --no-scripts && composer --working-dir=$HOME/web/laravel-backend dump --optimize --no-scripts'
alias dbj='docker restart redis horizon image-generator-horizon billy-beauty-shot-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it grutte-apier php artisan database-jobs:start && docker exec -it image-generator php artisan database-jobs:start';
alias dbj-billy='docker restart redis billy-beauty-shot-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it grutte-apier php artisan database-jobs:start && docker exec -it image-generator php artisan database-jobs:start';
alias dbj-grutte='docker restart redis horizon && docker exec -it grutte-apier php artisan database-jobs:start';
alias dbj-gert='docker restart redis image-generator-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it image-generator php artisan database-jobs:start';
alias mkctl='minikube kubectl -- ';
alias k='kubectl';
alias kontext='kubectl config current-context';
alias magelog='kontext && kubectl logs -f deployments/fpm';
alias magedeploylog='kontext && kubectl logs -f --all-containers -l job-name=status-check';
alias magephp='kontext && kubectl exec -it deployment/fpm -- bash';
alias magenginx='kontext && kubectl exec -it deployment/nginx -- sh';
alias magedump='kontext && kubectl exec deployment/fpm -- magerun2 db:dump --strip="@development akeneo_connector_*" --stdout > ./development.sql && ls -lah development.sql';
alias mageconfig='kontext && kubectl exec deployment/fpm -- bin/magento app:config:dump && kubectl exec deployment/fpm -- cat app/etc/config.php > ./config.dump.php && ls -lah config.dump.php';

# Set kube contexts
alias magelocal='(minikube status || minikube start --static-ip="192.168.20.2") && kubectl config use-context minikube';
alias magedev='gcloud config set project fotocadeau-magento-2-dev && kubectl config use-context gke_fotocadeau-magento-2-dev_europe-west4_magento-dev-autopilot';
alias magestaging='gcloud config set project fotocadeau-magento-2-staging && kubectl config use-context gke_fotocadeau-magento-2-staging_europe-west4_magento-staging-autopilot';
alias mageprod='gcloud config set project fotocadeau-magento-2 && kubectl config use-context gke_fotocadeau-magento-2_europe-west4_magento-production-autopilot';
