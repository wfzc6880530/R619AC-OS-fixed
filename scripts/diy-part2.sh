#!/bin/bash
# R619AC V0.6 - post-feed customization
set -e

echo "===== R619AC V0.6 diy-part2 ====="

# Keep the target explicit after feeds/config processing.
sed -i '/^CONFIG_TARGET_ipq40xx=/d' .config
sed -i '/^CONFIG_TARGET_ipq40xx_generic=/d' .config
sed -i '/^CONFIG_TARGET_DEVICE_ipq40xx_generic_DEVICE_p2w_r619ac-128m=/d' .config

cat >> .config <<'EOF'
CONFIG_TARGET_ipq40xx=y
CONFIG_TARGET_ipq40xx_generic=y
CONFIG_TARGET_DEVICE_ipq40xx_generic_DEVICE_p2w_r619ac-128m=y
EOF
