@echo off
setlocal enabledelayedexpansion

:: Ask for user input
set /p name="Enter your name: "
set /p title="Enter the title of the blog snippet: "
set /p imageurl="Enter the URL of an image: "
set /p description="Enter a description of the image: "
set /p text="Enter the text content: "

:: Generate HTML snippet
echo ^<div class="blog"^> > output.html
echo ^<h2^>%title%^</h2^> >> output.html
echo ^<h3^>%name%^</h3^> >> output.html
echo ^<img src="%imageurl%" alt="%description%"^> >> output.html
echo ^<p^>%text%^</p^> >> output.html
echo ^</div^> >> output.html

echo HTML snippet has been generated and saved to output.html
pause
