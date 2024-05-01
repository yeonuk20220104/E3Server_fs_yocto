cmd_tpl/arch/arm/lib/sections.o := /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -Wp,-MD,tpl/arch/arm/lib/.sections.o.d  -nostdinc -isystem /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/10.3.1/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -DCONFIG_TPL_BUILD -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -fshort-wchar -Werror -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Werror=date-time -ffunction-sections -fdata-sections -D__ARM__ -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a+nosimd -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-rockchip/include    -D"KBUILD_STR(s)=$(pound)s" -D"KBUILD_BASENAME=KBUILD_STR(sections)"  -D"KBUILD_MODNAME=KBUILD_STR(sections)" -c -o tpl/arch/arm/lib/sections.o arch/arm/lib/sections.c

source_tpl/arch/arm/lib/sections.o := arch/arm/lib/sections.c

deps_tpl/arch/arm/lib/sections.o := \

tpl/arch/arm/lib/sections.o: $(deps_tpl/arch/arm/lib/sections.o)

$(deps_tpl/arch/arm/lib/sections.o):
