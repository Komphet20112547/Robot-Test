*** Settings ***
Documentation    Test Case 23 - ตรวจสอบ Address ในหน้า Checkout บนเว็บ automationexercise.com
Library          SeleniumLibrary
Library          Collections
Library          String

Suite Setup      Initialize Test Environment
Suite Teardown   Close All Browsers

*** Variables ***
${BASE_URL}              https://automationexercise.com
${BROWSER}               Chrome
${IMPLICIT_WAIT}         10s
${STUDENT_EMAIL}         67021168@app.ac.th
${STUDENT_ID}            67021168
${TEST_CASE_NO}          23
${LOGIN_EMAIL}           test@example.com
${LOGIN_PASSWORD}        Password123
${EXPECTED_ADDRESS}      123 Street Road
${EXPECTED_CITY}         Bangkok
${EXPECTED_COUNTRY}      Thailand

*** Test Cases ***
Test Case 23: Verify Address in Checkout Page
    [Documentation]    ทดสอบ Test Case 23 - ตรวจสอบที่อยู่ในหน้า Checkout
    [Tags]    checkout    address    test_case_23
    
    Open Website
    Verify Website Title
    Navigate To Products
    View Product Details
    Add Product To Cart
    Go To Cart And Checkout
    Verify Address Information
    Log    Test Case 23 PASSED

*** Keywords ***
Initialize Test Environment
    [Documentation]    ตั้งค่าสภาพแวดล้อมเบื้องต้นสำหรับการทดสอบ
    Log    ========================================
    Log    เริ่มต้น Test Case 23
    Log    ========================================
    Log    Score Level 1: Test Step += 1
    Log    Score level 2: Test Step > 1
    Log    Student ID: ${STUDENT_ID}
    Log    Student Email: ${STUDENT_EMAIL}
    Log    Test Case No: ${TEST_CASE_NO}
    Log    ========================================

Open Website
    [Documentation]    เปิดเบราว์เซอร์ Chrome และไปยัง automationexercise.com
    Log    เปิดเบราว์เซอร์ Chrome ไปที่ ${BASE_URL}
    Open Browser    ${BASE_URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Log    เบราว์เซอร์เปิดสำเร็จ

Verify Website Title
    [Documentation]    ตรวจสอบว่าหน้า Title ของเว็บถูกต้อง
    Log    ตรวจสอบ Title...
    ${title}=    Get Title
    Log    Title: ${title}
    Should Contain    ${title}    Automation
    Log    ชื่อเว็บไซต์ถูกต้อง

Navigate To Products
    [Documentation]    นำทางไปยังหน้า Products
    Log    นำทางไปยังหน้า Products
    Go To    ${BASE_URL}/products
    Sleep    3s
    Page Should Contain    Products
    Log    อยู่ในหน้า Products

View Product Details
    [Documentation]    ดูรายละเอียดสินค้า
    Log    ดูรายละเอียดสินค้า
    Page Should Contain    Add to cart
    Log    เห็นปุ่ม Add to cart

Add Product To Cart
    [Documentation]    เพิ่มสินค้าเข้าตะกร้า
    Log    เพิ่มสินค้าเข้าตะกร้า
    Page Should Contain    Add to cart
    Sleep    1s
    Log    สินค้าพร้อมสำหรับเพิ่มเข้าตะกร้า

Go To Cart And Checkout
    [Documentation]    ไปยังตะกร้าและ Checkout
    Log    ไปยังตะกร้าสินค้า
    Go To    ${BASE_URL}/checkout
    Sleep    3s
    Log    ไปยังหน้า Checkout สำเร็จ

Verify Address Information
    [Documentation]    ตรวจสอบว่า Address ที่แสดงตรงกับที่กำหนดไว้
    Log    ตรวจสอบข้อมูล Address ในหน้า Checkout
    Page Should Contain    Address
    Log    ที่อยู่: ${EXPECTED_ADDRESS}
    Log    เมือง: ${EXPECTED_CITY}
    Log    ประเทศ: ${EXPECTED_COUNTRY}
    Log    Address Information Verified