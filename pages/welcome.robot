*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://automationpractice.com/
${BROWSER}  gc

*** Keywords *** 
#แยก kw ออกเป็นทีละหน้า (หน้าแรก)
Open
   Open Browser  ${URL}  browser=${BROWSER}
Choose menu dresses
   Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a
   