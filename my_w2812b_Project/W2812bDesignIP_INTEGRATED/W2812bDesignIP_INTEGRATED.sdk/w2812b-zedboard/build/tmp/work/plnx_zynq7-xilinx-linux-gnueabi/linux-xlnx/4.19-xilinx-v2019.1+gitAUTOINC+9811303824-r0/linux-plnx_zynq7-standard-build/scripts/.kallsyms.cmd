cmd_scripts/kallsyms := gcc  -isystem/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/include -O2 -pipe -L/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/lib -L/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/lib -Wl,-rpath-link,/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/lib -Wl,-rpath-link,/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/lib -Wl,-rpath,/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/lib -Wl,-rpath,/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/lib -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2 -Wp,-MD,scripts/.kallsyms.d -Iscripts -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -I/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/tools/include   -o scripts/kallsyms /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/scripts/kallsyms.c   

source_scripts/kallsyms := /home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work-shared/plnx-zynq7/kernel-source/scripts/kallsyms.c

deps_scripts/kallsyms := \
  /usr/include/stdc-predef.h \
  /usr/include/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/bits/long-double.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/types/__FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/FILE.h \
  /usr/include/x86_64-linux-gnu/bits/libio.h \
  /usr/include/x86_64-linux-gnu/bits/_G_config.h \
  /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/lib/gcc/x86_64-linux-gnu/7/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/bits/floatn.h \
  /usr/include/x86_64-linux-gnu/bits/floatn-common.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/bits/types/clock_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/time_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/timer_t.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-intn.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h \
  /usr/include/x86_64-linux-gnu/bits/uintn-identity.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
  /usr/include/x86_64-linux-gnu/bits/sysmacros.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/string.h \
  /usr/include/x86_64-linux-gnu/bits/types/locale_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/strings.h \
  /usr/include/x86_64-linux-gnu/bits/strings_fortified.h \
  /usr/include/x86_64-linux-gnu/bits/string_fortified.h \
  /usr/include/ctype.h \
  /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed/limits.h \
  /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed/syslimits.h \
  /usr/include/limits.h \
  /usr/include/x86_64-linux-gnu/bits/posix1_lim.h \
  /usr/include/x86_64-linux-gnu/bits/local_lim.h \
  /usr/include/linux/limits.h \
  /usr/include/x86_64-linux-gnu/bits/posix2_lim.h \

scripts/kallsyms: $(deps_scripts/kallsyms)

$(deps_scripts/kallsyms):
