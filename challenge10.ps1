# Print to the terminal screen all active processes ordered by hightestCPU time consumption at the
Get-Process| sort-object -property cpu -Descending

# Print to the terminal screen all active processes ordered by highprocess identification number at the top
Get-Process| sort-object -Property id -descending

# Print to terminal screen the top five active processes ordered byhighest working set (ws(k) at the top
Get-Process| Sort-Object -Property workingset -descending |select-object -first 5

# start the process Microsoft Edge and have it open a website of yourchoosing (let's open a cat video)
start-process msedge https://www.google.com/

# start gthe process notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++)
{
    Start-Process notepad
}

#close all notepads
stop-process -name notepad

# kill a process by its process id number
stop-process -name msedge
