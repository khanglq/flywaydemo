-- INSERT INTO employee (employee_id, employee_name, employee_address) VALUES
--   (4, 'Nguyen Van A', 'Ha Noi'),
--   (5, 'Tran Van B', 'Bac Giang'),
--   (6, 'Nguyen Thi C', 'Hai Duong');

INSERT ALL
    INTO employee (employee_id, employee_name, employee_address) VALUES (4, 'Nguyen Van A', 'Ha Noi')
    INTO employee (employee_id, employee_name, employee_address) VALUES (5, 'Tran Van B', 'Bac Giang')
    INTO employee (employee_id, employee_name, employee_address) VALUES (6, 'Nguyen Thi C', 'Hai Duong')
SELECT 1 FROM DUAL;
