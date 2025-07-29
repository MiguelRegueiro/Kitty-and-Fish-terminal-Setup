# ⚡ Fish Terminal Setup for Fedora & Fedora-Based Distros

This guide will walk you through installing and configuring [Fish shell](https://fishshell.com), [Starship prompt](https://starship.rs), [Fastfetch](https://github.com/fastfetch-cli/fastfetch), and the [Kitty terminal](https://sw.kovidgoyal.net/kitty/) using the configuration files provided in this repository.

## 🔧 Requirements

### 1. Install Starship

Starship is a minimal, blazing-fast, and customizable prompt for any shell.

```bash
sudo dnf install starship
```

Once installed, this repo includes a custom Starship configuration:

```bash
mkdir -p ~/.config
cp -r starship.toml ~/.config/
```

### 2. Install Fastfetch

Fastfetch is a neofetch replacement that prints system info beautifully.

```bash
sudo dnf install fastfetch
```

To use the provided Fastfetch config:

```bash
mkdir -p ~/.config/fastfetch
cp -r fastfetch/* ~/.config/fastfetch/
```

### 3. Install Kitty (optional but recommended)

Kitty is a fast, feature-rich, GPU-based terminal emulator.

```bash
sudo dnf install kitty
```

Use the included config by copying it to your Kitty config folder:

```bash
mkdir -p ~/.config/kitty
cp -r kitty.conf ~/.config/kitty/
```

Make sure Fish is selected as the default shell in the Kitty config:

```ini
# inside kitty.conf
shell = fish
```

---

## 🐟 Installing and Configuring Fish

### 1. Install Fish

```bash
sudo dnf install fish
```

### 2. Set Fish as the Default Shell

```bash
chsh -s /usr/bin/fish
```

> You may need to restart your terminal or log out/in for changes to take effect.

---

## 🧹 Optional: Disable Fish Greeting

To remove the default Fish welcome message, run:

```bash
set -U fish_greeting ""
```

---

## ⚙️ Configure Fish

To set up your custom prompt, abbreviations, and startup behavior:

1. Open the Fish config directory:

```bash
mkdir -p ~/.config/fish
```

2. Copy or edit the `config.fish` file:

```bash
cp config.fish ~/.config/fish/
```

Or edit manually:

```fish
nano ~/.config/fish/config.fish
```

Add the following:

```fish
if status is-interactive
    # System info
    fastfetch

    # Abbreviations (better than aliases)
    abbr -a update "sudo dnf update"
    abbr -a upgrade "sudo dnf upgrade"

    # Starship prompt
    starship init fish | source
end
```

---

## ✅ Final Steps

* Restart your terminal (or Kitty) to apply changes.
* You now have a fully customized terminal with Fish, Starship, Fastfetch, and Kitty.

---

## 📁 Repository Structure

```
.
├── config.fish
├── starship.toml
├── fastfetch/
│   └── config.json
└── kitty.conf
```

---

## 💡 Tips

* Add more abbreviations using `abbr -a name 'command'`.
* Update Fastfetch and Starship configs to match your hardware and style.
