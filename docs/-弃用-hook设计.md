## 1、按钮回调

- 回调类型

  - 单行数据回调
  - 多行数据回调

- 参数：

  ```typescript
  // T: 查询table行类型  U: 查询form类型
  interface ButtonCallbackParams<T, U>{
      row: T // 行数据
      rows: Array<T> // 多行数据
      rowIndex: number // 行下标
      formData: U // 表单数据
      taleData: Array<T> // 操作表格数据
      tableDatas: Array<Array<T>> // 所有表格数据
  }
  ```



## 2、钩子函数

- 钩子类型（前置钩子、后置钩子）：
  - 弹窗打开事件
  - 弹窗关闭事件
  - 弹窗保存事件
  - 弹窗扫码事件
  - 上传事件（暂无）
  - 下载事件（暂无）
  - 查询事件（暂无）

- 参数：

  - 前置参数

    ```typescript
    // T: 弹窗table行类型  U: 弹窗form类型  V: 查询table行类型
    interface PrehookParams<T, U, V> { 
        row?: T // 行数据
        rows?: Array<T> // 多行数据
        formData?: U // 表单数据
        tableDatas?: Array<Array<T>> // 所有表格数据
        querySelectedRows?: Array<V> // 查询选中行参数(仅打开弹窗使用)
        code?: string // 扫码code(仅扫码)
        close?: Function // 关闭弹窗的方法
        clearData?: Function // 清空弹窗数据的方法
    }
    ```

    

  - 后置参数

    ```typescript
    // T: 弹窗table行类型  U: 弹窗form类型  V: 查询table行类型
    interface PosthookParams<T, U, V> {
        row?: T // 行数据
        rows?: Array<T> // 多行数据
        formData?: U // 表单数据
        tableDatas?: Array<Array<T>> // 所有表格数据
        querySelectedRows?: Array<V> // 查询选中行参数(仅打开弹窗使用)
        close?: Function // 关闭弹窗的方法
        clearData?: Function // 清空弹窗数据的方法
        setFormData?: Function // 设置表单数据
        setTableDatas?: Function // 设置表格数据
        pushTableData?: Function // 表格添加数据(仅扫码)
        prehookResult?: any // 前置钩子的返回值
        eventResult?: any // 事件的返回值
    }
    ```

  

  > 弹窗的**扫码**和**保存**的事件部分是**异步函数**
  >
  > 异步函数的**请求参数**为**前置钩子**的**返回值**（如果无返回则使用默认）
  >
  > 后置钩子可以获取前置钩子的返回值`prehookResult`以及事件的返回值`eventResult`

  

