#!/bin/bash

 

result = $(sudo runuser -l krgupta -c cd /home/krgupta/infaagent/apps/agentcore && ./consoleAgentManager.sh getstatus)

 

if [ $result = "Cannot connect to the Agent. You may want to start the Agent first. Please look at consoleAgentManager.log for further detail." ]
then
  sudo runuser -l krgupta -c cd /home/krgupta/infaagent/apps/agentcore && ./infaagent startup

 

else
  sudo runuser -l krgupta -c cd /home/krgupta/infaagent/apps/agentcore && ./infaagent shutdown
  sleep 3m
  sudo runuser -l krgupta -c  cd /home/krgupta/infaagent/apps/agentcore && ./infaagent startup