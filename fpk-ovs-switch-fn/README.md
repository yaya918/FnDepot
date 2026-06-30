# OVS 网桥 (OVSSwitch)

基于 Open vSwitch 技术，将飞牛 OS 多网口转换为交换机模式，支持网口桥接和健康检测功能。

## 功能特性

- **网口桥接**：将飞牛 NAS 的多个物理网口桥接为一个交换机
- **健康检测**：自动检测网桥状态，异常时告警并自动恢复
- **Open vSwitch**：基于业界标准的 OVS 虚拟交换机
- **Web UI**：内置 Web 管理界面，方便查看状态和配置
- **多架构**：支持 x86_64 和 ARM64 双架构

## 安装要求

- 系统架构：x86_64 / ARM64
- 运行环境：Linux（飞牛 NAS）
- 端口：18080（Web UI）

## 使用方法

1. 安装应用后，通过应用中心打开 OVS 网桥
2. 在 Web 配置页中查看网桥状态
3. 如需修改网桥配置，请谨慎操作（建议先备份网络配置）

## 打包作者

- B站：[芽芽ol](https://space.bilibili.com/490461815)
- 微信公众号：**芽芽打包匠**
- QQ 交流群：446562013

## 技术支持

- 飞牛 NAS 官方文档
- Open vSwitch 官网：https://www.openvswitch.org

## 版本历史

- v1.1.3：x86/ARM 统一版本号；同步 x86 的 fn-bridge-health.sh、index.cgi、frontend/index.html、cmd/main 升级
- v1.1.2：ARM 历史版本（功能落后 x86 一版）