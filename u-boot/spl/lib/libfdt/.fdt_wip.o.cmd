cmd_spl/lib/libfdt/fdt_wip.o := /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc -Wp,-MD,spl/lib/libfdt/.fdt_wip.o.d  -nostdinc -isystem /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/10.3.1/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -fshort-wchar -Werror -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Werror=date-time -ffunction-sections -fdata-sections -I./scripts/dtc/libfdt -D__ARM__ -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a+nosimd -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-rockchip/include    -D"KBUILD_STR(s)=$(pound)s" -D"KBUILD_BASENAME=KBUILD_STR(fdt_wip)"  -D"KBUILD_MODNAME=KBUILD_STR(fdt_wip)" -c -o spl/lib/libfdt/fdt_wip.o lib/libfdt/fdt_wip.c

source_spl/lib/libfdt/fdt_wip.o := lib/libfdt/fdt_wip.c

deps_spl/lib/libfdt/fdt_wip.o := \
  include/linux/libfdt_env.h \
  include/linux/string.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/use/stdint.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/lib/gcc/aarch64-none-linux-gnu/10.3.1/include/stdbool.h \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/spl/use/arch/memcpy.h) \
    $(wildcard include/config/spl/use/arch/memset.h) \
  include/config.h \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/gpio.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/evb_px30.h \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/console/scroll/lines.h) \
    $(wildcard include/config/bootcommand.h) \
  include/configs/px30_common.h \
    $(wildcard include/config/px30/common/h.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/skip/lowlevel/init.h) \
    $(wildcard include/config/spl/framework.h) \
    $(wildcard include/config/sys/ns16550/mem32.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/bounce/buffer.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/dm/dvfs.h) \
    $(wildcard include/config/preboot.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/sys/nand/onfi/detection.h) \
    $(wildcard include/config/usb/function/mass/storage.h) \
    $(wildcard include/config/rockusb/g/dnl/pid.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/usb/ohci/new.h) \
    $(wildcard include/config/sys/usb/ohci/max/root/ports.h) \
  include/configs/rockchip-common.h \
    $(wildcard include/config/spl/tiny/framework.h) \
    $(wildcard include/config/sys/arch/timer.h) \
    $(wildcard include/config/sys/hz/clock.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/cmd/rknand.h) \
    $(wildcard include/config/cmd/mtd/blk.h) \
    $(wildcard include/config/spl/cmd/mmc.h) \
    $(wildcard include/config/spl/cmd/mtd/blk.h) \
    $(wildcard include/config/spl/cmd/rknand.h) \
    $(wildcard include/config/spl/cmd/usb.h) \
    $(wildcard include/config/spl/cmd/pxe.h) \
    $(wildcard include/config/spl/cmd/dhcp.h) \
    $(wildcard include/config/avb/vbmeta/public/key/validate.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/display/boardinfo/late.h) \
    $(wildcard include/config/sys/autoload.h) \
    $(wildcard include/config/spl/load/fit/address.h) \
  include/linux/sizes.h \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/env/is/in/fat.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/mtd/blk.h) \
    $(wildcard include/config/nvme.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/rkflash.h) \
    $(wildcard include/config/spl/partition/uuids.h) \
    $(wildcard include/config/spl/efi/partition.h) \
    $(wildcard include/config/spl/efi/loader.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
    $(wildcard include/config/sys/i2c.h) \
    $(wildcard include/config/cmdline.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/sys/longhelp.h) \
  include/linux/linux_string.h \
  arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
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
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/vsprintf.h \
    $(wildcard include/config/panic/hang.h) \
  /home/yujeong/iMON/iMON_old/px30_linux5.10_release_v1.1.1_20230520/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/lib/gcc/aarch64-none-linux-gnu/10.3.1/include/stdarg.h \
  lib/libfdt/../../scripts/dtc/libfdt/fdt_wip.c \
  lib/libfdt/../../scripts/dtc/libfdt/libfdt_env.h \
  include/fdt.h \
  include/../scripts/dtc/libfdt/fdt.h \
  scripts/dtc/libfdt/libfdt.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \
  lib/libfdt/../../scripts/dtc/libfdt/libfdt_internal.h \

spl/lib/libfdt/fdt_wip.o: $(deps_spl/lib/libfdt/fdt_wip.o)

$(deps_spl/lib/libfdt/fdt_wip.o):
