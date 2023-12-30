@echo off

:start

echo ���������� ������, �͹̳�â�� ����� ��ġ�� �ʾƿ�.

:RETRY

set /p bool=URL�� �Է��Ͻðڽ��ϱ�? �ƴϸ� ���̹� �˻�� �Է��Ͻðڽ��ϱ�? �ƴϸ� ���� �˻�� �Է��Ͻðڽ��ϱ�? �ƴϸ� ���� �˻�� �Է��Ͻðڽ��ϱ�? (��ɾ�� URL, ���̹�, ����, ���� �� �ϳ��θ� ��Ȯ�� �Է��ϼ���.) ��ȣ �ȿ� ������ ����� �Է��ϼ��� : 

if %bool%==URL goto URL
if %bool%==���̹� goto naver
if %bool%==���� goto daum
if %bool%==���� goto googling

echo %bool%�� Ʋ�� ��ɾ�(��ɾ�� �Է��� ����� URL, ���̹�, ����, ���� �� �ϳ��� �����ϴ� ������)�Դϴ�, ��ȣ �ȿ� �������� �����ϴ�, �˼������� �ٽ� �õ��� �ּž� �ڽ��ϴ�.
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
set /p target=�˻���:
set pre_url=%pre2_url%%sep%%target%
goto open_url

:url
set /p pre_url=URL(WANING ��� : �������� (http://) ���� ���ÿ�):
goto open_url

:open_url
set protocal=http://
set url=%protocal%%pre_url%
start %url%
:RETRY2
set /p bool=���α׷��� ����� ���� �ʰ� �����ұ��? (�� / �ƴϿ�) : 
if %bool%==�� goto end
if %bool%==�ƴϿ� goto restarting
echo %bool%�� ���� �������Դϴ� ��/ �ƴϿ� �� �ϳ��� �����ϴ� �������� ���̾�� �մϴ�, �׷��� �׷��� �����̽��ϴ�, �˼������� �ٽ� �õ��� �ּž� �ڽ��ϴ�.
goto RETRY2

:restarting
echo ���α׷��� �ٽ� �����ϴ� ��...
goto start
:end