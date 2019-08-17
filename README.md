# iovio-task-three by jctjavier
###### status : *complete*

## Pre-requisites
1. Linux/Unix/Mac Terminal

## Instructions to run and view performance test
1. You may either clone or copy the shellscript into your computer.

a. Clone this project into your computer by using the following command:
```
git clone https://github.com/jctjavier/iovio-task-three.git
```

b. Alternatively, you can just copy **jctjavier_task3.sh** to your computer

2. Open terminal

3. Navigate into the folder where the shellscript file is. 
Example:
```
cd iovio-task-three
```

4. Ensure that the shellscript has proper permissions by running:
```
sudo chmod +x jctjavier_task3.sh
```

5. Run any of the following commands: 
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
6. Results of the performance test with 2 concurrent users and 10 requests are displayed in PNG format. 

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
