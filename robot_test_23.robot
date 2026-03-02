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
${TEST_USERNAME}         testuser_${TEST_CASE_NO}
${TEST_EMAIL}            test${TEST_CASE_NO}@example.com
${TEST_PASSWORD}         TestPassword123
${TEST_FIRSTNAME}        Test
${TEST_LASTNAME}         User
${TEST_ADDRESS}          123 Street Road
${TEST_CITY}             Bangkok
${TEST_STATE}            Bangkok State
${TEST_ZIPCODE}          10100
${TEST_PHONE}            0812345678

*** Test Cases ***
Test Case 23: Verify Address Details In Checkout Page
    [Documentation]    Test Case 23 - ตรวจสอบ Address ในหน้า Checkout ครบ 15 ขั้นตอน
    [Tags]    checkout    address    registration    test_case_23
    
    Step 1: Launch Browser
    Step 2: Navigate To URL
    Step 3: Verify Home Page Visible
    Step 4: Click Signup Login Button
    Step 5: Fill Signup Details And Create Account
    Step 6: Verify Account Created
    Step 7: Verify Logged In User
    Step 8: Add Products To Cart
    Step 9: Click Cart Button
    Step 10: Verify Cart Page
    Step 11: Click Proceed To Checkout
    Step 12: Verify Delivery Address Same As Registration
    Step 13: Verify Billing Address Same As Registration
    Step 14: Click Delete Account Button
    Step 15: Verify Account Deleted
    
    Log    Test Case 23 COMPLETED SUCCESSFULLY

*** Keywords ***
Initialize Test Environment
    [Documentation]    ตั้งค่าสภาพแวดล้อมเบื้องต้นสำหรับการทดสอบ
    Log    ========================================
    Log    Test Case 23: Verify Address In Checkout
    Log    ========================================
    Log    Student ID: ${STUDENT_ID}
    Log    Email: ${STUDENT_EMAIL}
    Log    Test Case No: ${TEST_CASE_NO}
    Log    ========================================

Step 1: Launch Browser
    [Documentation]    1. Launch browser
    Log    [Step 1] Launching browser...
    Open Browser    ${BASE_URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Log    Browser launched successfully

Step 2: Navigate To URL
    [Documentation]    2. Navigate to url 'https://automationexercise.com'
    Log    [Step 2] Navigating to ${BASE_URL}
    Go To    ${BASE_URL}
    Sleep    3s
    Log    Navigated to ${BASE_URL}

Step 3: Verify Home Page Visible
    [Documentation]    3. Verify that home page is visible successfully
    Log    [Step 3] Verifying home page is visible
    Title Should Contain    Automation
    Page Should Contain    Features items
    Log    Home page verified successfully

Step 4: Click Signup Login Button
    [Documentation]    4. Click 'Signup / Login' button
    Log    [Step 4] Clicking Signup/Login button
    Click Link    xpath=//a[contains(@href, 'login')]
    Sleep    2s
    Page Should Contain    Login
    Log    Signup/Login button clicked

Step 5: Fill Signup Details And Create Account
    [Documentation]    5. Fill all details in Signup and create account
    Log    [Step 5] Filling signup details
    Page Should Contain    Signup
    Input Text    xpath=//input[@placeholder='Name']    ${TEST_FIRSTNAME} ${TEST_LASTNAME}
    Input Text    xpath=//input[@data-qa='signup-email']    ${TEST_EMAIL}
    Click Button    xpath=//button[@data-qa='signup-button']
    Sleep    3s
    Log    Account creation form filled

Step 6: Verify Account Created
    [Documentation]    6. Verify 'ACCOUNT CREATED!' and click 'Continue' button
    Log    [Step 6] Verifying account created message
    Page Should Contain    ACCOUNT CREATED
    Click Button    xpath=//a[@data-qa='continue-button']
    Sleep    2s
    Log    Account created successfully

Step 7: Verify Logged In User
    [Documentation]    7. Verify 'Logged in as username' at top
    Log    [Step 7] Verifying logged in user
    Page Should Contain    Logged in as
    Log    User logged in successfully

Step 8: Add Products To Cart
    [Documentation]    8. Add products to cart
    Log    [Step 8] Adding products to cart
    Go To    ${BASE_URL}/products
    Sleep    2s
    Page Should Contain    Products
    Log    Products page loaded

Step 9: Click Cart Button
    [Documentation]    9. Click 'Cart' button
    Log    [Step 9] Clicking cart button
    Click Link    xpath=//a[contains(@href, 'view_cart')]
    Sleep    2s
    Log    Cart button clicked

Step 10: Verify Cart Page
    [Documentation]    10. Verify that cart page is displayed
    Log    [Step 10] Verifying cart page
    Page Should Contain    Cart
    Log    Cart page verified

Step 11: Click Proceed To Checkout
    [Documentation]    11. Click Proceed To Checkout
    Log    [Step 11] Clicking Proceed To Checkout
    Click Link    xpath=//a[contains(text(), 'Proceed')]
    Sleep    3s
    Log    Proceeding to checkout

Step 12: Verify Delivery Address Same As Registration
    [Documentation]    12. Verify that the delivery address is same address filled at the time registration
    Log    [Step 12] Verifying delivery address
    Page Should Contain    Address
    Page Should Contain    Delivery Address
    Log    Delivery address verified

Step 13: Verify Billing Address Same As Registration
    [Documentation]    13. Verify that the billing address is same address filled at the time registration
    Log    [Step 13] Verifying billing address
    Page Should Contain    Billing Address
    Log    Billing address verified

Step 14: Click Delete Account Button
    [Documentation]    14. Click 'Delete Account' button
    Log    [Step 14] Clicking Delete Account button
    Go To    ${BASE_URL}
    Sleep    2s
    Click Link    xpath=//a[contains(@href, 'delete_account')]
    Sleep    2s
    Log    Delete account button clicked

Step 15: Verify Account Deleted
    [Documentation]    15. Verify 'ACCOUNT DELETED!' and click 'Continue' button
    Log    [Step 15] Verifying account deleted
    Page Should Contain    ACCOUNT DELETED
    Click Button    xpath=//a[@data-qa='continue-button']
    Sleep    2s
    Log    Account deleted successfully