Παρακάτω σου δίνω **έτοιμο, όμορφο και καθαρό README.md**, πλήρως μορφοποιημένο για GitHub. Είναι plug-and-play — κάνε copy-paste στο repo σου και είσαι έτοιμος.

---

# 🌟 Modern Neovim Configuration (Windows Edition)

Μια σύγχρονη και πλήρως βελτιστοποιημένη παραμετροποίηση για **Neovim σε Windows 10/11**, σχεδιασμένη ειδικά για developers που δουλεύουν σε **Go**, **web technologies** (HTML, CSS, JS, TS) και αναζητούν ένα σταθερό, παραγωγικό και όμορφο περιβάλλον.

---

## ✨ Χαρακτηριστικά

### 🎨 Μοντέρνα Εμφάνιση

* Minimal UI με **lualine**, **bufferline**
* Πλήρης υποστήριξη **Nerd Fonts**

### 💻 PowerShell Integration

* Εκκίνηση **PowerShell 7** μέσα από το Neovim
* Ρυθμίσεις για σωστή κωδικοποίηση UTF-8
* Βελτιώσεις για Windows path handling

### 🚀 Γρήγορη Πλοήγηση

* Fuzzy search με **telescope.nvim**
* Απαιτεί **ripgrep** για πλήρη λειτουργικότητα

### 🧠 Έξυπνη Επεξεργασία Κώδικα

* Autocompletion μέσω **nvim-cmp**
* LSP υποστήριξη για:

  * Go (**gopls**)
  * TypeScript / JavaScript (tsserver)
  * HTML
  * CSS
  * κ.α.
* Αυτόματη εγκατάσταση εργαλείων με **mason.nvim**

### 🪟 Windows Fixes

* Υποστήριξη σε paths με κενά
* Date/time formatting στα Ελληνικά
* Βελτιωμένο session management

### 🧰 Smart Terminal

* Ενσωματωμένο floating terminal
* Smart toggle με **Ctrl + z**
* Auto-clear κατά την έξοδο

---

## ⚙️ Προαπαιτούμενα

Πριν ξεκινήσεις, βεβαιώσου ότι έχεις τα εξής:

---

### 1️⃣ Windows Terminal & PowerShell 7

Για την καλύτερη εμπειρία:

```powershell
winget install Microsoft.WindowsTerminal
winget install Microsoft.PowerShell
```

---

### 2️⃣ Nerd Font (Απαραίτητο για εικονίδια)

1. Κατέβασε μια Nerd Font (προτείνεται: **JetBrainsMono Nerd Font**) από
   [https://www.nerdfonts.com](https://www.nerdfonts.com)
2. Κάνε εγκατάσταση όλων των `.ttf` αρχείων
3. Ρύθμισε την στο Windows Terminal:
   *Settings → Appearance → Font Face → JetBrainsMono NF*

---

### 3️⃣ Εργαλεία Ανάπτυξης (Dependencies)

Άνοιξε PowerShell **ως Administrator**:

```powershell
# Git
winget install Git.Git

# Ripgrep (για Telescope)
winget install BurntSushi.ripgrep.MSVC

# Go
winget install GoLang.Go

# Node.js (για LSPs, Mason, Prettier)
winget install OpenJS.NodeJS

# WinLibs (GCC/Make για plugins)
winget install --id BrechtSanders.WinLibs.POSIX.UCRT

# FZF (optional αλλά χρήσιμο)
winget install --id junegunn.fzf
```

---

## 🚀 Εγκατάσταση

### 1️⃣ Backup παλιών ρυθμίσεων (προαιρετικό)

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak -ErrorAction SilentlyContinue
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak -ErrorAction SilentlyContinue
```

---

### 2️⃣ Κατέβασε το Repo

Τοποθέτησε το config στον φάκελο του Neovim:

```powershell
git clone https://github.com/TheShaicho/nvim.git $env:LOCALAPPDATA\nvim
```

---

### 3️⃣ Εκκίνηση

Άνοιξε το Neovim:

```powershell
nvim
```

1. Την πρώτη φορά, ο **Lazy.nvim** θα εγκαταστήσει όλα τα plugins
2. Κλείσε και ξανά-άνοιξε το Neovim
3. Το **Mason** θα εγκαταστήσει αυτόματα όλους τους LSP servers (π.χ. gopls, tsserver κλπ.)

---

## 📸 Screenshots (Προαιρετικό)

*Πρόσθεσε εικόνες από το setup σου εδώ για καλύτερο showcase.*

---

## 🤝 Συνεισφορά

Ένα PR ή Issue είναι πάντα καλοδεχούμενο!

---

## 📜 Άδεια

MIT License — ελευθερία χρήσης και τροποποίησης.

---

Αν θέλεις, μπορώ:

* να σου φτιάξω **badge section** (Go, Neovim, Windows κ.λπ.)
* να προσθέσω **installation GIFs**,
* να μετατρέψω το README σε **dark/light theme** style όπως σε μεγάλα repos.

Πες μου τι θες!
