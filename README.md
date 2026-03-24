# 🛠 Fix VT-x / AMD-v Tool

Công cụ Batch giúp **fix lỗi ảo hóa (VT-x / AMD-v)** trên Windows bằng cách tự động tắt các tính năng gây xung đột như Hyper-V, VBS, Credential Guard,...

---

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

## 📂 Cấu trúc yêu cầu

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

  * Nhấn **F3** 

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
