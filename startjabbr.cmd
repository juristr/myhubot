@echo off
set HUBOT_JABBR_PASSWORD=hubot$pwd
set HUBOT_JABBR_ROOMS=dev
set HUBOT_JABBR_HOST=http://localhost:16207

cd .\node_modules\hubot
node .\node_modules\coffee-script\bin\coffee .\bin\hubot -a jabbr
cd ..\..\

