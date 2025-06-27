# wm-utility-scripts

A curated collection of shell scripts and configurations tailored for lightweight Linux window managers such as **BSPWM**, **Hyprland**, and **Openbox**. These scripts automate everyday desktop tasks and provide utility enhancements to polybar, rofi, waybar, and more.

---

## 📁 Directory Structure

```plaintext
BSPWM/
  ├── polybar/
  │   ├── dunst-status.sh
  │   ├── polybar-timer.sh
  │   └── uptime.sh
  └── rofi/
      ├── launcher.rasi
      ├── launcher.sh
      ├── powermenu.rasi
      └── powermenu.sh

Hyprland/
  ├── hypr/
  │   ├── hyprswitch-wrapper.sh
  │   ├── keybinds.txt
  │   ├── restart_hyprswitch.sh
  │   ├── show_keybinds.sh
  │   └── volume_notify.sh
  └── waybar/
      ├── swaync-dnd-status.sh
      ├── swaync-dnd.sh
      ├── uptime.sh
      └── waybar-wttr

Openbox/
  └── openbox/
      ├── lower-volume.sh
      ├── mute-volume.sh
      ├── ob-reload.sh
      └── raise-volume.sh
```

---

## 🛠️ Features

- **Polybar modules** for uptime display and Dunst notification status.
- **Rofi launcher and power menu** with theming (`.rasi`).
- **Hyprland utilities**:
  - Volume OSD
  - Hyprswitch wrapper and restart script
  - Keybind display
- **Waybar modules**: DND toggle, uptime, and weather via wttr.in.
- **Openbox enhancements**: Volume control and OB config reload.

---

## 🚀 Getting Started

Clone the repository:

```bash
git clone https://github.com/KanishkMishra143/wm-utility-scripts.git
cd wm-utility-scripts
```

Make scripts executable:

```bash
find . -type f -name "*.sh" -exec chmod +x {} \;
```

Copy relevant scripts to your config folders, e.g., `~/.config/bspwm/`, `~/.config/waybar/`, etc.

---

## 📦 Requirements

- POSIX shell (bash/zsh/sh)
- Tools like `notify-send`, `amixer`, `playerctl`, `swaync`, `dunst`, etc., depending on the script.
- Polybar, Rofi, Waybar, and your WM (bspwm/hyprland/openbox).

---

## 🤝 Contributing

Pull requests are welcome. Please test your additions with your WM setup and add usage comments if needed.

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
