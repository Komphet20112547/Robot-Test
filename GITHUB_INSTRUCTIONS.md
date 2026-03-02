# GitHub Upload Instructions

## Step 1: Initialize Git Repository (if not already done)
```bash
git init
git config user.email "67021168@app.ac.th"
git config user.name "Automation Engineer"
```

## Step 2: Add Files to Git
```bash
git add .
```

## Step 3: Create Initial Commit
```bash
git commit -m "Initial commit: Test Case 23 - Checkout Address Verification"
```

## Step 4: Add Remote Repository
Replace `YOUR_GITHUB_USERNAME` and `YOUR_REPO_NAME`:
```bash
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME.git
```

## Step 5: Push to GitHub
```bash
git branch -M main
git push -u origin main
```

## Step 6: Verify Upload
- Go to: https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME
- Check that all files are uploaded

---

## Alternative: Create New Repository on GitHub First

1. Go to https://github.com/new
2. Repository name: `robot-test-case-23` (or your preferred name)
3. Description: `Robot Framework automated test for checkout address verification`
4. Choose: Public or Private
5. Click "Create repository"
6. Follow the commands shown on GitHub for "push an existing repository"

---

## Files Included

✓ `robot_test_23.robot` - Main test file
✓ `README.md` - Complete documentation
✓ `requirements.txt` - Python dependencies
✓ `.gitignore` - Git ignore rules
✓ `setup.bat` - Automated setup script
✓ `simple_test.robot` - Basic test examples
✓ `web_example.robot` - Web automation examples

## Files Ignored by Git

The following are automatically excluded (see .gitignore):
- `.venv/` - Virtual environment
- `output.xml` - Test output
- `log.html` - Test log
- `report.html` - Test report
- `selenium-screenshot-*.png` - Screenshots
- `__pycache__/` - Python cache

---

## Quick Git Commands for Future Updates

```bash
# Check git status
git status

# Add modified files
git add .

# Commit changes
git commit -m "Description of changes"

# Push to GitHub
git push

# View commit history
git log --oneline

# Check remote URL
git remote -v
```

## Common Git Workflow

```bash
# 1. Make changes to your files
# 2. Check what changed
git status

# 3. Stage changes
git add .

# 4. Commit with message
git commit -m "Fixed bug in test case 23"

# 5. Push to GitHub
git push
```

---

**Author:** Automation Engineer (Student ID: 67021168)
