# dotfiles
My personal collection of config files for my Linux environments

## Requirements

- `neovim`
- `go`: [https://go.dev/doc/install](https://go.dev/doc/install)
- `javascript`: [https://docs.npmjs.com/downloading-and-installing-node-js-and-npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- `hyprland`: [https://wiki.hypr.land/Getting-Started/Installation/](https://wiki.hypr.land/Getting-Started/Installation/)
- `dunst`: `sudo dnf install dunst -y`
- `swaybg`: `sudo dnf install swaybg -y`

## Clean up

Hyprland installs some stuff we don't want, nor need. 

```shell
sudo dnf remove -y \
    wofi
```
