# Neovim Configuration για Windows

Αυτό το repository περιέχει την προσωπική μου παραμετροποίηση του Neovim, βελτιστοποιημένη για Windows. Στόχος είναι ένα γρήγορο, μοντέρνο και πλήρως λειτουργικό IDE για web development και Go, με έμφαση στην παραγωγικότητα και την ευκολία χρήσης.

## Βασικά Χαρακτηριστικά

*   **LSP (Language Server Protocol):** Πλήρης υποστήριξη για auto-completion, diagnostics, go-to-definition, κ.λπ. για JavaScript, TypeScript, HTML, CSS, JSON, Go και Lua.
*   **Telescope:** Πανίσχυρο "fuzzy finder" για γρήγορη αναζήτηση αρχείων, κειμένου και buffers.
*   **Tree-sitter:** Ακριβές και λεπτομερές syntax highlighting.
*   **UI Enhancements:**
    *   `gruvbox` colorscheme.
    *   `lualine.nvim` για μοντέρνα status bar.
    *   `mini.icons` για εικονίδια αρχείων.
    *   `noice.nvim` για βελτιωμένη εμφάνιση μηνυμάτων και command line.
    *   `which-key.nvim` για διαδραστικό μενού συντομεύσεων στα Ελληνικά.
    *   `neo-tree.nvim` ως file explorer.
    *   `hlchunk.nvim` για οπτική επισήμανση μπλοκ κώδικα.
    *   `nvim-colorizer.lua` για εμφάνιση χρωμάτων.
    *   `render-markdown.nvim` για rendering αρχείων Markdown.
*   **Terminal:** Ενσωματωμένο αιωρούμενο terminal (`toggleterm.nvim`).
*   **Formatting:** Αυτόματο code formatting on save με `conform.nvim`.
*   **Git Integration:** `gitsigns.nvim` για οπτικές ενδείξεις Git.
*   **Session Management:** Αυτόματη αποθήκευση/επαναφορά συνεδριών με `auto-session`.
*   **Persistent Undo:** Αποθήκευση ιστορικού αλλαγών.
*   **Ελληνικές Περιγραφές:** Όλες οι συντομεύσεις στο `which-key` είναι στα Ελληνικά.

## Απαιτούμενες Εξαρτήσεις

Πριν την εγκατάσταση, βεβαιωθείτε ότι έχετε εγκαταστήσει τα παρακάτω εργαλεία χρησιμοποιώντας `winget` σε ένα PowerShell terminal με δικαιώματα διαχειριστή.

**Εκτελέστε την παρακάτω εντολή για να εγκαταστήσετε όλα τα απαραίτητα εργαλεία:**

```powershell
winget install --id Git.Git -e && winget install --id OpenJS.NodeJS -e && winget install --id GoLang.Go -e && winget install --id BrechtSanders.WinLibs.POSIX.UCRT -e && winget install --id BurntSushi.ripgrep.MSVC -e && winget install --id junegunn.fzf -e && winget install --id sharkdp.fd -e && winget install --id JesseDuffield.lazygit -e
```

**Λίστα Εργαλείων:**
*   **Git:** Απαραίτητο για τη διαχείριση των plugins.
*   **Node.js & npm:** Απαιτείται για τους περισσότερους LSP servers και formatters.
*   **Go:** Απαραίτητο για την ανάπτυξη σε Go.
*   **C Compiler (MinGW/WinLibs):** Απαραίτητο για το `nvim-treesitter` για την μεταγλώττιση των parsers.
*   **Ripgrep (rg):** Γρήγορη αναζήτηση κειμένου για το Telescope.
*   **fzf:** Fuzzy finder που χρησιμοποιείται από το Telescope.
*   **fd:** Γρήγορη αναζήτηση αρχείων για το Telescope.
*   **lazygit:** (Προαιρετικό αλλά συνιστάται) Ένα εξαιρετικό TUI για το Git.

### Nerd Font
Για να εμφανίζονται σωστά τα εικονίδια στο `lualine` και το `neo-tree`, πρέπει να εγκαταστήσετε ένα Nerd Font.

1.  Κατεβάστε ένα Nerd Font της αρεσκείας σας (π.χ., [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)).
2.  Εγκαταστήστε το font στα Windows (δεξί κλικ -> Install).
3.  Ρυθμίστε το τερματικό σας (π.χ., Windows Terminal) να χρησιμοποιεί αυτό το font.

## Εγκατάσταση

