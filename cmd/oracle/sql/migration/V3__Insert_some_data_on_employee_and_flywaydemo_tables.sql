-- INSERT INTO employee (employee_id, employee_name, employee_address) VALUES
--   (1, 'Nguyen Van A', 'Ha Noi'),
--   (2, 'Tran Van B', 'Bac Giang'),
--   (3, 'Nguyen Thi C', 'Hai Duong');
--
-- INSERT INTO flywaydemo (employee_id, employee_name, employee_address) VALUES
--   (1, 'Nguyen Van A', 'Ha Noi'),
--   (2, 'Tran Van B', 'Bac Giang'),
--   (3, 'Nguyen Thi C', 'Hai Duong');

INSERT ALL
    INTO employee (employee_id, employee_name, employee_address) VALUES (1, 'Nguyen Van A', 'Ha Noi')
    INTO employee (employee_id, employee_name, employee_address) VALUES (2, 'Tran Van B', 'Bac Giang')
    INTO employee (employee_id, employee_name, employee_address) VALUES (3, 'Nguyen Thi C', 'Hai Duong')

    INTO flywaydemo (employee_id, employee_name, employee_address) VALUES (1, 'Nguyen Van A', 'Ha Noi')
    INTO flywaydemo (employee_id, employee_name, employee_address) VALUES (2, 'Tran Van B', 'Bac Giang')
    INTO flywaydemo (employee_id, employee_name, employee_address) VALUES (3, 'Nguyen Thi C', 'Hai Duong')
SELECT 1 FROM DUAL;