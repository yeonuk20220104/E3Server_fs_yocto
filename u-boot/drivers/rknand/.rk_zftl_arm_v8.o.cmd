cmd_drivers/rknand/rk_zftl_arm_v8.o := /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -Wp,-MD,drivers/rknand/.rk_zftl_arm_v8.o.d  -nostdinc -isystem /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/10.3.1/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -g -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a+nosimd -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-rockchip/include   -c -o drivers/rknand/rk_zftl_arm_v8.o drivers/rknand/rk_zftl_arm_v8.S

source_drivers/rknand/rk_zftl_arm_v8.o := drivers/rknand/rk_zftl_arm_v8.S

deps_drivers/rknand/rk_zftl_arm_v8.o := \

drivers/rknand/rk_zftl_arm_v8.o: $(deps_drivers/rknand/rk_zftl_arm_v8.o)

$(deps_drivers/rknand/rk_zftl_arm_v8.o):
