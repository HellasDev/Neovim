---

# <picture>

  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/TheShaicho/assets/main/nvim-banner-dark.png">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/TheShaicho/assets/main/nvim-banner-light.png">
  <img alt="Modern Neovim Config Banner" src="https://raw.githubusercontent.com/TheShaicho/assets/main/nvim-banner-light.png">
</picture>

<p align="center">
  <img src="https://img.shields.io/badge/Neovim-0.10+-57A143?logo=neovim&logoColor=white&style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Windows-10/11-0078D6?logo=windows&logoColor=white&style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Go-1.22+-00ADD8?logo=go&logoColor=white&style=for-the-badge"/>
  <img src="https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white&style=for-the-badge"/>
  <img src="https://img.shields.io/badge/PowerShell-7+-5391FE?logo=powershell&logoColor=white&style=for-the-badge"/>
</p>

---

# 🅽🅴🅾🆅🅸🅼  🅲🅾🅽🅵🅸🅶

```
 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|
      Modern Windows Configuration
```

---

# 🌟 Modern Neovim Configuration (Windows Edition)

Μια σύγχρονη, μοντέρνα και πλήρως βελτιστοποιημένη παραμετροποίηση για **Neovim στα Windows 10/11**, σχεδιασμένη ειδικά για developers που γράφουν **Go**, **TypeScript**, **HTML/CSS**, καθώς και γενικό web backend/frontend κώδικα.

---

# 🎬 Installation Walkthrough (GIFs)

> **🎥 Τα GIFs είναι placeholders.**
> Πες μου αν θες να σου φτιάξω εγώ custom GIFs από το δικό σου setup.

| Περιγραφή                                    | GIF                                                                                                      |
| -------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| Πρώτη εκκίνηση Neovim με εγκατάσταση plugins | <img src="https://raw.githubusercontent.com/TheShaicho/assets/main/gifs/nvim-install.gif" width="600"/>  |
| Ρύθμιση Nerd Font & Windows Terminal         | <img src="https://raw.githubusercontent.com/TheShaicho/assets/main/gifs/terminal-font.gif" width="600"/> |
| Mason που εγκαθιστά LSP servers              | <img src="https://raw.githubusercontent.com/TheShaicho/assets/main/gifs/mason-lsp.gif" width="600"/>     |

---

# ✨ Χαρακτηριστικά

### 🎨 Μοντέρνα Εμφάνιση

* Minimal theme & icons
* Lualine, bufferline, treesitter
* Πλήρης υποστήριξη Nerd Fonts

### 💻 PowerShell Integration

* PowerShell 7 ως default shell
* UTF-8 encoding
* Fixes για Windows path handling

### 🔍 Ταχύτατη Πλοήγηση

* Telescope fuzzy search
* Ripgrep backend
* Project-wide search σε ms

### 🧠 Productivity Tools

* nvim-cmp completion
* Go, TS, HTML, CSS, JSON LSP servers
* Mason για automatic installation
* Treesitter optimized parsers

### 🪟 Windows Fixes

* Paths with spaces
* Greek locale datetime
* Smarter session persistence
* Powershell terminal patches

### 🧰 Smart Terminal Mode

* Floating terminal (Ctrl + z)
* Auto-clear on exit
* Shell aware cwd switching

---

# ⚙️ Προαπαιτούμενα

## 1️⃣ Windows Terminal & PowerShell 7

```powershell
winget install Microsoft.WindowsTerminal
winget install Microsoft.PowerShell
```

---

## 2️⃣ Nerd Font

1. Κατέβασε JetBrainsMono NF
2. Εγκατάστησε όλα τα `.ttf`
3. Ρύθμισε το Windows Terminal:
   *Settings → Appearance → Font Face*

---

## 3️⃣ Developer Tools

```powershell
# Git
winget install Git.Git

# Ripgrep
winget install BurntSushi.ripgrep.MSVC

# Go
winget install GoLang.Go

# Node.js
winget install OpenJS.NodeJS

# WinLibs (gcc/make)
winget install --id BrechtSanders.WinLibs.POSIX.UCRT

# GnuWin32 Make
winget install GnuWin32.Make

# FZF (optional)
winget install --id junegunn.fzf
```

---

# 🚀 Εγκατάσταση

## 1️⃣ Backup παλιών ρυθμίσεων

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak -ErrorAction SilentlyContinue
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak -ErrorAction SilentlyContinue
```

---

## 2️⃣ Clone του repository

```powershell
git clone https://github.com/TheShaicho/nvim.git $env:LOCALAPPDATA\nvim
```

---

## 3️⃣ Πρώτη εκκίνηση

```powershell
nvim
```

* Lazy.nvim → εγκατάσταση plugins
* Κλείσε & άνοιξε ξανά
* Mason → αυτόματη εγκατάσταση LSP servers

---

Πες μου τι θέλεις και το ολοκληρώνω.
