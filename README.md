<p align="center">
<img width="647" height="142" alt="ascii-art-text" src="https://github.com/user-attachments/assets/4c3d1215-f853-4b2a-8ecb-f17a4ae99491" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-v1.0-blue">
  <img src="https://img.shields.io/badge/platform-Windows%20%7C%20ESXi-black?logo=windows">
  <img src="https://img.shields.io/badge/author-PhTrien-purple?logo=github">
</p>


## 📌 Tính năng chính

* ✅ Disable Hyper-V Hypervisor
* ✅ Tắt `hypervisorlaunchtype` và `vsmlaunchtype`
* ✅ Disable các feature:

  * Hyper-V
  * Virtual Machine Platform (VMP)
  * Windows Hypervisor Platform (WHP)
* ✅ Tắt VBS & Credential Guard
* ✅ Set PowerShell ExecutionPolicy
* ✅ Tích hợp chạy DG Readiness Tool
* ✅ Menu tương tác dễ sử dụng
* ✅ Có chế độ **chạy tất cả (auto)**

---
## ⬇️ Tải xuống

👇 **Download tool tại đây:**

[![Download](https://img.shields.io/badge/Download-FixVT--x--AMD--v-blue?style=for-the-badge&logo=windows)](https://github.com/PhTrien/FixVT-x_AMD-v/archive/refs/heads/main.zip)

## 📂 Cấu trúc yêu cầu

Di chuyển thư mục "dgreadiness_v3.6" vào ổ C:\
```
C:\
 └── dgreadiness_v3.6\
      └── DG_Readiness_Tool_v3.6.ps1
```

⚠️ Bắt buộc đặt đúng đường dẫn trên nếu muốn chạy đầy đủ chức năng

---

## 🚀 Cách sử dụng

### 1. Chạy file

* Chuột phải `fix.bat` → **Run as Administrator**

### 2. Menu chức năng

| Số | Chức năng                  |
| -- | -------------------------- |
| 1  | Disable Hyper-V            |
| 2  | Tắt Hypervisor + VSM       |
| 3  | Disable feature bằng DISM  |
| 4  | Tắt VBS + Credential Guard |
| 5  | Set ExecutionPolicy        |
| 6  | Chạy DG Readiness Tool     |
| 7  | Restart máy                |
| 8  | 🔥 Chạy tất cả             |
| 0  | Thoát                      |

👉 Khuyến nghị: chọn **8 (CHẠY TẤT CẢ)**

---

## ⚠️ Lưu ý quan trọng

* Tool sẽ:

  * Sửa registry
  * Tắt tính năng hệ thống
  * Có thể yêu cầu đặt lại mật khẩu máy

👉 Vì vậy:

* Luôn chạy bằng **Administrator**
* Backup dữ liệu nếu cần

---

## 🔄 Sau khi chạy

* Máy sẽ yêu cầu **restart**
* Sau khi bật lại:

  * Nhấn **F3** để hoàn tất quá trình
    
![z7654528480098_d91313309b05379a7c41042b2beae876](https://github.com/user-attachments/assets/bafdd26b-1747-48d3-b4f5-f8c07b7fc435)
![z7654528458515_dea5c46d37a9042000b9c69f838d7bae](https://github.com/user-attachments/assets/7456f492-6a3d-4f0f-8298-7c83e8c3491e)

---

## 🧠 Mục đích

Tool giúp:

* Fix lỗi không bật được máy ảo (VMware, VirtualBox…)
* Fix lỗi **VT-x is not available**
* Fix xung đột giữa Hyper-V và phần mềm ảo hóa

---

## 👨‍💻 Tác giả

* Tool by **Ph Trien**

---

## 📜 License

Free to use & modify.

---

## ⭐ Gợi ý

Nếu thấy hữu ích, hãy ⭐ repo để ủng hộ!
