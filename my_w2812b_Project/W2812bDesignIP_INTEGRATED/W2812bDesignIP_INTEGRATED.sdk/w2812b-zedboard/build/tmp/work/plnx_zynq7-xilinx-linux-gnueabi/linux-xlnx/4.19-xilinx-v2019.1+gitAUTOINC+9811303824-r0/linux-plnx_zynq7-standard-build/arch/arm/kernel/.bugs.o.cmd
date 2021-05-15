cmd_arch/arm/kernel/bugs.o := arm-xilinx-linux-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=bfd -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0=/usr/src/debug/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0 -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot= -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native=  -fdebug-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source=/usr/src/kernel   -Wp,-MD,arch/arm/kernel/.bugs.o.d  -nostdinc -isystem /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/bin/arm-xilinx-linux-gnueabi/../../lib/arm-xilinx-linux-gnueabi/gcc/arm-xilinx-linux-gnueabi/8.2.0/include -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include -I./arch/arm/include/generated  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include -I./include -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi -I./include/generated/uapi -include /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/kconfig.h -include /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/compiler_types.h  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/kernel -Iarch/arm/kernel -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/= -Wno-packed-not-aligned    -DKBUILD_BASENAME='"bugs"' -DKBUILD_MODNAME='"bugs"' -c -o arch/arm/kernel/.tmp_bugs.o /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/kernel/bugs.c

source_arch/arm/kernel/bugs.o := /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/kernel/bugs.c

deps_arch/arm/kernel/bugs.o := \
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
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/init.h \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
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
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/bugs.h \
    $(wildcard include/config/mmu.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/arm/lpae.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/glue.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/pgtable-2level-types.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/const.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/const.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/sizes.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/pfn.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/getorder.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/bitops.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/bits.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/bitops.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/irqflags.h \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/typecheck.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/irqflags.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/hwcap.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/hwcap.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/irqflags.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/non-atomic.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/builtin-__fls.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/builtin-__ffs.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/builtin-fls.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/builtin-ffs.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/ffz.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/fls64.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/sched.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/hweight.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/arch_hweight.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/const_hweight.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/lock.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/atomic.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/prefetch.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/hw_breakpoint.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/unified.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/cmpxchg.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/cmpxchg-local.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/atomic-long.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/le.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/byteorder.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/byteorder/little_endian.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/byteorder/little_endian.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/swab.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/uapi/linux/swab.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/asm/swab.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/arch/arm/include/uapi/asm/swab.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/linux/byteorder/generic.h \
  /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/include/asm-generic/bitops/ext2-atomic-setbit.h \

arch/arm/kernel/bugs.o: $(deps_arch/arm/kernel/bugs.o)

$(deps_arch/arm/kernel/bugs.o):