1.  **Κλωνοποιήστε το Repository:**
    Ανοίξτε ένα PowerShell terminal και εκτελέστε:
    ```powershell
    git clone https://github.com/HellasDev/Neovim.git $env:LOCALAPPDATA\nvim
    ```
    *(Αν ο φάκελος `$env:LOCALAPPDATA\nvim` υπάρχει ήδη, μετονομάστε τον πρώτα).*

2.  **Πρώτη Εκκίνηση του Neovim:**
    Απλά ανοίξτε το Neovim πληκτρολογώντας `nvim` στο terminal.
    *   Το `lazy.nvim` (ο διαχειριστής πακέτων) θα ξεκινήσει αυτόματα και θα εγκαταστήσει όλα τα plugins.
    *   Μετά την εγκατάσταση των plugins, το `Mason` θα εγκαταστήσει αυτόματα τους απαραίτητους Language Servers (`gopls`, `tsserver`, `cssls`, κ.λπ.) και Formatters (`prettier`, `stylua`, `gofumpt`).
    *   Το `nvim-treesitter` θα κατεβάσει και θα μεταγλωττίσει τους parsers για το syntax highlighting.

    Η διαδικασία αυτή μπορεί να διαρκέσει μερικά λεπτά. Απλά περιμένετε να ολοκληρωθεί.

3.  **Επαλήθευση Εγκατάστασης:**
    *   Εκτελέστε `:checkhealth` μέσα στο Neovim για να δείτε αν υπάρχουν προβλήματα. Δώστε ιδιαίτερη προσοχή στα `nvim-treesitter` και `mason`.
    *   Ανοίξτε ένα αρχείο Go, TypeScript ή Lua για να βεβαιωθείτε ότι το LSP και το formatting λειτουργούν κανονικά.

## Βασικές Συντομεύσεις (Keymaps)

*   **`Space`:** Το leader key. Πατήστε το και περιμένετε για να δείτε το μενού του `which-key` με όλες τις διαθέσιμες συντομεύσεις στα Ελληνικά.
*   **`Ctrl + z`:** Ανοίγει/κλείνει το αιωρούμενο terminal.
*   **`Ctrl + h/j/k/l`:** Πλοήγηση μεταξύ των παραθύρων.
*   **`Shift + h/l` ή `Shift + Αριστερό/Δεξί Βέλος`:** Πλοήγηση μεταξύ των tabs (buffers).
*   **`Space + e`:** Ανοίγει/κλείνει τον File Explorer (`neo-tree`).
*   **`Space + w`:** Αποθηκεύει το αρχείο.
*   **`Space + s`:** Μενού αναζήτησης (Telescope).
    *   `Space + s + f`: Εύρεση αρχείων.
    *   `Space + s + t`: Εύρεση κειμένου.
    *   `Space + s + b`: Εύρεση σε buffers.
    *   `Space + s + o`: Εύρεση πρόσφατων αρχείων.
*   **`Space + c`:** Μενού για λειτουργίες κώδικα (LSP).
    *   `Space + c + f`: Μορφοποίηση κώδικα.
*   **`Space + g`:** Μενού για λειτουργίες Git (`gitsigns`).
    *   `Space + g + s`: Stage Hunk.
    *   `Space + g + r`: Reset Hunk.
    *   `Space + g + p`: Preview Hunk.
    *   `Space + g + b`: Blame Line.
    *   `[g` / `]g`: Πλοήγηση σε hunks.
*   **`Space + o`:** Μενού για Επιλογές.
    *   `Space + o + p`: Εναλλαγή Θέματος.
*   **`Space + a`:** Μενού για Ενέργειες.
    *   `Space + a + a`: Επιλογή Όλων.
    *   `Space + q`: Κλείσιμο Buffer.
    *   `Space + ss`: Αντικατάσταση Λέξης.
*   **`Space + sp`:** Μενού για Splits.
    *   `Space + s + v`: Κάθετο Split.
    *   `Space + s + h`: Οριζόντιος Split.
*   **`gd`:** Go to definition.
*   **`K`:** Hover (πληροφορίες για το σύμβολο).
*   **`[d` / `]d`:** Πλοήγηση σε diagnostics.

---

**Σημείωση:** Αυτή η παραμετροποίηση είναι δυναμική. Μπορείτε να προσθέσετε ή να αφαιρέσετε plugins και ρυθμίσεις τροποποιώντας τα αρχεία στον φάκελο `lua/plugins/` και `lua/config/`.
