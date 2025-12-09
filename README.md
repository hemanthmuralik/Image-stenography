# 🖼️ Image Steganography in C (LSB-based)

A **lightweight, modular C application** to **hide and extract files inside BMP images** using **Least Significant Bit (LSB)** steganography. This project focuses on **bit-level data manipulation**, **memory efficiency**, and **clean modular design**, making it an ideal fit for **embedded systems**, **cybersecurity fundamentals**, and **low-resource environments**.

---

## ✨ Key Features

* ✅ Encode (hide) arbitrary files inside **BMP images** using LSB technique
* ✅ Decode (extract) hidden files from stego-images
* ✅ Written in **pure C** — no external libraries
* ✅ Modular architecture (encode / decode / common utilities)
* ✅ Demonstrates **low-level systems programming concepts**
* ✅ Ideal for **embedded**, **security**, and **edge-focused** learning

---

## 🧠 How It Works (High-Level)

* Uses **LSB substitution** to hide secret data bits inside pixel data
* Operates only on **lossless BMP images** to avoid data corruption
* Sequentially embeds:

  * Magic string (for validation)
  * Secret file size
  * Secret file extension
  * Secret file data

During decoding, the process is reversed to fully reconstruct the hidden file.

---

## 🗂️ Project Structure

```text
Image-stenography/
├── encode.c        # Logic for embedding data
├── decode.c        # Logic for extracting hidden data
├── encode.h        # Encoder declarations
├── decode.h        # Decoder declarations
├── common.h        # Shared macros & utilities
├── types.h         # Custom data types & enums
├── main.c          # Entry point & CLI handling
├── sample.bmp      # Sample cover image
└── README.md
```

---

## 🛠️ Build Instructions

### Requirements

* GCC compiler
* Linux / macOS / Windows (MinGW)

### Compile

```bash
gcc *.c -o stego
```

---

## ▶️ Usage

### 🔐 Encode (Hide a file inside an image)

```bash
./stego -e cover.bmp secret.txt stego.bmp
```

* `cover.bmp` → Original image
* `secret.txt` → File to hide
* `stego.bmp` → Output image with hidden data

---

### 🔓 Decode (Extract hidden file)

```bash
./stego -d stego.bmp
```

* Reconstructs the original secret file automatically

---

## 📌 Limitations

* ❗ Works **only with BMP images** (lossless format)
* ❗ No encryption — this is **steganography, not cryptography**
* ❗ Capacity limited by image size
* ❗ Not resistant to image compression or resizing

---

## 🎯 Learning Outcomes

This project helped reinforce:

* Bitwise operations & masking
* File I/O and binary data handling in C
* Memory-efficient design
* Modular code organization
* Real-world relevance of LSB steganography

---

## 🚀 Future Improvements

* 🔐 Add AES encryption before embedding
* 🧪 Steganalysis / detection module
* 🖼️ Support for PNG images
* 📊 Capacity estimation & validation
* 🧵 Multithreaded encode/decode

---

## 🤝 Contributions

Contributions, issues, and feature requests are welcome!

Fork the repo → Create a branch → Commit changes → Open a PR

---

## 👤 Author

**Hemanth Murali Kattur**
Electronics Engineer | Embedded Systems | Edge AI

* GitHub: [https://github.com/hemanthmuralik](https://github.com/hemanthmuralik)
* Medium: [https://medium.com/@hemanthmuralikattur](https://medium.com/@hemanthmuralikattur)

---

⭐ If you found this project useful, consider starring the repository!
