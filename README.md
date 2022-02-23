# RPM repository for the following packages:

- [SiRFIDaL](https://github.com/Giraut/SiRFIDaL) - Simple RFID authentication for Linux
- [pyuFR](https://github.com/Giraut/pyuFR) - Pure Python communication class for Digital Logic uFR-series NFC readers
- [Wordle](https://github.com/Giraut/Wordle) - Wordle game for the Unix console

# Adding the repository to DNF

```bash
dnf config-manager --add-repo https://raw.githubusercontent.com/Giraut/rpm/master/giraut.repo
```

# Installing packages

```bash
sudo dnf install sirfidal
sudo dnf install pyufr
sudo dnf install wordle
```
