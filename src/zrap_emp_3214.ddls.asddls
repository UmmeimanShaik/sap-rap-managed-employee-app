@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Root View for RAP EMP table'
@Metadata.allowExtensions: true
define root view entity ZRAP_EMP_3214 as select from zemp_tab_3214
{
    
    key employee_id as Employee_Id,
    employee_name as Employee_Name,
    employee_address as Employee_Address,
    deparment_id as Deparment_Id
}
