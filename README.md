# About

This is an example to showcase how an privileged user can be used to execute only the main process in a container to improve security and container immutability aspect.

And unprivileged access could be provided to a user who does **docker exec** or **kubectl exec** to go into the container and do only.

The example showcases that the application process is being run as **root** but _entrypoint_ is via unprivileged **rouser**

# Usage

Clone this project, ensure you have docker and kubectl already setup and execute the below command

```bash
./run.sh
```
