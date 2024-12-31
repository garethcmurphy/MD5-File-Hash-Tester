# MD5 File Hash Tester 🔐  

A simple shell script to compute and verify MD5 hashes for files. This tool ensures file integrity in a quick and reliable way.

---

## Features ✨  

- Generate MD5 hashes for single or multiple files.  
- Verify file integrity by comparing calculated hashes with expected values.  
- Lightweight and easy to use.  

---

## Getting Started 🚀  

### Prerequisites 🛠️  

- A shell environment (e.g., Bash or Zsh).  
- The `md5sum` command (pre-installed on most Unix-based systems).  

---

### Installation  

1. Clone the repository:  
git clone https://github.com/your-username/md5-file-hash-tester.git  
cd md5-file-hash-tester  

2. Make the script executable:  
chmod +x md5test.sh  

---

## Usage 🔧  

### Generate MD5 Hashes for Files  
Run the script with the file(s) you want to hash:  
./md5test.sh file1.txt file2.txt  

The script will output the MD5 hashes of the specified files.

### Verify File Integrity  
Prepare a file (e.g., `checksums.md5`) with expected hashes in this format:  
<hash> <filename>  

Run the script in verification mode:  
./md5test.sh -v checksums.md5  

The script will compare the calculated hashes with the expected values and report mismatches.

---

## File Structure 📂  

- `md5test.sh`: The main script for hashing and verification.  
- `README.md`: Documentation for the repository.  

---

## Contributing 🤝  

1. Fork the repository.  
2. Create a new branch:  
git checkout -b feature/your-feature  

3. Commit your changes:  
git commit -m "Add your feature"  

4. Push the branch:  
git push origin feature/your-feature  

5. Open a pull request for review.  

---

## License 📝  

This project is licensed under the MIT License. See the LICENSE file for details.

---

**Test and ensure file integrity with ease!** 🔐✨  
