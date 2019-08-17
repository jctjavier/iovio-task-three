# iovio-task-three by jctjavier
###### status : *complete*

## Pre-requisites
1. Linux/Unix/Mac Terminal

## Instructions to run and view performance test
1. Copy jctjavier_task3.sh to your computer
2. Open terminal 
3. Navigate into the folder where the shellscript file is. 
4. Ensure that the shellscript has proper permissions by running:
```
sudo chmod +x jctjavier_task3.sh
```
4. Run any of the following commands: 
``` 
bash jctjavier_task3.sh
```
OR 
```
sh jctjavier_task3.sh
```
OR 
```
./jctjavier_task2.sh
```

## Instructions to add performance test to CRON job
1. Open terminal
2. Run the following command:
```
crontab -e
```
3. To schedule the job to run at 12:30am, add the following to the file:
```
29 0 * * * ~/<PATH to sh file>/jctjavier_task3.sh
```
Example:
```
29 0 * * * ~/Documents/iovio-task-three/jctjavier_task3.sh
```
4. Save and close crontab
