reponame="robotfactory"
imagename="alpine-micro-nginx"

for folder in */
do
  tag=${folder%/}
  echo -e "\033[1;32mBuilding $reponame/$imagename:$tag \033[0m"
  docker build -t $reponame/$imagename:$tag --no-cache ./$tag
  echo -e "\033[1;32mPushing $reponame/$imagename:$tag \033[0m"
  docker push $reponame/$imagename:$tag
done
