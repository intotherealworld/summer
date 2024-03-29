# Summer

This is a project template for a project based on FastAPI.

Summer provides several helping modules.
- RouterScanner: scan and include APIRouters which comply with the naming rule automatically
- SimpleJinja2Templates: find the template's absolute path with just a template directory name
- Environment: properties and phase management module. It can manage properties each deployment phase separately
- local_server.py: uvicorn launcher

## Usage
```
> git clone https://github.com/intotherealworld/summer.git
> cd summer
> pip install -r requirements.txt
> python local_server.py
```
### Docker
```commandline
> docker build -t summer -f ./deploymemt/Dockerfile .
> docker run -p 5000:5000 --name summer summer
```

## Modules

### RouterScanner
filename pattern:
```
# "router" is cutomizable.
*_router.py
```
coding convention
```
# The part of asterisk(*) must be the same.
*_router = APIRouter(tags=...)
```
example
```
root_router.py

root_router = APIRouter(tags=['root'])
```

### SimpleJinja2Templates
```
# Just use like this, if the directory name for the templates is 'templates'
templates = SimpleJinja2Templates()

# specify the directory name
templates = SimpleJinja2Templates(directory='directory_name')
```
example
> An example is in the [root_router.py](https://github.com/intotherealworld/summer/blob/main/summer/root_router.py)

### Environment
```
env = Environment()
title = env.get_props('summer.docs.title')
```
Setting deployment phase
```
# Environment Variable
SUMMER_DEPLOYMENT_PHASE=your_phase

# The file name of properties must be equal to the value of environment variable.
properties-your_phase.yml
```
If there are no environment variable named 'SUMMER_DEPLOYMENT_PHASE', only the properties.yml is used. The default properties are merged with the phase properties. A phase property which has the same name with a default property overrides it.

### local_server.py
This is the helper to launch the uvicorn.
> python local_server.py