# 📄 Professional Resume & Cover Letter Repository

This repository contains my up-to-date resumes and cover letters in PDF format, automatically compiled from LaTeX source files using GitHub Actions.

## 📂 Files
- **LaTeX Source Files**:
  - `resume_en.tex` (English resume)
  - `resume_es.tex` (Spanish resume)
  - `coverletter_en.tex` (English cover letter)
  - `coverletter_es.tex` (Spanish cover letter)
- **PDF Outputs** *(auto-generated)*:
  - [English Resume (`resume_en.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/resume_en.pdf)
  - [Spanish Resume (`resume_es.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/resume_es.pdf)
  - [English Cover Letter (`coverletter_en.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/coverletter_en.pdf)
  - [Spanish Cover Letter (`coverletter_es.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/coverletter_es.pdf)

## 🛠️ How It Works
1. **LaTeX Compilation**: 
   - Pushes to `main` trigger GitHub Actions to compile `.tex` files into PDFs.
2. **Auto-Commit**:
   - The workflow commits the generated PDFs back to the repository.

## 🔗 Direct PDF Links
- [Download English Resume](https://github.com/SimonCrA/cv_dynamic/raw/main/resume_en.pdf)
- [Download Spanish Resume](https://github.com/SimonCrA/cv_dynamic/raw/main/resume_es.pdf)
- [Download English Cover Letter](https://github.com/SimonCrA/cv_dynamic/raw/main/coverletter_en.pdf)
- [Download Spanish Cover Letter](https://github.com/SimonCrA/cv_dynamic/raw/main/coverletter_es.pdf)

## ⚙️ Technical Details
- Uses `xu-cheng/latex-action` for LaTeX compilation
- PDFs are rebuilt on every push
- Requires `resume.cls` and `coverletter.cls` for consistent formatting

## 🎯 Job-Specific Branches
For job applications, create a branch with the naming convention `cv-<company>-<role>` (e.g., `cv-cashea-senior-web-engineer`). Each branch contains tailored versions of both the resume and cover letter for that specific position.

---

**Note**: Replace `yourusername/yourrepo` with your actual GitHub username and repository name (e.g., `johndoe/resumes`).
