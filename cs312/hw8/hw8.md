# CS 312 Homework 8

## Robert Detjens

---

## Preface

You had a keylogger and backdoor on the machine named `Alpine_Kali_HW`, but it was discovered and removed! Before your
malware was uninstalled, though, it weakened the system. At this point, the situation is:

- There are two user accounts: “`root`”, and “`lowlevel`”. The root account has superuser privileges, but the lowlevel
  account does not. You do not know the password to either, anymore.
- Your malware added a public RSA SSH key to `/home/lowlevel/.ssh/authorized_keys` on the Alpine_Kali_HW machine!
- Your malware changed the permissions of the `/etc/shadow` file such that the `lowlevel` account can read it.

## Questions

### 1. `hashcat`, the password cracker, has a mode called "`straight`", with `id` zero. This mode simply tries all the words in the dictionary that you provide on execution. What other kinds of attack modes does `hashcat` have?

From the help page:

| ID | Mode                   |
|----|------------------------|
| 0  | Straight               |
| 1  | Combination            |
| 3  | Brute-force            |
| 6  | Hybrid Wordlist + Mask |
| 7  | Hybrid Mask + Wordlist |
| 9  | Association            |

### 2. If a "secret file", logging valuable information were created and stored on the `Alpine_Kali_HW` machine, what kinds of information might be stored in this file, how would this impact using this machine, and how could attackers cover their tracks and hide information in this file?

This secret file could contain login details and sensitive information captured by a keylogger, along with browsing
history, session tokens, network connection history, and other private data. This would not outwardly cause performance
problems, as this hypothetical program is "passively" collection data instead of e.g. mining crypto, but depending on
how much data is logged the file might grow suspiciously large. The data may be hidden in other files with e.g. image
steganography as to seem innocuous and/or encrypted so the victim cannot see / recognize the stolen data.

### 3. These questions are about information on the `Alpine_Kali_HW` machine:

#### 3.1. What are the implications of having a “`lowlevel`” account on the system that can read the `/etc/shadow` file?

`/etc/shadow` contains password hashes for all accounts on the system. If an account has access to this file, they can
extract the hashes and start cracking them to get passwords for any accounts, including `root`.

#### 3.2. What are the implications of the “`root`” and "`lowlevel`" account passwords being changed by an attacker?

If those passwords are changed, then the normal sysadmin cannot log in and fix problems!
