# Neovim Configuration για Windows

Αυτό το repository περιέχει την προσωπική μου παραμετροποίηση του Neovim, ειδικά προσαρμοσμένη για περιβάλλον Windows. Στόχος είναι ένα γρήγορο, μοντέρνο και πλήρως λειτουργικό IDE για web development και Go, με έμφαση στην παραγωγικότητα και την ευκολία χρήσης.

## Βασικά Χαρακτηριστικά

*   **LSP (Language Server Protocol):** Πλήρης υποστήριξη για auto-completion, diagnostics, go-to-definition, κ.λπ. για JavaScript, TypeScript, HTML, CSS, JSON, Go και Lua.
*   **Telescope:** Πανίσχυρο "fuzzy finder" για γρήγορη αναζήτηση αρχείων, κειμένου και buffers.
*   **Tree-sitter:** Ακριβές και λεπτομερές syntax highlighting.
*   **UI Enhancements:**
    *   `kanagawa` colorscheme.
    *   `lualine.nvim` για μοντέρνα status bar.
    *   `mini.icons` για εικονίδια αρχείων.
    *   `noice.nvim` για βελτιωμένη εμφάνιση μηνυμάτων και command line.
    *   `which-key.nvim` για διαδραστικό μενού συντομεύσεων στα Ελληνικά.
    *   `neo-tree.nvim` ως file explorer με Git status και εμφάνιση κρυφών αρχείων.
*   **Terminal:** Ενσωματωμένο αιωρούμενο terminal (`toggleterm.nvim`) με PowerShell.
*   **Formatting:** Ενσωματωμένο code formatting με `conform.nvim` (απαιτεί εξωτερικούς formatters όπως Prettier).
*   **Session Management:** Αυτόματη αποθήκευση/επαναφορά συνεδριών με `auto-session`.
*   **Persistent Undo:** Αποθήκευση ιστορικού αλλαγών.
*   **Ελληνικές Περιγραφές:** Όλες οι συντομεύσεις στο `which-key` είναι στα Ελληνικά.

## Απαιτούμενες Εξαρτήσεις (Εκτός Neovim)

Πριν κλωνοποιήσετε αυτό το repository, βεβαιωθείτε ότι έχετε εγκαταστήσει τα παρακάτω στο σύστημά σας:

*   **Git for Windows:** Απαραίτητο για τη διαχείριση του κώδικα και των plugins.
    *   [Download Git](https://git-scm.com/download/win)
*   **Node.js & npm:** Απαιτείται για το Mason (διαχείριση LSP servers/formatters) και ορισμένα plugins.
    *   [Download Node.js](https://nodejs.org/en/download/)
*   **C Compiler (MinGW/WinLibs):** Απαραίτητο για το Tree-sitter και ορισμένα plugins (π.χ. `telescope-fzf-native`).
    *   Εκτελέστε την εντολή στο PowerShell/CMD:
        ```powershell
        winget install --id=BrechtSanders.WinLibs.POSIX.UCRT -e
        ```
*   **fzf:** Ένα γρήγορο εργαλείο "fuzzy finding" που χρησιμοποιεί το Telescope.
    *   [Download fzf](https://github.com/junegunn/fzf/releases/latest) (Κατεβάστε το `fzf-..._windows_amd64.zip`, αποσυμπιέστε το και βάλτε το `fzf.exe` σε ένα φάκελο που είναι στο PATH σας).
*   **ripgrep (rg):** Ένα πολύ γρήγορο εργαλείο αναζήτησης κειμένου που χρησιμοποιεί το Telescope.
    *   [Download ripgrep](https://github.com/BurntSushi/ripgrep/releases/latest) (Κατεβάστε το `...pc-windows-msvc.zip`, αποσυμπιέστε το και βάλτε το `rg.exe` σε ένα φάκελο που είναι στο PATH σας).
*   **Nerd Font:** Για να εμφανίζονται σωστά τα εικονίδια.
    *   [Download Nerd Fonts](https://www.nerdfonts.com/font-downloads) (Προτείνεται η JetBrains Mono Nerd Font). Μετά την εγκατάσταση, ρυθμίστε το τερματικό σας (π.χ. Windows Terminal) να τη χρησιμοποιεί.

## Εγκατάσταση της Παραμετροποίησης

1.  **Κλωνοποιήστε το Repository:**
    ```powershell
    git clone https://github.com/HellasDev/Neovim.git $env:LOCALAPPDATA\nvim
    ```
    (Αν υπάρχει ήδη φάκελος `nvim` στο `%LOCALAPPDATA%`, μετονομάστε τον πρώτα).

2.  **Πρώτη Εκκίνηση του Neovim:**
    Ανοίξτε το Neovim πληκτρολογώντας `nvim` στο τερματικό.
    *   Το `lazy.nvim` θα ξεκινήσει αυτόματα την εγκατάσταση όλων των plugins. Αυτό θα πάρει λίγο χρόνο.
    *   Το `Mason` θα εγκαταστήσει αυτόματα τους Language Servers και τους formatters που έχουμε ορίσει.
    *   Το `nvim-treesitter` θα κατεβάσει και θα κάνει compile τους parsers.

3.  **Ενημέρωση Parsers (Προαιρετικό):**
    Αν θέλετε να ενημερώσετε τους parsers του Tree-sitter, εκτελέστε μέσα στο Neovim:
    ```vim
    :TSUpdate
    ```

## Βασικές Συντομεύσεις (Keymaps)

*   **`Space`:** Το leader key. Πατήστε το και περιμένετε για να δείτε το μενού του `which-key` με όλες τις διαθέσιμες συντομεύσεις στα Ελληνικά.
*   **`Ctrl + z`:** Ανοίγει/κλείνει το αιωρούμενο terminal.
*   **`Ctrl + h/j/k/l`:** Πλοήγηση μεταξύ των παραθύρων.
*   **`Shift + h/l` ή `Shift + Αριστερό/Δεξί Βέλος`:** Πλοήγηση μεταξύ των tabs (buffers).
*   **`Space + e`:** Ανοίγει/κλείνει τον File Explorer (`neo-tree`).
*   **`Space + s`:** Μενού αναζήτησης (Telescope).
    *   `Space + s + f`: Εύρεση αρχείων.
    *   `Space + s + t`: Εύρεση κειμένου.
    *   `Space + s + b`: Εύρεση σε buffers.
    *   `Space + s + o`: Εύρεση πρόσφατων αρχείων.
*   **`Space + c`:** Μενού για λειτουργίες κώδικα (LSP).
    *   `Space + c + f`: Μορφοποίηση κώδικα.
*   **`gd`:** Go to definition.
*   **`K`:** Hover (πληροφορίες για το σύμβολο).

---

**Σημείωση:** Αυτή η παραμετροποίηση είναι δυναμική. Μπορείτε να προσθέσετε ή να αφαιρέσετε plugins και ρυθμίσεις τροποποιώντας τα αρχεία στον φάκελο `lua/plugins/` και `lua/config/`.
