# **macOS Big Sur Developer Setup**
![macOS Big Sur Developer Setup](./attachments/s025.png "macOS Big Sur Developer Setup")
**Clone this project**
---
```sh
sudo xcode-select --install
sudo softwareupdate --install-rosetta
git clone https://github.com/Chindada/macOS_11_setup.git ~/dev_projects/macOS_11_setup
chmod -R 777 ~/macOS_11_setup
```
## Steps

```sh
rm -rf ~/macOS_11_setup
git clone git@github.com:Chindada/macOS_11_setup.git ~/dev_projects/macOS_11_setup
```

```sh
flutter doctor
flutter pub global activate devtools
```

```sh
go get -u github.com/beego/beego/v2
go get -u github.com/beego/bee/v2
```
## Deployment

Add additional notes about how to deploy this on a live system

## Authors

- **Tim Hsu** 

