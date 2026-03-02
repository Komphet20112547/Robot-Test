*** Settings ***
Documentation    Test Case 3 - ล็อกอินด้วยอีเมลและรหัสผ่านที่ไม่ถูกต้อง
Library          SeleniumLibrary
Library          Collections
Library          String

Suite Setup      Initialize Test Environment
Suite Teardown   Close All Browsers

*** Variables ***
${BASE_URL}              https://automationexercise.com
${BROWSER}               Chrome
${IMPLICIT_WAIT}         10s
${STUDENT_ID}            67021168
${STUDENT_EMAIL}         67021168@app.ac.th
${TEST_CASE_NO}          3
${INCORRECT_EMAIL}       incorrectemail@example.com
${INCORRECT_PASSWORD}    WrongPassword123

*** Test Cases ***
Test Case 3: Login User With Incorrect Email And Password
    [Documentation]    Test Case 3 - ตรวจสอบการล็อกอินด้วยอีเมลและรหัสผ่านที่ไม่ถูกต้อง
    [Tags]    login    incorrect_credentials    test_case_3
    
    เปิดเบราว์เซอร์
    เข้าหน้าเว็บ
    ตรวจสอบหน้า Home แสดงถูกต้อง
    คลิกปุ่ม Signup Login
    ตรวจสอบแบบฟอร์มล็อกอินมีอยู่
    กรอกอีเมลและรหัสผ่านที่ผิด
    คลิกปุ่ม Login
    ตรวจสอบข้อความเตือน
    
    Log    Test Case 3 เสร็จสิ้น

*** Keywords ***
Initialize Test Environment
    [Documentation]    ตั้งค่าสภาพแวดล้อมการทดสอบเบื้องต้น
    Log    ========================================
    Log    Test Case 3: ล็อกอินด้วยข้อมูลที่ผิด
    Log    ========================================
    Log    Student ID: ${STUDENT_ID}
    Log    Email: ${STUDENT_EMAIL}
    Log    Test Case: ${TEST_CASE_NO}
    Log    ========================================

เปิดเบราว์เซอร์
    [Documentation]    ขั้นตอนที่ 1: เปิดเบราว์เซอร์
    Log    [ขั้นตอนที่ 1] เปิดเบราว์เซอร์ Chrome...
    Open Browser    ${BASE_URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Log    เบราว์เซอร์เปิดสำเร็จ

เข้าหน้าเว็บ
    [Documentation]    ขั้นตอนที่ 2: เข้าไปที่ https://automationexercise.com
    Log    [ขั้นตอนที่ 2] เข้าไปที่ ${BASE_URL}
    Go To    ${BASE_URL}
    Wait Until Page Contains    Automation Exercise    timeout=10s
    Log    เข้าหน้าเว็บสำเร็จ

ตรวจสอบหน้า Home แสดงถูกต้อง
    [Documentation]    ขั้นตอนที่ 3: ตรวจสอบว่าหน้า Home แสดงอย่างถูกต้อง
    Log    [ขั้นตอนที่ 3] ตรวจสอบหน้า Home...
    ${title}=    Get Title
    Should Contain    ${title}    Automation
    Wait Until Page Contains    Features items    timeout=10s
    Log    หน้า Home ถูกต้อง

คลิกปุ่ม Signup Login
    [Documentation]    ขั้นตอนที่ 4: คลิกปุ่ม 'Signup / Login'
    Log    [ขั้นตอนที่ 4] คลิกปุ่ม Signup / Login...
    Click Link    xpath=//a[contains(@href, 'login')]
    Wait Until Page Contains    Login to your account    timeout=10s
    Log    หน้า Signup/Login เปิดแล้ว

ตรวจสอบแบบฟอร์มล็อกอินมีอยู่
    [Documentation]    ขั้นตอนที่ 5: ตรวจสอบว่า 'Login to your account' มี
    Log    [ขั้นตอนที่ 5] ตรวจสอบแบบฟอร์มล็อกอิน...
    Wait Until Element Is Visible    xpath=//input[@data-qa='login-email']    timeout=10s
    Wait Until Element Is Visible    xpath=//input[@data-qa='login-password']    timeout=10s
    Log    แบบฟอร์มล็อกอินมีอยู่

กรอกอีเมลและรหัสผ่านที่ผิด
    [Documentation]    ขั้นตอนที่ 6: กรอกอีเมลและรหัสผ่านที่ไม่ถูกต้อง
    Log    [ขั้นตอนที่ 6] กรอกข้อมูลที่ผิด...
    Log    อีเมล: ${INCORRECT_EMAIL}
    Log    รหัสผ่าน: ${INCORRECT_PASSWORD}
    Input Text    xpath=//input[@data-qa='login-email']    ${INCORRECT_EMAIL}
    Input Text    xpath=//input[@data-qa='login-password']    ${INCORRECT_PASSWORD}
    Log    กรอกข้อมูลเสร็จสิ้น

คลิกปุ่ม Login
    [Documentation]    ขั้นตอนที่ 7: คลิกปุ่ม 'login'
    Log    [ขั้นตอนที่ 7] คลิกปุ่ม Login...
    Click Button    xpath=//button[@data-qa='login-button']
    Wait Until Page Contains    Your email or password is incorrect    timeout=10s
    Log    ปุ่ม Login คลิกแล้ว

ตรวจสอบข้อความเตือน
    [Documentation]    ขั้นตอนที่ 8: ตรวจสอบข้อความ 'Your email or password is incorrect!' แสดง
    Log    [ขั้นตอนที่ 8] ตรวจสอบข้อความเตือน...
    Wait Until Page Contains    Your email or password is incorrect    timeout=10s
    Page Should Contain    Your email or password is incorrect
    Log    ข้อความเตือนแสดงถูกต้อง
    Log    Test Case 3 ผ่านสำเร็จ
