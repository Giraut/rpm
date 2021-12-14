# RPM repository for the following packages:

- [SiRFIDaL](https://github.com/Giraut/SiRFIDaL) - Simple RFID authentication for Linux

# Adding the repository to DNF

```bash
dnf config-manager --add-repo https://raw.githubusercontent.com/Giraut/rpm/master/giraut.repo
```

# Installing packages

```bash
sudo dnf install sirfidal
```
