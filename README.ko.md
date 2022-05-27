# Summer

FastAPI 기반 프로젝트를 빠르게 구성할 수 있는 템플릿입니다.

Summer에는 몇가지 유용한 모듈을 포함하고 있습니다.
- RouterScanner: APIRouter를 포함한 파일을 정해진 규칙으로 생성하면, 자동으로 등록해 줍니다. 
- SimpleJinja2Templates: Jinja2Templates를 사용할 때 템플릿의 절대 경로를 지정해 줘야 하는데, 이 모듈은 템플릿 디렉토리 이름만 지정하면 자동으로 절대경로를 찾아 설정해 줍니다.
- Environment: 속성 파일과 배포 단계를 관리하는 유틸리티 클래스입니다. 배포 단계별로 나누어서 속성을 관리할 수 있습니다.
- local_server.py: 로컬에서 uvicorn을 실행시켜주는 유틸리티입니다.

## RouterScanner
파일이름 규칙:
```
# "router" 부분도 원하는 대로 설정 가능합니다.
*_router.py
```
코딩 규칙
```
# * 부분이 같아야 합니다.
*_router = APIRouter(tags=...)
```
예
```
root_router.py

root_router = APIRouter(tags=['root'])
```
