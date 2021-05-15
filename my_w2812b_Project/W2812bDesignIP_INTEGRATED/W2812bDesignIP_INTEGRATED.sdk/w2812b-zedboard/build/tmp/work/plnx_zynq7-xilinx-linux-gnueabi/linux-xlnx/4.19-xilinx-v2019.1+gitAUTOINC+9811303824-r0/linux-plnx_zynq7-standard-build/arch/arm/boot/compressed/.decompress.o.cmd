cmd_arch/arm/boot/compressed/decompress.o := arm-xilinx-linux-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=bfd -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0=/usr/src/debug/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0 -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot= -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native=  -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source=/usr/src/kernel   -Wp,-MD,arch/arm/boot/compressed/.decompress.o.d  -nostdinc -isystem /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/bin/arm-xilinx-linux-gnueabi/../../lib/arm-xilinx-linux-gnueabi/gcc/arm-xilinx-linux-gnueabi/8.2.0/include -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include -I./arch/arm/include/generated  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include -I./include -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi -I./include/generated/uapi -include /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/kconfig.h -include /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler_types.h  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed -Iarch/arm/boot/compressed -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/= -Wno-packed-not-aligned -DDISABLE_BRANCH_PROFILING -fpic -mno-single-pic-base -fno-builtin  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed    -DKBUILD_BASENAME='"decompress"' -DKBUILD_MODNAME='"decompress"' -c -o arch/arm/boot/compressed/.tmp_decompress.o /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/decompress.c

source_arch/arm/boot/compressed/decompress.o := /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/decompress.c

deps_arch/arm/boot/compressed/decompress.o := \
    $(wildcard include/config/kernel/gzip.h) \
    $(wildcard include/config/kernel/lzo.h) \
    $(wildcard include/config/kernel/lzma.h) \
    $(wildcard include/config/kernel/xz.h) \
    $(wildcard include/config/kernel/lz4.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler_types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/int-ll64.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/asm-generic/bitsperlong.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/posix_types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/stddef.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/stddef.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/posix_types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/asm-generic/posix_types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/spectre.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/barrier.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/kasan-checks.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/linkage.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/stringify.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/linkage.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/string.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/misc.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/decompress_inflate.c \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inftrees.c \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/zutil.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/zlib.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/zconf.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inftrees.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inffast.c \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inflate.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inffast.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inflate.c \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/infutil.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/boot/compressed/../../../../lib/zlib_inflate/inffixed.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/decompress/mm.h \

arch/arm/boot/compressed/decompress.o: $(deps_arch/arm/boot/compressed/decompress.o)

$(deps_arch/arm/boot/compressed/decompress.o):
