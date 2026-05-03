# GitHub Pages 部署指南

## 🚀 快速部署（3步搞定）

### 步骤 1: 创建 GitHub 仓库

1. 登录 GitHub: https://github.com
2. 点击右上角 `+` → `New repository`
3. 仓库名称填写: `agents-dashboard` （或任意名称）
4. 选择 **Public** （公开仓库）
5. 点击 `Create repository`

### 步骤 2: 上传文件

有两种方式：

**方式A：通过网页上传（最简单）**

1. 在新创建的仓库页面，点击 `uploading an existing file`
2. 将 `index.html` 和 `data.json` 拖拽到上传区
3. 在底部填写提交信息：`Initial commit`
4. 点击 `Commit changes`

**方式B：通过命令行（推荐）**

```bash
# 克隆仓库
git clone https://github.com/你的用户名/agents-dashboard.git
cd agents-dashboard

# 复制文件（将本目录的 index.html 和 data.json 复制进去）
cp /path/to/index.html .
cp /path/to/data.json .

# 提交并推送
git add .
git commit -m "Initial commit: Add agents dashboard"
git push origin main
```

### 步骤 3: 启用 GitHub Pages

1. 进入仓库，点击 `Settings`
2. 左侧菜单找到 `Pages`
3. 在 `Source` 下选择 `main` 分支
4. 点击 `Save`
5. 等待约 1-2 分钟，页面会显示你的网站地址

**你的看板地址将是：**
```
https://你的GitHub用户名.github.io/agents-dashboard/
```

---

## 📝 文件说明

- `index.html` - 看板主文件（包含完整的HTML、CSS、JavaScript）
- `data.json` - 数据配置文件（可编辑）

---

## 🔧 自定义数据

编辑 `data.json` 文件可以修改：

### 统计数据
```json
"stats": {
  "total": 96,      // 任务总数
  "running": 1,     // 正在执行
  "error": 1,       // 异常任务
  "completed": 94   // 已完成
}
```

### 机器人信息
```json
"agents": [
  {
    "id": 1,
    "name": "dodo",
    "role": "智能助手 · 全能型",
    "status": "online",  // online/offline/busy/error
    "avatar": "D"
  }
]
```

### 任务列表
```json
"tasks": [
  {
    "id": 1,
    "agentId": 1,
    "type": "技能分享",
    "quality": 5,          // 1-5星
    "initiator": "gaozixing",
    "duration": "2分钟",
    "status": "completed",  // completed/running/error
    "result": "任务执行成功",
    "time": "2026-04-21 17:45"
  }
]
```

修改完成后，重新上传 `data.json` 到 GitHub 仓库即可。

---

## 🔄 更新看板

### 方式A：通过网页更新

1. 在 GitHub 仓库中找到要修改的文件
2. 点击文件名 → 点击 ✏️ 铅笔图标编辑
3. 修改完成后点击 `Commit changes`
4. 等待 1-2 分钟，网站会自动更新

### 方式B：通过命令行更新

```bash
# 修改文件后
git add .
git commit -m "Update dashboard data"
git push origin main
```

---

## 🌐 自定义域名（可选）

如果你有自己的域名，可以绑定到 GitHub Pages：

1. 在仓库 Settings → Pages 中找到 `Custom domain`
2. 输入你的域名（如 `dashboard.yourdomain.com`）
3. 在域名DNS设置中添加 CNAME 记录指向 `你的用户名.github.io`

---

## 💡 功能特性

✅ **赛博朋克科技风格**
- 霓虹发光效果
- 扫描线动画
- 六边形网格背景

✅ **交互功能**
- 点击机器人切换查看任务
- 点击头像上传自定义图片
- 悬停高亮效果
- 数字跳动动画

✅ **完全响应式**
- 支持桌面端、平板、手机

✅ **实时数据刷新**
- 点击"刷新数据"按钮重新加载

---

## 🐛 常见问题

**Q: 网站打不开或显示404？**
A:
1. 确认 GitHub Pages 已启用
2. 检查文件名是否为 `index.html`（必须是这个名字）
3. 等待1-2分钟让 GitHub Pages 构建完成

**Q: 数据没有更新？**
A:
1. 清除浏览器缓存
2. 使用无痕模式访问
3. 确认 `data.json` 已正确上传

**Q: 头像上传后刷新就消失？**
A: 这是正常的，头像存储在浏览器本地内存中。如需永久保存，需要后端服务器支持。

**Q: 想要对接真实群聊数据？**
A: 需要创建一个后端API服务，定时从如流拉取群聊消息并转换为 `data.json` 格式。

---

## 📞 需要帮助？

如有问题可以：
1. 在 GitHub 仓库创建 Issue
2. 在群聊12796510中询问

---

**现在开始部署你的赛博朋克监控看板吧！** 🚀
