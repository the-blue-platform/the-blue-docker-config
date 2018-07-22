## The blue dockers
* Contains configuration of the blue database setting

## Getting support
If there are any problems, please feel free to contact to me or create new pull request  
* Email: trungvu.inside@gmail.com
## Compile and run API
Build all images:
* Execute: sh bin/build.sh latest
Push to repository:
* docker tag the-blue-database:latest chariot9/the-blue-database:latest
* docker push chariot9/the-blue-database:latest
Start containers:
* cd compose
* compose/docker-compose up -d
## License
Created by Trung Vu,  Japan 2018 
