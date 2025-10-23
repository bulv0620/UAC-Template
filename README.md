# UAC-Template 🚀

**NestJS + Vue3 用户权限管理系统模板**

🛡️ 开箱即用的 RBAC 解决方案 | 前后端分离架构

------

## ✨ 特性

- **🔐 完整的RBAC实现**：用户-角色-权限三级控制
- **🚀 现代化技术栈**：Vue3 + Element Plus + NestJS
- **⚡ 高效开发**：内置代码规范工具链（ESLint + Prettier）
- **🌐 环境隔离**：开发/测试/生产多环境配置

------

## 📂 项目结构

```
platform-web/src/
├── api/               # API请求管理
├── assets/            # 静态资源
├── components/        # 公共组件
├── config/            # 应用配置
├── constants/         # 常量定义
├── directives/        # 自定义指令
├── enums/             # 枚举定义
├── hooks/             # 组合式函数
├── icons/             # SVG图标
├── layouts/           # 布局组件
├── plugins/           # Vue插件
├── router/            # 路由配置
├── store/             # 状态管理
├── styles/            # 样式文件
├── utils/             # 工具函数
├── views/             # 页面视图
├── App.vue            # 根组件
└── main.ts            # 应用入口
platform-server/src/
├── config/            # 应用配置文件
├── core/              # 核心基础设施
├── database/          # 数据库相关
├── decorators/        # 自定义装饰器
├── enums/             # 枚举定义
├── guards/            # 守卫
├── modules/           # 业务模块
├── utils/             # 工具类
├── app.module.ts      # 主模块
└── main.ts            # 应用入口
```

------

## 🛠️ 快速开始

### 1. 前端启动

```
cd platform-web  
pnpm install  
pnpm dev  # 开发模式
```

**生产构建**：

```
pnpm build:prod  # 生产环境打包  
pnpm preview:prod  # 本地预览生产包
```

### 2. 后端启动

```
cd platform-server  
npm install  
npm run start:dev  # 开发模式（热更新）
```

**测试模式**：

```
npm run start:test  # 加载测试环境配置
```

------

## ⚙️ 脚本说明

### 前端 (`platform-web/package.json`)

| 命令          | 用途                 |
| ------------- | -------------------- |
| `dev`         | 启动开发服务器       |
| `build:stage` | 构建测试环境包       |
| `lint`        | 自动修复代码风格问题 |
| `test`        | 运行Vitest单元测试   |

### 后端 (`platform-server/package.json`)

| 命令        | 用途                 |
| ----------- | -------------------- |
| `start:dev` | 带热更新的开发模式   |
| `test:e2e`  | 运行端到端测试       |
| `format`    | 自动格式化所有TS文件 |

------

## 📜 许可证

MIT © 2025 bulv