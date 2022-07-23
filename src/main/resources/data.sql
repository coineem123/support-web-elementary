insert into VAI_TRO(TEN_VAI_TRO) values ('USER');
insert into VAI_TRO(TEN_VAI_TRO) values ('ADMIN');
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('user1',0,'17130238@st.hcmuaf.edu.vn','thuan','E10ADC3949BA59ABBE56E057F20F883E', '123456789', 0, 0, 0, 2, 1);
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('user2',0,'test@gmail.com','Thuận 2','E10ADC3949BA59ABBE56E057F20F883E', '987654321', 0, 0, 0, 1, 1);
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('taikhoantest',0,'test1@gmail.com', N'Thuận 3','FD63498020346CA1CCF972A21C6F3DB0', '0938205968', 0, 0, 0, 2, 1);
insert into MON_HOC(TEN_MON_HOC, HOAT_DONG) values (N'TOÁN',1)
insert into MON_HOC(TEN_MON_HOC, HOAT_DONG) values (N'TIẾNG VIỆT',1)
insert into MON_HOC(TEN_MON_HOC, HOAT_DONG) values (N'KHOA HỌC',1) 

-- CHƯƠNG
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 1: Phép toán cơ bản', 1, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 2: Hình học', 1, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 3:  Toán cao cấp A3', 1, 1, 500)

insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 1:NHÂN HÓA', 2, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 2: SO SÁNH', 2, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 3:  ẨN DỤ', 2, 1, 500)

insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 1: ĐỘNG VẬT', 3, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 2: THỜI TIẾT', 3, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 3:  THỰC VẬT', 3, 1, 500)
--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 2: ĐẠI LƯỢNG ĐO LƯỜNG VÀ ỨNG DỤNG', 1)
--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 3: HÌNH HỌC CƠ BẢN', 1)
-- BÀI HỌC
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 1: Phép cộng', 1, 100, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 2: Phép trừ', 1, 150, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, MA_BAI_HOC_TIEN_QUYET, DIEM, HOAT_DONG) values (N'Bài 3: Phép nhân', 1, 1, 200, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 1: Hình chữ nhật', 2, 100, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, MA_BAI_HOC_TIEN_QUYET, DIEM, HOAT_DONG) values (N'Bài 1.1: Hình chữ nhật 2', 2, 4, 100, 1)

--BÀI HỌC HOÀN THÀNH
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,1)
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,2)
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,3)
-- CÂU HỎI
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 1 + 1 = ?', N'1 + 1 = 2', '4;5;6;3;2', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 8 + 6 = ?', N'8 + 6 = 14', '2;15;14;13;12', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 20 + 15 = ?', N'20 + 15 = 34', '1;35;36;71;34', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 40 + 30 = ?', N' 40 + 30 = 70', '3;28;76;70;80', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 80 + 41 = ?', N'80 + 41 = 121', '2;125;121;841;418', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 20 + 89 = ?', N'20 + 89', '1;109;289;108;202', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 58 + 24 = ?', N'58 + 24 = 82', '3;80;60;82;81', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 48 + 11 = ?', N'48 + 11 = 59', '3;49;56;59;58', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 23 + 2 = ?', N'23 + 2 = 25', '1;25;24;23;26', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 19 + 2 = ?', N'19 + 2 = 21', '2;22;21;29;27', 1)


insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 1 - 1 = ?', N'1 - 1 = 0', '2;5;0;3;2', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 8 - 6 = ?', N'8 - 6 = 2', '4;5;4;3;2', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 20 - 15 = ?', N'20 - 15 = 5', '1;5;3;7;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 40 - 30 = ?', N'40 - 30 = 10', '3;1;17;10;70', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 80 - 41 = ?', N'80 - 41 = 39', '4;41;40;38;39', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 89 - 78 = ?', N'89 - 78 =', '2;13;11;12;14', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 48 - 24 = ?', N'48 - 24 = 24', '3;25;22;24;26', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 28 - 11 = ?', N'28 - 11 = 17', '4;20;19;18;17', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 25 - 2 = ?', N'25 - 2 = 23', '4;25;24;23;23', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 19 - 12 = ?', N'19 - 12 = 7', '1;7;5;8;10', 2)

insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 1 * 1 = ?', N'1 * 1 = 1', '2;5;1;3;2', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 2 * 2 = ?', N' 2 * 2 = 4', '3;5;4;4;2', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 3 * 3 = ?', N'3 * 3 = 9', '1;9;3;7;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 4 * 4 = ?', N'4 * 4 = 16', '2;1;16;10;70', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 5 * 5 = ?', N'5 * 5 = 25', '4;41;40;38;25', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 6 * 6 = ?', N'6 * 6 = 36', '2;13;36;12;14', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 7 * 7 = ?', N'7 * 7 = 49', '3;25;22;49;26', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 8 * 8 = ?', N'8 * 8 = 64', '4;20;19;18;64', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 9 * 9 = ?', N'9 * 9 = 81', '4;25;24;23;81', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Kết quả của phép tính sau đây là bao nhiêu 10 * 10 = ?"', N'10 * 10 = 100', '1;100;11;110;111', 3)

insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 3 con cá voi', '3;1;2;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 2 con cá voi', '2;1;2;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 4 con cá voi', '4;1;2;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 1 con cá voi', '1;1;2;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 5 con cá voi', '3;1;2;5;4',4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 8 con cá voi', '2;1;8;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 9 con cá voi', '1;9;2;3;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 15 con cá voi', '3;1;2;15;4', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 24 con cá voi', '4;1;2;3;24', 4)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 0 con cá voi', '1;0;2;3;4', 4)

insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 3 con cá voi', '3;1;2;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 2 con cá voi', '2;1;2;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 4 con cá voi', '4;1;2;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 1 con cá voi', '1;1;2;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 5 con cá voi', '3;1;2;5;4',5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 8 con cá voi', '2;1;8;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 9 con cá voi', '1;9;2;3;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 15 con cá voi', '3;1;2;15;4', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 24 con cá voi', '4;1;2;3;24', 5)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 0 con cá voi', '1;0;2;3;4', 5)

insert into THONG_BAO(TIEU_DE,NOI_DUNG,AN) values(N'Bài 1: Hình tam giác',N'Bài 1: Hình tam giác',1)
insert into THONG_BAO(TIEU_DE,NOI_DUNG,AN) values(N'Bài 2: Hình tam giác',N'Bài 1: Hình tam giác',1)
insert into THONG_BAO(TIEU_DE,NOI_DUNG,AN) values(N'Bài 3: Hình tam giác',N'Bài 1: Hình tam giác',1)
insert into THONG_BAO(TIEU_DE,NOI_DUNG,AN) values(N'Bài 4: Hình tam giác',N'Bài 1: Hình tam giác',1)