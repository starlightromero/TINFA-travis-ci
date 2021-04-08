build :
				docker-compose -f docker-compose.dev.yml build --force-rm --no-cache

start :
				docker-compose -f docker-compose.dev.yml up

stop :
				docker-compose down
				
debug :
				docker-compose -f docker-compose.dev.yml --verbose up

reload:
				docker-compose down && docker-compose -f docker-compose.dev.yml up
				
build-travis :
				docker-compose -f docker-compose.travis.yml build
				
build-prod:
				docker-compose build --force-rm --no-cache
				
start-prod :
				docker-compose up -d

debug-prod :
				docker-compose --verbose up
				
lint :
				npm run lint
				
rmi :
				docker rmi this-is-not-financial-advice_node
				
test :
				docker-compose -f docker-compose.test.yml up
				
reload-test :
				docker-compose down && docker-compose -f docker-compose.test.yml up
