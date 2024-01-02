alias datapkg='cp -r $HOME/web/data/src $HOME/web/grutte-apier/vendor/fotocadeau/data/ && cp -r $HOME/web/data/src $HOME/web/laravel-backend/vendor/fotocadeau/data/ && composer --working-dir=$HOME/web/grutte-apier dump --optimize --no-scripts && composer --working-dir=$HOME/web/laravel-backend dump --optimize --no-scripts'
alias dbj='docker restart redis horizon image-generator-horizon billy-beauty-shot-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it grutte-apier php artisan database-jobs:start && docker exec -it image-generator php artisan database-jobs:start';
alias dbj-billy='docker restart redis billy-beauty-shot-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it grutte-apier php artisan database-jobs:start && docker exec -it image-generator php artisan database-jobs:start';
alias dbj-grutte='docker restart redis horizon && docker exec -it grutte-apier php artisan database-jobs:start';
alias dbj-gert='docker restart redis image-generator-horizon && docker exec -it image-generator php artisan ean:fill-redis && docker exec -it image-generator php artisan database-jobs:start';
alias mkctl='minikube kubectl -- ';
alias k='kubectl';
alias kontext='kubectl config current-context';
alias magelog='kontext && kubectl logs -f --all-containers deployments/magento';
alias mageadminlog='kontext && kubectl logs -f --all-containers deployments/magento-admin';
alias magedeploylog='kontext && kubectl logs -f --all-containers -l stage=deployment';
alias magephp='kontext && kubectl exec -it deployment/magento -c fpm -- bash';
alias magenginx='kontext && kubectl exec -it deployment/magento -c nginx-sidecar -- sh';
alias magedump='kontext && kubectl exec deployment/magento -c fpm -- magerun2 db:dump --strip="@development" --stdout > ./development.sql && ls -lah development.sql';
