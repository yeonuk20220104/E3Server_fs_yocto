cmd_arch/arm/dts/rk3288-veyron-mickey.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/rk3288-veyron-mickey.dts; ) > arch/arm/dts/.rk3288-veyron-mickey.dtb.pre.tmp; /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.rk3288-veyron-mickey.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.rk3288-veyron-mickey.dtb.dts.tmp arch/arm/dts/.rk3288-veyron-mickey.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/rk3288-veyron-mickey.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.rk3288-veyron-mickey.dtb.d.dtc.tmp arch/arm/dts/.rk3288-veyron-mickey.dtb.dts.tmp ; cat arch/arm/dts/.rk3288-veyron-mickey.dtb.d.pre.tmp arch/arm/dts/.rk3288-veyron-mickey.dtb.d.dtc.tmp > arch/arm/dts/.rk3288-veyron-mickey.dtb.d

source_arch/arm/dts/rk3288-veyron-mickey.dtb := arch/arm/dts/.rk3288-veyron-mickey.dtb.pre.tmp

deps_arch/arm/dts/rk3288-veyron-mickey.dtb := \
  arch/arm/dts/rk3288-veyron-chromebook.dtsi \
  arch/arm/dts/include/dt-bindings/clock/rockchip,rk808.h \
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \
  arch/arm/dts/rk3288-veyron.dtsi \
  arch/arm/dts/rk3288.dtsi \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/pinctrl/rockchip.h \
  arch/arm/dts/include/dt-bindings/clock/rk3288-cru.h \
  arch/arm/dts/include/dt-bindings/power-domain/rk3288.h \
  arch/arm/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm/dts/include/dt-bindings/video/rk3288.h \
  arch/arm/dts/skeleton.dtsi \
  arch/arm/dts/rk3288-thermal.dtsi \
  arch/arm/dts/rk3288-u-boot.dtsi \
  arch/arm/dts/cros-ec-keyboard.dtsi \

arch/arm/dts/rk3288-veyron-mickey.dtb: $(deps_arch/arm/dts/rk3288-veyron-mickey.dtb)

$(deps_arch/arm/dts/rk3288-veyron-mickey.dtb):
