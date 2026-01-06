# Bark Server

Bark 推送通知服务端，支持 iOS、Android、macOS 设备的消息推送。（飞牛应用商店已同步上架，版本相同）

## 功能特性

- **多平台支持**: 支持 iOS、Android、macOS 设备
- **RESTful API**: 提供简洁的 RESTful API 接口
- **消息推送**: 支持文本、链接、图片等多种消息类型
- **设备管理**: 支持多设备管理和分组
- **安全性**: 支持 API 密钥认证

## 安装要求

- 系统架构: x86_64
- 运行环境: Linux
- 端口: 28080

## 使用方法

1. 安装应用后，通过浏览器访问 `http://<你的NAS IP>:28080`
2. 注册设备获取 DeviceKey
3. 使用 API 发送推送消息
4. 在移动设备上安装 Bark 客户端应用

## API 示例

```bash
# 发送文本消息
curl -X POST "http://<你的NAS IP>:28080/push" \
  -H "Content-Type: application/json" \
  -d '{
    "device_key": "你的DeviceKey",
    "title": "通知标题",
    "body": "通知内容"
  }'
```

## 注意事项

- 确保网络可访问，防火墙开放相应端口
- 建议使用 HTTPS 进行安全通信
- 定期更新应用以获取最新功能和安全修复

## 技术支持

- 项目主页: https://github.com/Finb/Bark
- 问题反馈: https://github.com/Finb/Bark/issues

## 版本历史

- v1.0.0: 初始版本发布
