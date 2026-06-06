# Buisson

Buisson is a botanical color scheme for editors and terminals.

Buisson's palette is inspired by [Everforest](https://github.com/sainnhe/everforest) and [Flexoki](https://github.com/kepano/flexoki), designed for long coding and writing sessions with warm paper backgrounds, botanical ink accents, and WCAG-calibrated contrasts.

## Previews

<table>
  <tr>
    <td><img src="assets/zed-dark.png" alt="Buisson Dark — Zed" /></td>
    <td><img src="assets/zed-light.png" alt="Buisson Light — Zed" /></td>
  </tr>
</table>

<details>
<summary>Neovim</summary>

<table>
  <tr>
    <td><img src="assets/nvim-dark.png" alt="Buisson Dark — Neovim" /></td>
    <td><img src="assets/nvim-light.png" alt="Buisson Light — Neovim" /></td>
  </tr>
</table>

</details>

<details>
<summary>Ghostty</summary>

<table>
  <tr>
    <td><img src="assets/ghostty-dark.png" alt="Buisson Dark — Ghostty" /></td>
    <td><img src="assets/ghostty-light.png" alt="Buisson Light — Ghostty" /></td>
  </tr>
</table>

</details>

## Installation

<details>
<summary>Zed</summary>

```sh
cp zed/buisson.json ~/.config/zed/themes/
```

Command palette → `theme selector: toggle` → **Buisson Dark** or **Buisson Light**.

</details>

<details>
<summary>VS Code</summary>

Coming soon on the marketplace. In the meantime, install manually:

```sh
cp -r vscode/ ~/.vscode/extensions/buisson-theme
```

Reload VS Code, then select **Buisson Dark** or **Buisson Light** from the command palette.

</details>

<details>
<summary>Kitty</summary>

```sh
cp kitty/buisson-dark.conf ~/.config/kitty/
echo "include ~/.config/kitty/buisson-dark.conf" >> ~/.config/kitty/kitty.conf
```

Switch variants by changing the `include` line to `buisson-light.conf`.

</details>

<details>
<summary>Ghostty</summary>

```sh
cp "ghostty/Buisson Dark" ~/.config/ghostty/themes/
cp "ghostty/Buisson Light" ~/.config/ghostty/themes/
```

In `ghostty.conf`: `theme = dark:Buisson Dark,light:Buisson Light`

</details>

<details>
<summary>Alacritty</summary>

```sh
cp alacritty/buisson-dark.toml ~/.config/alacritty/
```

In `alacritty.toml`: `import = ["~/.config/alacritty/buisson-dark.toml"]`

</details>

<details>
<summary>Neovim</summary>

Requires Neovim 0.9+ with [lazy.nvim](https://github.com/folke/lazy.nvim).

```lua
{
  dir = "/path/to/buisson-theme/nvim",  -- or use the GitHub URL once published
  name = "buisson",
  lazy = false,
  priority = 1000,
  config = function()
    require("buisson").load()
  end,
}
```

Switch variants with `:set background=dark` / `:set background=light`.

</details>

## Palette

|  | dark | light | role |
|--|------|-------|------|
| hibiscus | `#d04550` | `#c02040` | keywords · booleans · exceptions |
| sage | `#6aaa44` | `#387008` | functions · methods |
| river-moss | `#2ea882` | `#096868` | types · classes |
| slate-sky | `#4878ba` | `#1860a8` | numbers · constants |
| thistle | `#b070d0` | `#6028a8` | operators · decorators |
| ochre | `#c87838` | `#a04810` | strings · templates |

<table>
  <tr>
    <td><img src="assets/dark.png" alt="Buisson Dark palette" /></td>
    <td><img src="assets/light.png" alt="Buisson Light palette" /></td>
  </tr>
</table>

Design tokens available in `tokens/buisson-tokens.json` compatible with [Tokens Studio](https://tokens.studio/) and [Style Dictionary](https://amzn.github.io/style-dictionary/).

## Ports

| platform | status |
|----------|--------|
| Zed | ✅ |
| VS Code | ✅ |
| Kitty | ✅ |
| Ghostty | ✅ |
| Alacritty | ✅ |
| Neovim | ✅ |
| Obsidian | ✅ |
| iTerm2 | 🚧 planned |

new ports are always welcome, if you've made one, feel free to open a PR.

## License

MIT
