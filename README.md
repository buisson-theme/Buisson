# Buisson

**An inky botanical color scheme** — Evergarden soul, Flexoki accessibility.

> Warm paper backgrounds × botanical ink accents × WCAG-calibrated contrasts.
> Designed for long coding and writing sessions without eye fatigue.

---

## Screenshots

### Dark

<table>
  <tr>
    <td><img src="Buisson/dark.png" alt="Buisson Dark" /></td>
    <td><img src="Buisson/dark-1.png" alt="Buisson Dark — alternate" /></td>
  </tr>
</table>

---

## Installation

### Zed

1. Copy `zed/buisson.json` to `~/.config/zed/themes/`
2. Open Command Palette → **theme selector: toggle** → select **Buisson Dark** or **Buisson Light**

Or symlink for live updates:
```bash
ln -sf /path/to/buisson-theme/zed/buisson.json ~/.config/zed/themes/buisson.json
```

---

### VS Code

**Option A — Install from Marketplace** *(once published)*
```
ext install buisson.buisson-theme
```

**Option B — Install from folder (local dev)**
1. Copy the `vscode/` folder to `~/.vscode/extensions/buisson-theme`
2. Reload VS Code
3. Open Command Palette → **Preferences: Color Theme** → select **Buisson Dark** or **Buisson Light**

**Option C — Install .vsix**
```bash
cd vscode/
npm install -g @vscode/vsce
vsce package
code --install-extension buisson-theme-1.0.0.vsix
```

---

### Kitty

```bash
cp kitty/buisson-dark.conf ~/.config/kitty/
echo "include ~/.config/kitty/buisson-dark.conf" >> ~/.config/kitty/kitty.conf
```

Switch between variants by changing the include line:
```
include ~/.config/kitty/buisson-dark.conf   # dark
include ~/.config/kitty/buisson-light.conf  # light
```

---

### Alacritty

```bash
cp alacritty/buisson-dark.toml ~/.config/alacritty/
# Add to alacritty.toml: import = ["~/.config/alacritty/buisson-dark.toml"]
```

---

## Palette

| Token | Dark | Light | Role |
|-------|------|-------|------|
| hibiscus | `#d04550` | `#c02040` | Keywords, booleans, exceptions |
| sage | `#6aaa44` | `#387008` | Functions, methods |
| river-moss | `#2ea882` | `#096868` | Types, classes |
| slate-sky | `#4878ba` | `#1860a8` | Numbers, constants |
| thistle | `#b070d0` | `#6028a8` | Operators, decorators |
| ochre | `#c87838` | `#a04810` | Strings, templates |

---

## Ports

| Platform | Status |
|----------|--------|
| Zed | ✅ Available |
| VS Code | ✅ Available |
| Kitty | ✅ Available |
| Alacritty | ✅ Available |
| Ghostty | ✅ Available |
| Neovim | 🚧 Planned |
| iTerm2 | 🚧 Planned |

---

## Design tokens

The complete palette is available in `tokens/buisson-tokens.json` — compatible with Tokens Studio (Figma plugin) and Style Dictionary.

---

## Accessibility

| | Dark | Light |
|--|------|-------|
| Main text | 11.55:1 AAA | 15.15:1 AAA |
| Comments | 5.49:1 AA | 6.01:1 AA |
| Keywords (hibiscus) | 3.64:1 AA Large* | 4.88:1 AA |
| Functions (sage) | 5.82:1 AA | 4.92:1 AA |
| Types (river-moss) | 5.50:1 AA | 5.38:1 AA |
| Strings (ochre) | 4.85:1 AA | 5.01:1 AA |
| Operators (thistle) | 4.75:1 AA | 7.26:1 AAA |
| Numbers (slate) | 3.65:1 AA Large* | 5.24:1 AA |

\* Same profile as Flexoki (red 3.97, blue 4.37). Syntax decoration elements, not body text.

---

## License

MIT
