----------------------------------------
--------PACKAGE------
----------------------------------------
CREATE OR REPLACE PACKAGE TEST_PKG IS
 
 -- Hàm trả về employee_name
 Function Get_First_Name(p_Emp_Id employee.employee_id%Type)
    Return employee.employee_name%Type;
 
 -- Hàm trả về tên phòng ban
 Function Get_Dept_Name(p_Emp_Id employee.employee_id%Type)
    Return flywaydemo.department%Type;
 
End TEST_PKG;
/
--
-- Đây là Package Body của Package TEST_PKG
--
CREATE OR REPLACE PACKAGE BODY TEST_PKG IS
 
 -- =====================================================
 -- Thủ tục trả về thông tin nhân viên
 -- Gồm tham số đầu ra  employee_name
 -- =====================================================
 Procedure Get_Emp_Infos(p_Emp_Id employee.employee_id%Type
                        ,employee_name  Out employee.employee_name%Type) As
 Begin
    Begin
       Select employee_name
       Into   employee_name
       From   employee Emp
       Where  Emp.employee_id = p_Emp_Id;
    Exception
       -- Không tìm thấy nhân viên ứng với p_Emp_Id
       When No_Data_Found Then
          employee_name  := Null;
    End;
 End;
 
 -- =====================================================
 -- Hàm trả về First_Name ứng với Emp_ID cho bởi tham số.
 -- =====================================================
 Function Get_First_Name(p_Emp_Id employee.employee_id%Type)
    Return employee.employee_name%Type As
    -- Khai báo một biến.
    employee_name  employee.employee_name%Type;
 Begin
    -- Gọi sử dụng thủ tục Get_Emp_Infos
    Get_Emp_Infos(p_Emp_Id
                 ,employee_name -- Out
                  );
    --
    Return employee_name;
 End;
 
 -- =====================================================
 -- Hàm trả về Dept_Name ứng với Emp_ID.
 -- (Trả về tên phòng ban của nhân viên)
 -- =====================================================
 Function Get_Dept_Name(p_Emp_Id employee.employee_id%Type)
    Return flywaydemo.department%Type As
    -- Khai báo một biến.
    v_Dept_Name flywaydemo.department%Type;
 Begin
    Begin
       Select department
       Into   v_Dept_Name
       From   Employee   Emp
             ,flywaydemo Dept
       Where  Emp.employee_id = Dept.employee_id
       And    Emp.employee_id = p_Emp_Id;
    Exception
       When No_Data_Found Then
          v_Dept_Name := Null;
    End;
    --
    Return v_Dept_Name;
 End;
 
End TEST_PKG;
/