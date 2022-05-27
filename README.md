# Summer

This is a project template for a FastAPI based project.

It has several helping modules.
- RouterScanner: scan and include APIRouters which comply with the naming rule automatically
- SimpleJinja2Templates: find the template's absolute path with just a template directory name
- Environment: properties and phase management module. It can manage properties each deployment phase separately
- local_server.py: uvicorn launcher

## RouterScanner
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
