setlocal enabledelayedexpansion
for /f "tokens=2 delims=:" %%i in ('ipconfif ~| findstr "IPv4"') do (
    set IP=%%i
    set IP=!IP:^1!
)
uv run launch.py --share --listion !IP!
pause
