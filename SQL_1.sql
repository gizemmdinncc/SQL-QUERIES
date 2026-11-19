--Task1: Task 1: Çalışanları employees tablosundan seçin ve işe alınma tarihlerine (hire_date) göre azalan sırada sıralayın. Çalışan numarası (employee_no), ad (first_name), soyad (last_name) ve işe alınma tarihini (hire_date) seçin.
SELECT employee_no, first_name, last_name, hire_date FROM employees ORDER BY hire_date DESC 

--Task2: 1960 yılı ve sonrasında doğmuş olan çalışanları employees tablosundan seçin. Ad (first_name), soyad (last_name) ve doğum tarihini (birth_date) seçin
SELECT first_name, last_name, birth_date FROM employees WHERE birth_date >= '1960-01-01';

--Task 3: Adı "Ma" ile başlayan çalışanları employees tablosundan seçin. Ad (first_name), soyad (last_name) ve doğum tarihini (birth_date) seçin.
SELECT first_name, last_name, birth_date FROM employees WHERE first_name LIKE 'Ma%';

--Task 4: Kyiv, Lviv ve Dnipro'da yaşayan çalışanların ID'lerini employeeTerritories tablosundan seçin. Çalışan numarası (employee_no) ve şehir (city) seçin.
SELECT employee_no, city FROM employeeTerritories et WHERE city IN ('Kyiv', 'Lviv', 'Dnipro');

--Task 5: titles tablosundan "Engineer" pozisyonunu (title) işgal eden çalışanların sayısını hesaplayın. Sonuç sütununa "total engineers" adını verin.
SELECT COUNT(*) AS "total engineers" FROM titles WHERE title = 'Engineer';

--Task 6: employeeTerritories tablosundan her şehir için çalışan sayısını görüntüleyin. Sadece 10'dan fazla çalışanı olan şehirleri dahil edin. Çalışan sayısını ve şehir adını görüntüleyin.
SELECT city, COUNT(employee_no) AS employee_count FROM employeeTerritories GROUP BY city HAVING COUNT(employee_no) > 10;

--Task 7: Çalışanların adını ve soyadını, şirketteki pozisyonları ile birlikte seçin. employees ve titles tablolarını kullanarak ad (first_name), soyad (last_name) ve pozisyonu (title) görüntüleyin.
SELECT e.first_name, e.last_name, t.title FROM employees e JOIN titles t ON e.employee_no = t.employee_no ;

--Task 8: Maaşı 50000 ile 60000 arasında olan çalışanların adını ve soyadını seçin. employees ve salaries tablolarını kullanarak ad (first_name), soyad (last_name) ve maaşı (salary) seçin.
SELECT e.first_name, e.last_name, s.salary FROM employees e JOIN salaries s ON e.employee_no = s.employee_no WHERE s.salary BETWEEN 50000 AND 60000;
