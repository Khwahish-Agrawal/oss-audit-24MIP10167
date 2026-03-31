# oss-audit-24MIP10167
An in-depth Open Source Software (OSS) audit of Git covering its origin, licensing, ethics, Linux footprint, ecosystem, and real-world relevance.

**Open Source Software Audit — Git**

**Details** 

- Name: [Khwahish Agrawal]
- Registration Number: [24MIP10167]

---

**Selected Open Source Software**

- Software Name: Git
- Type: Distributed Version Control System
- License: GNU General Public License (GPL)

---

**About This Project**

This project is an audit of an open-source software — in my case, Git.

Instead of just studying commands, I focused on:

- Understanding how Git works in a real Linux environment
- Observing how it is installed, configured, and used
- Writing small shell scripts to analyze system behavior
- Exploring the idea of open source beyond just “free software”

The goal was to combine practical usage + conceptual understanding.

---

**Scripts Included & What They Do**

1️⃣ System Identity Report ("script1_khwahish.sh")

This script displays:

- Username
- Hostname
- Operating System details
- Kernel version

Helps understand the system environment where Git runs.

---

2️⃣ FOSS Package Inspector ("script2_khwahish.sh")

This script:

- Checks if Git is installed
- Displays installed version
- Shows package-related details

Useful for verifying software availability.

---

3️⃣ Disk & Permission Auditor ("script3_khwahish.sh")

This script:

- Shows disk usage
- Lists file permissions
- Identifies accessible directories

Helps understand system storage and security.

---

4️⃣ Log File Analyzer ("script4_khwahish.sh")

This script:

- Reads system logs
- Extracts useful information
- Highlights important events

Gives insight into system activities.

---

5️⃣ Open Source Manifesto Generator ("script5_khwahish.sh")

This script:

- Generates a small message about open source philosophy
- Displays it in a readable format

Adds a conceptual touch to the project.

---

**Dependencies Required**

Before running the scripts, make sure your system has:

- Linux OS (Ubuntu recommended)
- Bash shell
- Git installed
- Basic utilities like:
  - "grep"
  - "awk"
  - "df"
  - "uname"

These are usually pre-installed in most Linux systems.

---

**How to Run the Scripts**

Step 1: Install Git (if not already installed)

sudo apt update
sudo apt install git

---

Step 2: Clone the Repository

git clone <>
cd <>

---

Step 3: Give Execution Permission

chmod +x *.sh

---

Step 4: Run Each Script

▶ Run System Info Script

./script1_khwahish.sh

▶ Run Package Check Script

./script2_khwahish.sh

▶ Run Disk Audit Script

./script3_khwahish.sh

▶ Run Log Analysis Script

./script4_khwahish.sh

▶ Run Manifesto Script

./script5_khwahish.sh

---

**What I Learned**

While working on this project, I realized:

- Git is more than just commands — it is a system built for collaboration
- Open source is not just free usage, but also shared responsibility
- Linux environment plays a big role in how tools behave
- Small scripts can automate useful real-world tasks

---

**Final Thoughts**

This project helped me connect theory with practice.

Instead of only reading about open-source concepts, I got a chance to:

- Work with the system directly
- Write scripts
- Understand how things actually function

It gave me a clearer idea of how developers use open-source tools in real scenarios.

---
