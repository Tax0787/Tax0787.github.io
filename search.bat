@echo off

:start

echo 무서워하지 마세요, 터미널창은 당신을 해치지 않아요.

:RETRY

set /p bool=URL을 입력하시겠습니까? 아니면 네이버 검색어를 입력하시겠습니까? 아니면 다음 검색어를 입력하시겠습니까? 아니면 구글 검색어를 입력하시겠습니까? (명령어는 URL, 네이버, 다음, 구글 중 하나로만 정확히 입력하세요.) 괄호 안에 설명한 명령을 입력하세요 : 

if %bool%==URL goto URL
if %bool%==네이버 goto naver
if %bool%==다음 goto daum
if %bool%==구글 goto googling

echo %bool%은 틀린 명령어(명령어는 입력할 대상이 URL, 네이버, 다음, 구글 중 하나로 선택하는 선택지)입니다, 괄호 안에 선택지에 없습니다, 죄송하지만 다시 시도해 주셔야 겠습니다.
goto RETRY

:daum
set engin=search.daum.net
goto daum_or_googling
:googling
set engin=google.com
goto daum_or_googling

:naver
set engin=search.naver.com
set query=.naver?query
goto search
:daum_or_googling
set query=?q
goto search

:search
set sep=/search
set pre2_url=%engin%%sep%%query%
set sep==
set /p target=검색어:
set pre_url=%pre2_url%%sep%%target%
goto open_url

:url
set /p pre_url=URL(WANING 경고 : 프로토콜 (http://) 쓰지 마시오):
goto open_url

:open_url
set protocal=http://
set url=%protocal%%pre_url%
start %url%
:RETRY2
set /p bool=프로그램을 재시작 하지 않고 종료할까요? (예 / 아니오) : 
if %bool%==예 goto end
if %bool%==아니오 goto restarting
echo %bool%은 없는 선택지입니다 예/ 아니오 중 하나로 선택하는 선택지를 고르셨어야 합니다, 그런대 그러지 않으셨습니다, 죄송하지만 다시 시도해 주셔야 겠습니다.
goto RETRY2

:restarting
echo 프로그램을 다시 시작하는 중...
goto start
:end