# 📚 绘本智能体平台

一个功能强大的Web绘本生成和阅读平台，支持在线生成交互式绘本和预置绘本阅读。

## 🌐 在线访问

**GitHub Pages**: [https://YOUR_USERNAME.github.io/picture-book-platform](https://YOUR_USERNAME.github.io/picture-book-platform)

> 请将 `YOUR_USERNAME` 替换为您的GitHub用户名

## 🚀 功能特色

### 📚 绘本创作
- **智能匹配**：按文件名自动匹配图片和音频
- **角色对话**：支持多个角色的音频对话
- **音频序列**：旁白 → 角色1 → 角色2 的播放顺序
- **一键导出**：导出为预置绘本ZIP文件

### 🎨 用户体验
- **3D翻页效果**：逼真的翻页动画
- **音频播放**：完整的音频序列播放
- **响应式设计**：支持各种设备
- **本地存储**：用户数据保存在浏览器中

## 📁 文件结构

```
picture-book-platform/
├── index.html              # 主应用文件
├── huibenyuedu.html        # 绘本阅读器
├── books/                  # 预置绘本目录
│   ├── beach-morning/      # 示例绘本1
│   │   ├── book-data.json  # 绘本数据
│   │   ├── images/         # 图片文件
│   │   └── audio/          # 音频文件
│   └── forest-adventure/   # 示例绘本2
│       ├── book-data.json
│       ├── images/
│       └── audio/
├── AaErZhiYuan-2.ttf      # 字体文件
├── deploy.sh              # 部署脚本
└── README.md              # 说明文档
```

## 🛠️ 使用方法

### 1. 创建绘本
1. 上传背景图片（按序号命名：01.jpg, 02.jpg...）
2. 上传旁白音频（按格式命名：p1.mp3, p2.mp3...）
3. 上传角色音频（按格式命名：1-1.mp3, 1-2.mp3...）
4. 点击"分析文件匹配"查看匹配结果
5. 点击"一键添加匹配页面"创建页面
6. 点击"生成绘本"完成创作

### 2. 导出预置绘本
1. 在绘本库中找到要导出的绘本
2. 点击"导出预置"按钮
3. 下载生成的ZIP文件
4. 解压到GitHub仓库的books目录
5. 更新PresetBooks数组

### 3. 文件命名规则
```
背景图片: 01.jpg, 02.jpg, 03.jpg...
旁白音频: p1.mp3, p2.mp3, p3.mp3...
角色1音频: 1-1.mp3, 2-1.mp3, 3-1.mp3...
角色2音频: 1-2.mp3, 2-2.mp3, 3-2.mp3...
```

## 🌐 部署到GitHub Pages

### 步骤1：创建GitHub仓库
```bash
git init
git add .
git commit -m "Initial commit: Picture Book Platform"
git remote add origin https://github.com/你的用户名/仓库名.git
git push -u origin main
```

### 步骤2：启用GitHub Pages
1. 进入仓库设置页面
2. 滚动到"Pages"部分
3. 选择"Deploy from a branch"
4. 选择"main"分支
5. 点击"Save"

### 步骤3：访问网站
- 网站地址：`https://你的用户名.github.io/仓库名/`
- 等待几分钟让部署生效

## 📦 添加预置绘本

### 方法1：使用导出功能（推荐）
1. 在本地工具中创建完整绘本
2. 点击"导出预置"按钮
3. 下载ZIP文件
4. 解压到books目录
5. 更新index.html中的PresetBooks数组

### 方法2：手动创建
1. 在books目录创建新文件夹
2. 按标准格式创建book-data.json
3. 添加images和audio子目录
4. 上传对应的图片和音频文件

## 🔧 技术栈

- **前端**：HTML5, CSS3, JavaScript (ES6+)
- **3D效果**：CSS3 Transform, Animation
- **音频处理**：Web Audio API
- **文件处理**：File API, JSZip
- **存储**：localStorage, Session Storage

## 📝 更新日志

### v1.1.0 (2025-09-19)
- ✅ 新增"奇奇的蔬菜王国"绘本
- ✅ 改进绘本数据结构
- ✅ 优化音频播放体验
- ✅ 增强交互式页面功能
- ✅ 改进Python服务器启动脚本

### v1.0.0 (2024-09-03)
- ✅ 基础绘本创作功能
- ✅ 智能文件匹配
- ✅ 角色音频支持
- ✅ 3D翻页效果
- ✅ 预置绘本导出
- ✅ GitHub Pages部署支持

## 🤝 贡献

欢迎提交Issue和Pull Request来改进这个项目！

## 📄 许可证

MIT License
