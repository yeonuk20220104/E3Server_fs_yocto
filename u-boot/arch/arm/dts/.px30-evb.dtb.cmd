cmd_arch/arm/dts/px30-evb.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/px30-evb.dts; ) > arch/arm/dts/.px30-evb.dtb.pre.tmp; /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.px30-evb.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.px30-evb.dtb.dts.tmp arch/arm/dts/.px30-evb.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/px30-evb.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/dts/.px30-evb.dtb.d.dtc.tmp arch/arm/dts/.px30-evb.dtb.dts.tmp ; cat arch/arm/dts/.px30-evb.dtb.d.pre.tmp arch/arm/dts/.px30-evb.dtb.d.dtc.tmp > arch/arm/dts/.px30-evb.dtb.d

source_arch/arm/dts/px30-evb.dtb := arch/arm/dts/.px30-evb.dtb.pre.tmp

deps_arch/arm/dts/px30-evb.dtb := \
  arch/arm/dts/px30.dtsi \
  arch/arm/dts/include/dt-bindings/clock/px30-cru.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/pinctrl/rockchip.h \
  arch/arm/dts/include/dt-bindings/power/px30-power.h \
  arch/arm/dts/include/dt-bindings/soc/rockchip,boot-mode.h \
  arch/arm/dts/px30-u-boot.dtsi \
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \

arch/arm/dts/px30-evb.dtb: $(deps_arch/arm/dts/px30-evb.dtb)

$(deps_arch/arm/dts/px30-evb.dtb):
