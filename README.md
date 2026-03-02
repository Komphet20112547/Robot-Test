# Robot Framework Test Case 23 - Checkout Address Verification

## Project Overview
Automated test suite for verifying Address information in the Checkout page of automationexercise.com

**Test Case 23:** ตรวจสอบ Address ในหน้า Checkout บนเว็บ automationexercise.com

## Project Structure
```
robot/
├── robot_test_23.robot          # Main test file - Test Case 23
├── simple_test.robot            # Basic test examples
├── web_example.robot            # Web automation examples
├── README.md                     # This file
├── .gitignore                    # Git ignore file
├── report.html                   # Test report
├── log.html                      # Test log
└── .venv/                        # Virtual environment (excluded from git)
```

## Installation

### 1. Create Virtual Environment
```bash
python -m venv .venv
```

### 2. Activate Virtual Environment
**Windows:**
```bash
.\.venv\Scripts\Activate.ps1
```

**Mac/Linux:**
```bash
source .venv/bin/activate
```

### 3. Install Dependencies
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

## Running Tests

### Run Test Case 23 (Main Test)
```bash
.\.venv\Scripts\robot.exe robot_test_23.robot
```

Or if venv is activated:
```bash
robot robot_test_23.robot
```

### Run with Options

**Run with verbose debug output:**
```bash
robot -v LOGLEVEL:DEBUG robot_test_23.robot
```

**Run with screenshot on failure:**
```bash
robot --screenshot on robot_test_23.robot
```

**Run and save to specific directory:**
```bash
robot --outputdir results robot_test_23.robot
```

**Run all tests in folder:**
```bash
robot .
```

## Test Case 23 Details

### Test Description
Automated test to verify that Address information is displayed correctly in the Checkout page

### Test Steps
1. **Initialize Test Environment** - Set up test variables and logging
2. **Open Website** - Launch Chrome browser and navigate to automationexercise.com
3. **Verify Website Title** - Confirm page title contains "Automation"
4. **Navigate To Products** - Go to /products page
5. **View Product Details** - Verify product information is displayed
6. **Add Product To Cart** - Check cart button availability
7. **Go To Cart And Checkout** - Navigate to /checkout page
8. **Verify Address Information** - Confirm Address fields are present and contain expected data

### Test Variables
- **${BASE_URL}:** https://automationexercise.com
- **${STUDENT_ID}:** 67021168
- **${STUDENT_EMAIL}:** 67021168@app.ac.th
- **${TEST_CASE_NO}:** 23
- **${EXPECTED_ADDRESS}:** 123 Street Road
- **${EXPECTED_CITY}:** Bangkok
- **${EXPECTED_COUNTRY}:** Thailand

### Expected Result
✓ All steps execute successfully
✓ Address fields are visible in Checkout page
✓ Test passes without errors

## Running Reports

After running tests, open the generated files:

```bash
# Windows
start report.html
start log.html

# Mac/Linux
open report.html
open log.html
```

## Required Libraries

- **SeleniumLibrary** - For web browser automation
- **Collections** - For handling collections
- **String** - For string operations

## Project Statistics

- **Language:** Robot Framework
- **Test Cases:** 1 Main Test (Test Case 23)
- **Target Application:** automationexercise.com
- **Browser:** Chrome
- **Framework Version:** Robot Framework 7.4.1
- **Selenium Version:** 4.41.0

## Quick Commands

```bash
# Setup
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt

# Run Tests
.\.venv\Scripts\robot.exe robot_test_23.robot

# Run All Tests
.\.venv\Scripts\robot.exe .

# View Report
start report.html
```

## Links

- **Robot Framework Docs:** https://robotframework.org/
- **SeleniumLibrary Docs:** https://robotframework.org/SeleniumLibrary/
- **Test Application:** https://automationexercise.com/
- **GitHub Learning:** https://github.com/robotframework/

## Author
Automation Engineer - Student ID: 67021168

## License
MIT

## Next Steps
1. Modify the test cases to match your needs
2. Add more keywords for complex operations
3. Create separate files for different test suites
4. Integrate with CI/CD pipelines

## Useful Links
- Official Documentation: https://robotframework.org/
- Library Documentation: https://robotframework.org/robotframework/latest/libraries/
