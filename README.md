<h1 align="center">📜 ich_fivemlogsystem</h1>

<p align="center">
  A lightweight and extendable logging system for FiveM servers — written in pure Lua.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Lua-99%25-blueviolet?logo=lua&logoColor=white" alt="Lua" />
  <img src="https://img.shields.io/badge/FiveM-1%25-orange?logo=fivem&logoColor=white" alt="FiveM" />
  <img src="https://img.shields.io/github/license/ichsoftware/ich_fivemlogsystem" alt="License" />
</p>

---

## 🧩 About The Project

**ich_fivemlogsystem** is a modular, lightweight logging tool designed specifically for FiveM servers. It provides easy-to-use server-side logging with full Discord webhook integration. It logs everyone who enters and exits your server. It works with major frameworks like QBcore and ESX, or even standalone installations.

---

## 🛠️ Built With

| Technology | Description |
|------------|-------------|
| ![Lua](https://img.shields.io/badge/-Lua-2C2D72?logo=lua&logoColor=white) | Main scripting language |
| ![FiveM](https://img.shields.io/badge/-FiveM-FF5000?logo=fivem&logoColor=white) | Multiplayer game framework |
| ![Discord Webhooks](https://img.shields.io/badge/-Discord-5865F2?logo=discord&logoColor=white) | Log notifications |

---

## ⚙️ Getting Started

No external dependencies or build tools are required.

Just clone the repository and plug it into your server.

---

## 📁 Project Structure

ich_fivemlogsystem/<br>
├── fxmanifest.lua # FiveM resource manifest<br>
├── server.lua # Core logging logic<br>
└── README.md # Project documentation<br>

### 📦 Installation

1. Clone or download the repository.
2. Place the `ich_fivemlogsystem` folder in your `resources` directory.
3. Add the following line to your `server.cfg`:

```cfg
ensure ich_fivemlogsystem
