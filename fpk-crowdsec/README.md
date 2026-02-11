# CrowdSec 使用说明

CrowdSec 是一个开源的、轻量级的入侵检测系统，可以检测和阻止针对服务器的恶意行为。

## 基本信息

- **版本**: 1.7.6-9
- **配置目录**: `/vol1/@appshare/crowdsec/crowdsec/`
- **API 端口**: 18081
- **Web 界面**: http://localhost:3000
- **默认封禁时长**: 4 小时
- **运行权限**: 需要 root 权限

## 命令行使用方法

### 查看当前封禁列表

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions list
```

### 查看告警列表

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml alerts list
```

### 删除所有封禁

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions delete --all
```

### 删除特定封禁

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions delete --id <封禁ID>
```

### 查看已安装的场景规则

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml scenarios list
```

### 查看已安装的解析器

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml parsers list
```

### 添加白名单（bypass）

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions add --ip <IP地址> --duration 30d --type bypass --scope Ip
```

### 查看已注册的机器

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml machines list
```

### 更新 Hub（解析器和场景规则库）

```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml hub update
```

## 服务管理

### 启动 CrowdSec

```bash
/var/apps/CrowdSec/cmd/main start
```

### 停止 CrowdSec

```bash
/var/apps/CrowdSec/cmd/main stop
```

### 重启 CrowdSec

```bash
/var/apps/CrowdSec/cmd/main restart
```

### 查看服务状态

```bash
/var/apps/CrowdSec/cmd/main status
```

### 启动/停止 CrowdSec Firewall Bouncer

```bash
# 启动
sudo systemctl start crowdsec-firewall-bouncer

# 停止
sudo systemctl stop crowdsec-firewall-bouncer

# 查看状态
sudo systemctl status crowdsec-firewall-bouncer
```

### 启动/停止 Web UI（Docker）

```bash
# 进入应用目录
cd /var/apps/CrowdSec

# 启动
docker-compose up -d

# 停止
docker-compose down

# 查看日志
docker-compose logs -f
```

## 日志监控配置

### 支持的日志类型

- **SSH 日志**: 防止暴力破解攻击
- **Nginx 日志**: 防止 Web 攻击
  - **Nginx 日志路径1**: 飞牛系统默认的 Nginx 日志
  - **Nginx 日志路径2**: 雷池 WAF 日志（包含真实外网 IP，可用于防火墙封禁）
- **Samba 日志**: 监控文件共享服务

### 雷池 WAF 日志配置

#### 自动日志格式增强

当启用雷池 WAF 日志监控时，CrowdSec 会自动修改雷池 Nginx 的日志格式配置，以便进行更深入的安全检测。

#### 修改范围

- **配置目录**: `/vol1/1000/docker/safeline/resources/nginx/sites-enabled`
- **配置文件**: `IF_backend_*` (所有雷池后端配置文件)

#### 修改内容

将原有的 `log_format safeline_*` 替换为增强格式，新增以下字段：

| 字段 | 说明 | 用途 |
|------|------|------|
| `$request_body` | 请求体内容 | 检测 SQL 注入、XSS 等攻击 |
| `$http_x_forwarded_for` | 真实客户端 IP | 追踪攻击源 |
| `$http_accept` | Accept 请求头 | 识别异常请求 |
| `$http_accept_language` | 语言偏好 | 识别异常请求 |
| `$http_accept_encoding` | 编码方式 | 识别异常请求 |
| `$http_content_type` | 内容类型 | 识别异常请求 |
| `$connection` | 连接序列号 | 追踪连接 |
| `$connection_requests` | 连接请求数 | 检测连接滥用 |
| `$request_time` | 请求处理时间 | 检测慢速攻击 |
| `$upstream_response_time` | 上游响应时间 | 检测应用异常 |

#### 备份与恢复

- 每次修改前会自动创建带时间戳的备份目录
- 备份位置: `/vol1/1000/docker/safeline/resources/nginx/sites-enabled/backup_YYYYMMDD_HHMMSS/`
- 如果 Nginx 配置语法检查失败，会自动恢复备份

#### 手动执行修复

```bash
bash /var/apps/CrowdSec/cmd/fix_safeline_nginx_log.sh
```

#### 配置向导

```bash
# 通过应用配置向导修改日志监控设置
# 在应用管理界面选择 CrowdSec，点击"配置"
```

## 注意事项

1. **Root 权限**: 本程序需要 root 权限运行，确保以 root 用户或 sudo 执行命令
2. **SSH 配置**: 启用 SSH 日志监控会修改 `/etc/ssh/sshd_config`，会自动创建备份
3. **雷池 WAF**: 配置雷池 WAF 日志时会自动修改 Nginx 配置文件，会自动备份
4. **封禁时长**: 默认封禁时长为 4 小时，可通过修改场景规则调整
5. **白名单**: 建议将自己的 IP 添加到白名单，避免误封

## 相关链接

- **CrowdSec 官方文档**: https://docs.crowdsec.net/
- **GitHub 仓库**: https://github.com/crowdsecurity/crowdsec
- **Web UI 项目**: https://github.com/TheDuffman85/crowdsec-web-ui

## 故障排查

### 查看 CrowdSec 日志

```bash
tail -f /var/log/crowdsec.log
```

### 查看 Bouncer 日志

```bash
sudo journalctl -u crowdsec-firewall-bouncer -f
```

### 查看 Web UI 日志

```bash
docker logs -f crowdsec_web_ui
```

### 检查配置文件语法

```bash
sudo crowdsec -c /vol1/@appshare/crowdsec/crowdsec/config.yaml -t
```

## 常见问题

**Q: 如何解除某个 IP 的封禁？**

A: 使用以下命令：
```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions delete --all
# 或删除特定封禁
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions delete --id <ID>
```

**Q: 如何永久白名单某个 IP？**

A: 使用 bypass 类型添加白名单：
```bash
sudo cscli -c /vol1/@appshare/crowdsec/crowdsec/config.yaml decisions add --ip <IP> --duration 365d --type bypass --scope Ip
```

**Q: 如何修改封禁时长？**

A: 修改场景规则文件中的 `duration` 参数，然后重启 CrowdSec：
```bash
/var/apps/CrowdSec/cmd/main restart
```

**Q: Web UI 无法访问？**

A: 检查 Docker 容器状态：
```bash
docker ps | grep crowdsec
docker logs crowdsec_web_ui
```