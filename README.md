# Open Source Software Audit

## Student Details
Name: Dhruv Chaudhary  
Registration Number: 24BEY10002  

---

## Chosen Software
Git  

---

## Project Description

This project is based on auditing Git as an open-source software. I chose Git mainly because it is something almost every developer uses, but I didn’t really understand how it works internally before this.

Before starting, I only knew basic things like commits and pushing code. But while working on this project and writing the scripts, I started seeing how Git actually behaves at a system level. It was not very clear in the beginning, and sometimes commands didn’t give the output I expected. I had to run things multiple times and figure out what was happening.

Along with this, I created a set of Bash scripts. These helped me understand things related to system like directories, permissions, logs, and user input. Slowly, after trying over and over again, things started to look easy and made more sense.

This project also gave me a better idea about open-source software. It’s not just about free tools, but more about sharing and improving work together.

---

## Objectives

- Understand why Git was created  
- See how it works on a system level  
- Learn about the basics of licensing in open source software  
- Practice scripting using shell  
- Work with directories and files  
- Get more practical understanding instead of just theory  

---

## Scripts

### Script 1
This script prints system details that we are running the command on like kernel version, user, uptime, and date. It was simple but helped me understand basic commands.

---

### Script 2
This script checks whether Git is installed or not. If it is installed, it shows version information. I also used a case statement here which took some time to understand properly.

---

### Script 3
This script checks some directories and shows their size and permissions. Some directories were not found in my case since I was using Git Bash, which was interesting to notice.

---

### Script 4
This script searches for a keyword inside a file. I used "error" as the keyword. It counts how many times it appears and shows the last few matching lines.

---

### Script 5
This script takes a custom user input and creates a small text file. It is simple but shows how input and file handling works.

---

## Repository Structure

- scripts/ → contains all bash scripts  
- screenshots/ → contains execution screenshots  
- report.pdf → detailed report  

---

## How to Run

Open terminal in the project folder.

First give permission:
chmod +x *.sh

Then run scripts like:
./script1_system_info.sh  
./script2_package_check.sh  
./script3_disk_audit.sh  
./script4_log_analyzer.sh script1_system_info.sh  
./script5_manifesto.sh  

---

## Screenshots

Screenshots are included showing the output of each script. These were taken while running the scripts in the terminal.

---

## Report

A detailed report is included separately. It explains Git, its license, and other open-source concepts in more detail.

---

## What I Learned

From this project, I understood Git beyond just basic usage. Also I became more comfortable using the terminal and writing simple scripts.

At first, it seemed a lot more confusing and many commands didn’t even work properly, but after trying multiple times, things became clearer and I understood where it used to go wrong.

---

## Conclusion

Overall, this project helped me understand how open source tools work in real systems. It also improved my confidence while working with commands and scripts.

Git is something I will keep using, so learning it this way was useful.