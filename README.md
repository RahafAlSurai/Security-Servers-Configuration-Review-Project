# 📘 Security Configuration Review Project

## 🔷 Project Overview
This project demonstrates the design, configuration, and security review of key enterprise servers, including DNS, Mail, and Database servers. The objective is to identify common security misconfigurations and provide practical recommendations to enhance system security and reduce risk.

---

## 🏗️ Architecture Overview
- DNS Server – Handles domain name resolution  
- Mail Server – Manages email communication  
- Database Server – Stores and manages application data  

---

## 🖥️ Server Analysis

### 🔹 DNS Server
**Description:**  
The DNS server is responsible for translating domain names into IP addresses.

**Security Issues Identified:**
- Open recursion enabled  
- Unrestricted zone transfers  
- Lack of logging and monitoring  

**Recommendations:**
- Disable open recursion  
- Restrict zone transfers to authorized IP addresses  
- Enable DNS logging and monitoring  

---

### 🔹 Mail Server
**Description:**  
The mail server manages sending, receiving, and storing emails.

**Security Issues Identified:**
- Missing SPF, DKIM, and DMARC configurations  
- Weak authentication mechanisms  
- Unencrypted communication (no TLS)

**Recommendations:**
- Configure SPF, DKIM, and DMARC  
- Enforce strong authentication policies  
- Enable TLS encryption for email transmission  

---

### 🔹 Database Server
**Description:**  
The database server stores and manages structured data for applications.

**Security Issues Identified:**
- Weak or default credentials  
- Excessive user privileges  
- Lack of encryption for sensitive data  

**Recommendations:**
- Enforce strong password policies  
- Apply the principle of least privilege  
- Enable encryption at rest and in transit  

---

## 🔍 Security Testing Approach
- Manual configuration review  
- Vulnerability scanning (e.g., Nmap)  
- Misconfiguration analysis  

---

## 🛠️ Tools Used
- Nmap  
- Bash scripts (for configuration checks)  
- VMware (Kali Linux, Windows lab environment)  

---

## 📊 Key Outcomes
- Identified critical security misconfigurations across multiple servers  
- Provided actionable remediation strategies  
- Demonstrated a real-world configuration review approach aligned with cybersecurity best practices  

---

## 🧠 Real-World Relevance
This project reflects practical configuration review processes used in cybersecurity governance, risk, and compliance (GRC) to ensure systems are secure, compliant, and resilient against potential threats.
