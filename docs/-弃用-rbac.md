- query页
  - formData
  - tableData
  - getTableData
  - resetFormData
  - paginationHook
  - refresh()
  - download()
  - upload()
  - rowOperation(row)
  - tableOperation(rows)
- handler页
  - rowOperationHandler()
  - tableOperationHandler()
- dialog页
  - formData
  - tableData: `[{}] || [[{}], [{}]]`
  - save()
  - openInit()
  - resetData()
  - scanInput
  - scanSearchHandler()
  - 



```html
<div>
    <QueryTable
      module-name=""
      :use-upload="true"
      @before-upload=""
      @after-upload=""
      :use-download="true"
      @before-download=""
      @after-download=""
      :form-options=""
      :table-options=""
      :row-operation-options=""
      @row-operation-handler=""
      :table-operation-options=""
      @table-operation-handler=""
   	>
        <tamplate name="form"><!--表单项插槽--></tamplate>
        <tamplate name="table"><!--表格列插槽--></tamplate>
    </QueryTable>
    
    <OperationDialog 
      module-name=""
      v-for="dialog in operationDialogOptions"
      :key="dialog.id"
      :config="dialog"
    >
        <tamplate name="form"><!--表单项插槽--></tamplate>
        <tamplate name="table"><!--表格列插槽--></tamplate>
    </OperationDialog>
</div>
```

```json
{
    "moduleName": "",
	"queryTableConfig": {
        "formOptions": [
            {
                "label": "",
                "prop": "",
                "required": false,
                "readonly": false,
                "rules": [],
                "type": "", /** input select bool date dateTime dateRange dateTimeRange number */
                "config": {/** any */}
            }
        ],
        "tableOptions": [
            {
                "label": "",
                "prop": "",
                "type": "", /** string selectString boolString dateString datetimeString  */
                "width": "",
                "config": {/** any */}
            }
        ],
        "operationOptions": [
            {
                "text": "",
                "color": "", 
                "icon": "",
                "handler": "",
                "type": "" /** row | table */
            }
        ],
        "fn": {
            "beforeUpload": "",
            "afterUpload": "",
            "beforeDownload": "",
            "afterDownload": "",
            "xxx": "xxx"
        }
    },
    "operationDialogConfig": [
        {
            "formOptions": [
                 "label": "",
                 "prop": "",
                 "span": "",
                 "required": false,
                 "readonly": false,
                 "rules": [],
                 "type": "", /** input select bool date dateTime dateRange dateTimeRange number */
                 "config": {/** any */}
            ],
            "tabOptions": [
                 "tabName": "",
                 "tableOptions": [
                	 "label": "",
                     "prop": "",
                     "width": "",
                     "required": false,
                     "readonly": false,
            	  	/** 输入类型 input select bool date dateTime dateRange dateTimeRange number */
            		/** 文本类型 string selectString boolString dateString datetimeString */
                     "type": "",
                     "config": {/** any */}
            	 ],
    		    "operationOptions": [
                    {
                        "text": "",
                        "color": "",
                        "icon": "",
                        "handler": "",
                        "type": "" /** row | table */
                    }
                 ]
            ],
            "fn": {
            
        	}
        }
    ]
}
```

