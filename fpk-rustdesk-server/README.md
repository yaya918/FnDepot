# RustDesk Server

RustDesk 是一个开源的远程桌面软件，类似于 TeamViewer。本仓库提供飞牛 NAS (fnOS) 的安装包。

## 功能特性

- **远程桌面**: 通过 RustDesk 客户端远程访问你的 NAS
- **自托管**: 完全自托管，不依赖第三方服务器
- **Web 管理界面**: 内置 Web 管理页面，方便配置和管理
- **ID 中继服务器**: 提供 ID 注册和信号中继服务
- **NAT 类型检测**: 自动检测 NAT 类型，优化连接方式

## 安装要求

- 系统架构: x86_64
- 运行环境: Linux
- 端口: 21115 (hbbs), 21116 (hbbr), 21117 (websocket)

## 使用方法

1. 安装应用后，通过应用中心打开 RustDesk Server
2. 内置 Web 管理页面用于配置
3. 使用 RustDesk 客户端连接你的 NAS

## 服务组件

- **hbbs**: RustDesk ID 服务器 (21115端口)
- **hbbr**: RustDesk 中继服务器 (21116端口)
- **Web UI**: Web 管理界面

## 注意事项

- 确保防火墙开放 21115、21116、21117 端口
- 安装时自动生成加密密钥
- 配置文件保存在应用配置目录

## 技术支持

- RustDesk 官网: https://rustdesk.com
- RustDesk GitHub: https://github.com/rustdesk/rustdesk

## 版本历史

- v1.1.11: 初始版本发布