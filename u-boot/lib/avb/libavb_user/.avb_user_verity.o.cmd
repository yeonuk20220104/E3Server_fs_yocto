cmd_lib/avb/libavb_user/avb_user_verity.o := /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -Wp,-MD,lib/avb/libavb_user/.avb_user_verity.o.d  -nostdinc -isystem /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/10.3.1/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -fshort-wchar -Werror -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Werror=date-time -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a+nosimd -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-rockchip/include    -D"KBUILD_STR(s)=$(pound)s" -D"KBUILD_BASENAME=KBUILD_STR(avb_user_verity)"  -D"KBUILD_MODNAME=KBUILD_STR(avb_user_verity)" -c -o lib/avb/libavb_user/avb_user_verity.o lib/avb/libavb_user/avb_user_verity.c

source_lib/avb/libavb_user/avb_user_verity.o := lib/avb/libavb_user/avb_user_verity.c

deps_lib/avb/libavb_user/avb_user_verity.o := \
  include/android_avb/avb_user_verity.h \
  include/android_avb/libavb.h \
  include/android_avb/avb_chain_partition_descriptor.h \
  include/android_avb/avb_descriptor.h \
  include/android_avb/avb_sysdeps.h \
    $(wildcard include/config/use/stdint.h) \
  include/inttypes.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/sys/cacheline/size.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/lib/gcc/aarch64-none-linux-gnu/10.3.1/include/stdbool.h \
  /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/lib/gcc/aarch64-none-linux-gnu/10.3.1/include/stddef.h \
  include/android_avb/avb_crypto.h \
  include/android_avb/avb_footer.h \
  include/android_avb/avb_hash_descriptor.h \
  include/android_avb/avb_hashtree_descriptor.h \
  include/android_avb/avb_kernel_cmdline_descriptor.h \
  include/android_avb/avb_ops.h \
  include/android_avb/avb_property_descriptor.h \
  include/android_avb/avb_slot_verify.h \
  include/android_avb/avb_vbmeta_image.h \
  include/android_avb/avb_crypto.h \
  include/android_avb/avb_descriptor.h \
  include/android_avb/avb_util.h \
  include/android_avb/avb_version.h \

lib/avb/libavb_user/avb_user_verity.o: $(deps_lib/avb/libavb_user/avb_user_verity.o)

$(deps_lib/avb/libavb_user/avb_user_verity.o):
