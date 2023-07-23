### Performance

##### Asynchronous

ansible strategy in running tasks is linear. It means that we are waiting for the task to execute and to finish on all corresponding hosts before we move on next task.


Ansible has support for asynchronous task execution which is useful for long-running tasks where you dont want ssh connections to stay open or the task to exceed the ssh timeout. we can run the task and then we can poll later on for tha status.
- async: 10 => meaning wait at least 10 seconds.
- poll: 1 => it will poll for the status every one second.


##### Serial

- serial: 2 => means that we can run task against two hosts at the same time 
