variable "aks_pod_workbooks" {
  type = map(object({
    workbookName                = string
    workbookDisplayName         = string
    workbookSourceId            = string
  }))
  description = "Map of Azure Monitor Scheduled Query Rules Alerts Specification."
  default     = {
    akspodwb1 = {
        workbookName                = "<workbook_name>"
        workbookDisplayName         = "<workbook_display_name>"
        workbookSourceId            = "<workbook_source_id>"
    }
  }
}