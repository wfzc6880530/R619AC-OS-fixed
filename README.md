# R619AC Personal OS V0.6

目标设备：竞斗云 R619AC 128M NAND（p2w_r619ac-128m）

基础系统：OpenWrt 25.12.5

## V0.6

- R619AC 128M target
- LuCI
- firewall4 / nftables
- HomeProxy / sing-box
- Nikki / Mihomo
- Nezha Agent
- WireGuard
- IPv6
- USB / ext4 / vfat
- R619AC LuCI management app
- Lightweight R619AC CSS overlay

## 代理设计

HomeProxy 和 Nikki 都可以安装，但 V0.6 不在自定义界面中同时启用两个透明代理/TUN 引擎。

后续 R619AC 管理界面将提供：

- Off
- HomeProxy / sing-box
- Nikki / Mihomo

## Root / User

规划：

- root：完整 LuCI、系统、网络、防火墙、软件包和代理管理权限
- user：仅允许网络接入方式、节点查看/切换、基本状态查看

V0.6 先完成基础固件和管理入口；严格 user ACL 与完整代理切换 UI 在后续版本继续实现。

## GitHub Actions

Workflow：

`.github/workflows/build.yml`

手动运行：

Actions → Build R619AC V0.6 → Run workflow

注意：GitHub 手动 workflow 的识别与默认分支有关。如果 v06 不是仓库默认分支，GitHub 可能不会在 Actions 中提供手动运行入口。最简单的方式是暂时将 v06 设为默认分支，或者后续把 workflow 放到默认分支并让它 checkout v06。

## 固件输出

- `*-r619ac-128m*squashfs-factory.ubi`
- `*-r619ac-128m*squashfs-sysupgrade.bin`
- `*-r619ac-128m*initramfs-zImage.itb`（如果目标构建生成）
- `SHA256SUMS.txt`
- OpenWrt build metadata
