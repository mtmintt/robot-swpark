*** Settings ***
#Library  SeleniumLibrary
Resource  ./pages2/welcome.robot
Resource  ./pages2/catalog.robot

*** Variables ***
${URL}  http://automationpractice.com/
${BROWSER}  gc

*** Test Cases ***
Sorting by price
    #[Tags] done  sprint1
    เข้า web หน้าแรก
    เข้าไปยังหน้า summer dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก
    ผลการทำงานต้องแสดงผลจากแพงไปถูก


*** Keywords ***
#kw รวมทุกหน้า
เข้า web หน้าแรก
    welcome.Open
    # Open Browser ${URL} browser=${BROWSER}
    # Open Browser   http://automationpractice.com/  browser=gc
      
ผลการทำงานต้องแสดงผลจากแพงไปถูก
     catalog.Choose menu dresses
     #Wait Until Element Contains   xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a   Printed Summer Dress
ทำการเลือก sort ด้วย price จากแพงไปถูก
     Select From List By Value   id:selectProductSort   price:desc
เข้าไปยังหน้า summer dress
     welcome.Choose menu dresses
     catalog.Choose summer dresses
     #Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a
     #Click Element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

   