# echo-app-csharp: A simple C# CLI to understand MSBuild and the .NET ecosystem

[![License: BSD-2-Clause](https://img.shields.io/badge/License-BSD%202--Clause-blue.svg)](./LICENSE)
[![C#](https://img.shields.io/badge/language-C%23-blue.svg)](https://learn.microsoft.com/dotnet/csharp/)
[![Educational](https://img.shields.io/badge/purpose-educational-yellow)](https://dibs.ravenhill.cl)
[![Status](https://img.shields.io/badge/status-stable-brightgreen)]()
[![DIBS Site](https://img.shields.io/badge/website-dibs.ravenhill.cl-purple)](https://dibs.ravenhill.cl)

A minimal command-line application written in **C#**, designed to introduce **MSBuild** and the **.NET CLI** through a
clean, idiomatic, and reproducible example. This project accompanies a lesson from
the [DIBS course](https://dibs.ravenhill.cl), focused on building well-structured and maintainable software libraries.

> [!note]
> The course is taught in Spanish, but **all repository content is in English** to ensure accessibility and broader
> adoption.

## 📖 Table of Contents

- [echo-app-csharp: A simple C# CLI to understand MSBuild and the .NET ecosystem](#echo-app-csharp-a-simple-c-cli-to-understand-msbuild-and-the-net-ecosystem)
    - [📖 Table of Contents](#-table-of-contents)
    - [🎓 Lessons](#-lessons)
    - [🔍 Overview](#-overview)
    - [📝 Getting Started](#-getting-started)
        - [Prerequisites](#prerequisites)
        - [Clone \& Compile](#clone--compile)
    - [🤝 Contributing](#-contributing)
        - [How to Contribute](#how-to-contribute)
    - [🛡️ License](#️-license)
    - [🌐 DIBS Website](#-dibs-website)

## 🎓 Lessons

This repository is part of the following DIBS course lesson:

- 📘 **[Creating a Basic C# Project with MSBuild](https://dibs.ravenhill.cl/docs/build-systems/init/msbuild)**  
  Learn how to install .NET, create a console project using MSBuild and `dotnet`, understand the project layout,
  customize the `.csproj`, and write your first C# program.

## 🔍 Overview

This application is intentionally simple — its purpose is not to showcase complex logic, but to serve as an *
*educational scaffold** to explore:

- The role of MSBuild and the `.csproj` file
- The structure of a modern .NET project
- How the `dotnet` CLI facilitates creation, compilation, and execution
- Best practices for reproducible builds and configuration

The program simply echoes a fixed phrase — but the lesson is in the setup, not the output.

## 📝 Getting Started

### Prerequisites

- [.NET SDK 9.0 or later](https://dotnet.microsoft.com/download)
- PowerShell (Windows) or a terminal with `bash`
- Git

> See the [lesson documentation](https://dibs.ravenhill.cl/docs/build-systems/init/msbuild) for OS-specific install
> scripts.

### Clone & Compile

```bash
git clone https://github.com/r8vnhill/echo-app-csharp.git
cd echo-app-csharp
dotnet run
````

You should see:

```
Super ultra great delicious wonderful bad
```

## 🤝 Contributing

This repository is part of a teaching resource and is not meant for production. That said, issues and improvements are
welcome!

### How to Contribute

1. [Open an issue](https://github.com/r8vnhill/echo-app-csharp/issues) to suggest improvements or report errors.
2. Follow the [Code of Conduct](./CODE_OF_CONDUCT.md).
3. Fork this repo and submit a pull request.

## 🛡️ License

Released under the **[BSD 2-Clause License](./LICENSE)**.

You are free to use, adapt, and share this code in personal or educational contexts, as long as attribution is provided.

## 🌐 DIBS Website

The full course — *Diseño e Implementación de Bibliotecas de Software* — is available at:

👉 [https://dibs.ravenhill.cl](https://dibs.ravenhill.cl)

There you'll find complete lessons, slides, exercises, and complementary resources (in Spanish).
