# 🚀 `devaway` 🚀

> The throwaway development environment

`devaway` is a super minimal and lightweight Docker container that provides you with a throwaway development environment, perfect for those times when you just need a quick and easy way to spin up a development environment without any fuss.

## 🤖 What's Inside? 🤖

`devaway` comes with the following software pre-installed and ready to use:

- Vim with a small configuration
- The latest version of Git
- The FZF command-line fuzzy finder
- The ripgrep search tool

## 🧰 Usage 🧰

```bash
git clone https://github.com/sschneemelcher/devaway
cd devaway
./build
./devaway
```

This will start the `devaway` container and mount your current working directory to the `/work` directory inside the container, allowing you to work on your projects as if you were working directly on your host machine.

When starting vim for the first time, you will have to execute `:PlugInstall` to install the plugins, but that should not take long.

For ease of use, you may want to link the `devaway` command in your `$PATH`, so that you can call it from anywhere.

## 🎉 Happy Hacking! 🎉

That's it! `devaway` is designed to be a quick and easy way to spin up a development environment, so you can focus on what really matters – writing code and having fun! So go ahead and start hacking away! 💻💪

## 📖 License 📖

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

