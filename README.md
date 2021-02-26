# **macOS Big Sur Developer Setup**
![macOS Big Sur Developer Setup](./attachments/s025.png "macOS Big Sur Developer Setup")
# **System Preference**

`Change Recent Items`: None
![s001](./attachments/s001.png)
`Start After`: 2 Minutes
`Check Show with clock`
![s002](./attachments/s002.png)
![s003](./attachments/s003.png)
![s004](./attachments/s004.png)
![s005](./attachments/s005.png)
![s006](./attachments/s006.png)
![s007](./attachments/s007.png)
![s008](./attachments/s008.png)
![s009](./attachments/s009.png)
![s010](./attachments/s010.png)






**Clone this project**
---
```sh
cd ~
git clone https://github.com/Chindada/macOS_11_setup.git
cd macOS_11_setup
chmod -R 777 ./
```

## Steps

```sh
sudo xcode-select --install
sudo softwareupdate --install-rosetta
```

```sh
flutter doctor
flutter pub global activate devtools
flutter doctor --android-licenses
```

```sh
go get -u github.com/beego/beego/v2
go get -u github.com/beego/bee/v2
asdf reshim golang
```
## Deployment

Add additional notes about how to deploy this on a live system

## Authors

- **Tim Hsu** 

