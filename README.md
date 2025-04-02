# 📄 Professional Resume Repository

This repository contains my up-to-date resumes in PDF format, automatically compiled from LaTeX source files using GitHub Actions.

## 📂 Files
- **LaTeX Source Files**:
  - `resume_en.tex` (English version)
  - `resume_es.tex` (Spanish version)
- **PDF Outputs** *(auto-generated)*:
  - [English Resume (`resume_en.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/resume_en.pdf)
  - [Spanish Resume (`resume_es.pdf`)](https://github.com/SimonCrA/cv_dynamic/blob/main/resume_es.pdf)

## 🛠️ How It Works
1. **LaTeX Compilation**: 
   - Pushes to `main` trigger GitHub Actions to compile `.tex` files into PDFs.
2. **Auto-Commit**:
   - The workflow commits the generated PDFs back to the repository.

## 🔗 Direct PDF Links
- [Download English Resume](https://github.com/SimonCrA/cv_dynamic/raw/main/resume_en.pdf)
- [Download Spanish Resume](https://github.com/SimonCrA/cv_dynamic/raw/main/resume_es.pdf)

## ⚙️ Technical Details
- Uses `xu-cheng/latex-action` for LaTeX compilation
- PDFs are rebuilt on every push
- Requires `resume.cls` for consistent formatting

---

**Note**: Replace `yourusername/yourrepo` with your actual GitHub username and repository name (e.g., `johndoe/resumes`).
