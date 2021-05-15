#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

#ifdef RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xfb080ece, "module_layout" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xa1beee58, "vring_del_virtqueue" },
	{ 0xf3da5b1a, "dma_release_from_dev_coherent" },
	{ 0x4ab82d5f, "mem_map" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x97255bdf, "strlen" },
	{ 0x19608fbf, "arm_dma_ops" },
	{ 0x25d20f3c, "register_virtio_device" },
	{ 0xe2fae716, "kmemdup" },
	{ 0x987c11c7, "__pv_phys_pfn_offset" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x6c1ce5ce, "strcspn" },
	{ 0x91715312, "sprintf" },
	{ 0xc499ae1e, "kstrdup" },
	{ 0x51e77c97, "pfn_valid" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x1099f976, "dma_alloc_from_dev_coherent" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x5f754e5a, "memset" },
	{ 0x20c7f5cc, "idr_destroy" },
	{ 0x90cb6dbd, "device_del" },
	{ 0xdc165e81, "mutex_lock_interruptible" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x74cdb0d8, "dev_coredumpv" },
	{ 0x7c32d0f0, "printk" },
	{ 0x71c90087, "memcmp" },
	{ 0x9cc8475f, "class_unregister" },
	{ 0x21af32f7, "ida_free" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xedc06d37, "refcount_dec_and_test_checked" },
	{ 0x5f3fd789, "idr_alloc" },
	{ 0x233177f, "device_add" },
	{ 0xfeb16401, "request_firmware_nowait" },
	{ 0xf4965082, "__class_register" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x82def65d, "of_find_node_by_phandle" },
	{ 0x9d88ffa7, "unregister_virtio_device" },
	{ 0x51ef33b8, "kstrndup" },
	{ 0x61275678, "idr_remove" },
	{ 0xde7db259, "module_put" },
	{ 0x8d8deb80, "vring_new_virtqueue" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0xa7556f1d, "put_device" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x8a7d1c31, "high_memory" },
	{ 0xff05fa13, "vring_interrupt" },
	{ 0xeb3d2078, "get_device" },
	{ 0xc2c5b2b6, "vsnprintf" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x2fc5bded, "device_initialize" },
	{ 0x9bca854c, "request_firmware" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x222e7ce2, "sysfs_streq" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xb2d48a2e, "queue_work_on" },
	{ 0xb81960ca, "snprintf" },
	{ 0x1a5a8fd5, "vmalloc_to_page" },
	{ 0xf5eb827c, "dev_set_name" },
	{ 0x1ee8d6d4, "refcount_inc_checked" },
	{ 0x118138e7, "sysfs_create_file_ns" },
	{ 0xc673564, "of_node_put" },
	{ 0xaf38e081, "idr_find" },
	{ 0x445c816c, "ida_destroy" },
	{ 0xbc1995da, "vring_transport_features" },
	{ 0xadfb22c7, "release_firmware" },
	{ 0xc1742f8d, "try_module_get" },
	{ 0xeb00f3ca, "ida_alloc_range" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=virtio_ring,virtio";

