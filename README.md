# 📚 绘本智能体平台

一个功能强大的Web绘本生成和阅读平台，支持在线生成交互式绘本和预置绘本阅读。

## 📋 系统要求

- **Python**: 3.6+ (用于本地开发服务器)
- **浏览器**: Chrome, Firefox, Safari, Edge (最新版本)
- **Git**: 2.0+ (用于版本控制和部署)

## 🌐 在线访问

**GitHub Pages**: [https://YOUR_USERNAME.github.io/picture-book-platform](https://lukechenug.github.io/picture-book-platform/)  

> 请将 `YOUR_USERNAME` 替换为您的GitHub用户名

## 🚀 功能特色

### 📚 绘本创作
- **智能匹配**：按文件名自动匹配图片和音频
- **角色对话**：支持多个角色的音频对话
- **音频序列**：旁白 → 角色1 → 角色2 的播放顺序
- **一键导出**：导出为预置绘本ZIP文件

### 🏷️ LORA标注工具（新增）
- **批量拆分**：智能拆分标注文本为多个文件
- **自定义分隔符**：支持空行或自定义分隔符
- **灵活命名**：自定义前缀、编号、补零等
- **两种保存方式**：直接保存到文件夹或下载ZIP
- **实时预览**：查看所有文件名和内容

### 🎨 用户体验
- **3D翻页效果**：逼真的翻页动画
- **音频播放**：完整的音频序列播放
- **响应式设计**：支持各种设备
- **本地存储**：用户数据保存在浏览器中

## 📁 文件结构

```
picture-book-platform/
├── index.html              # 主应用文件（包含创作和阅读功能）
├── books/                  # 预置绘本目录
│   └── 奇奇的蔬菜王国/     # 示例绘本
│       ├── book-data.json  # 绘本数据配置
│       ├── images/         # 图片文件（16页+封面）
│       └── audio/          # 音频文件（16个）
├── AaErZhiYuan-2.ttf      # 自定义字体文件
├── start-server.py        # 本地开发服务器
├── deploy.sh              # 基础部署脚本
├── deploy-to-github.sh    # GitHub部署脚本
├── .gitignore             # Git忽略配置
└── README.md              # 项目说明文档
```

## 🛠️ 使用方法

### 0. 本地运行项目
```bash
# 使用Python启动本地服务器（推荐）
python start-server.py

# 或者使用Python内置服务器
python -m http.server 8000
```

然后在浏览器访问：`http://localhost:8000`

> **注意**: 由于浏览器的CORS安全策略，必须通过HTTP服务器访问，不能直接打开HTML文件

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

### 3. 使用LORA标注工具
1. 点击导航栏的"LORA标注工具"按钮
2. 上传包含多段标注的TXT文件
3. 选择分隔符类型（空行或自定义）
4. 配置文件命名规则：
   - 文件前缀（如：`cameralora_hojo`）
   - 前缀后分隔符（空格、下划线等）
   - 起始编号和补零设置
5. 查看预览结果
6. 选择保存方式：
   - **选择文件夹并保存**：直接保存到指定文件夹（推荐）
   - **下载ZIP压缩包**：下载后手动解压

### 4. 文件命名规则
```
背景图片: 01.jpg, 02.jpg, 03.jpg...
旁白音频: p1.mp3, p2.mp3, p3.mp3...
角色1音频: 1-1.mp3, 2-1.mp3, 3-1.mp3...
角色2音频: 1-2.mp3, 2-2.mp3, 3-2.mp3...

LORA标注文件: cameralora_hojo 1.txt, cameralora_hojo 2.txt...
```

## 🌐 部署到GitHub Pages

### 步骤1：连接到GitHub远程仓库
```bash
# 在GitHub上创建新仓库后，执行以下命令
git remote add origin https://github.com/你的用户名/仓库名.git
git branch -M main  # 可选：将master分支重命名为main
git push -u origin main
```

> **提示**: 项目已初始化Git仓库，可以直接添加远程仓库并推送

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

### v1.2.0 (2025-10-27)
- ✨ **新增LORA标注工具**：批量处理标注文本
- ✅ 支持空行和自定义分隔符
- ✅ 灵活的文件命名配置
- ✅ 直接保存到文件夹（Chrome/Edge）
- ✅ ZIP压缩包下载（兼容所有浏览器）
- ✅ 实时预览所有文件
- ✅ 优化滚动体验和UI设计
- 🐛 修复Windows下Python服务器编码问题

### v1.1.1 (2025-10-27)
- ✅ 初始化Git版本控制
- ✅ 更新README文档，修正文件结构说明
- ✅ 添加系统要求和本地运行说明
- ✅ 优化部署指南

### v1.1.0 (2025-09-19)
- ✅ 新增"奇奇的蔬菜王国"绘本（16页）
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

## ❓ 常见问题

### Q: 为什么不能直接打开index.html？
A: 由于浏览器的CORS安全策略，加载本地文件（音频、图片）需要通过HTTP服务器。请使用`python start-server.py`启动本地服务器。

### Q: 如何添加新的预置绘本？
A: 
1. 在应用中创建绘本
2. 点击"导出预置"按钮
3. 将ZIP文件解压到`books/`目录
4. 在`index.html`中的`PresetBooks`数组中添加配置

### Q: 支持哪些文件格式？
A: 
- 图片：JPG, PNG
- 音频：MP3
- 字体：TTF

### Q: 部署脚本在Windows上无法运行？
A: `.sh`脚本需要在Git Bash或WSL中运行。或者手动执行脚本中的Git命令。

### Q: LORA工具的"选择文件夹并保存"功能不可用？
A: 此功能需要Chrome 86+或Edge 86+浏览器。如果使用其他浏览器，请使用"下载ZIP压缩包"功能。

### Q: 标注文本如何分段？
A: 使用空行（连续的换行符）分隔不同段落，或者使用自定义分隔符（如`---`）。每段内容会被合并成一行，去除多余空格和换行。

## 🤝 贡献

欢迎提交Issue和Pull Request来改进这个项目！

## 📄 许可证

MIT License
