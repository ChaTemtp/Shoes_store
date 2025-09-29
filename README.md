เป็นระบบตารางขายรองเท้าของแต่บละรุ่น

การเช็คข้อมูลผ่าน postman

1.การดูสิ้นค้าทั้งหมด เรียกดูรายการรองเท้าทั้งหมดในตาราง shoes
Response จะเป็น JSON array ของสินค้าทั้งหมด
<img width="1446" height="913" alt="image" src="https://github.com/user-attachments/assets/3c24b7a7-a25b-4795-a183-69d67d129eba" />

2.การดูสินค้าตัวเดียว เรียกดูข้อมูลสินค้าเฉพาะตัวตาม id
Response เป็น JSON object ของสินค้านั้น
<img width="1453" height="785" alt="image" src="https://github.com/user-attachments/assets/776412f6-491f-4f30-97d7-d7c1969c7be2" />

3.การเพิ่มสินค้า เพิ่มสินค้าใหม่ลงในตาราง shoes
สำคัญ: ไม่ต้องใส่ shoe_id เพราะ MySQL จะกำหนด AUTO_INCREMENT ให้เอง
<img width="1464" height="670" alt="image" src="https://github.com/user-attachments/assets/cb1113c1-7910-4606-8495-8956f4d78e76" />

4.การแก้ไขสินค้า สามารถแก้ไข field ไหนก็ได้ เช่น price, stock, shoe_name
สำคัญ: ต้องมี id เพื่อระบุสินค้าที่ต้องการแก้
<img width="935" height="538" alt="image" src="https://github.com/user-attachments/assets/b8a1be40-4a3b-490a-8ccc-b593fd58fcdf" />
<img width="482" height="233" alt="image" src="https://github.com/user-attachments/assets/2e2fabe4-0235-4330-9ca7-81e943707f6b" />

5.การลบสินค้า ลบสินค้าที่มี id=1 ออกจากตาราง shoes
หลังลบแล้ว AUTO_INCREMENT จะไม่ลดค่าลงอัตโนมัติ → ถ้าต้องการเริ่มจาก id=1 ใหม่ ต้องรีเซ็ตด้วย SQL:
<img width="1461" height="610" alt="image" src="https://github.com/user-attachments/assets/e68539e6-922a-41c9-b68e-2b7a82e04829" />




