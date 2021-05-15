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
	{ 0xc9882e32, "unregister_virtio_driver" },
	{ 0x7c32d0f0, "printk" },
	{ 0xed4bf7c6, "register_virtio_driver" },
	{ 0x1ee8d6d4, "refcount_inc_checked" },
	{ 0xaf38e081, "idr_find" },
	{ 0x20c7f5cc, "idr_destroy" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x39bbfe3f, "device_for_each_child" },
	{ 0x61275678, "idr_remove" },
	{ 0x1185c09, "virtqueue_kick" },
	{ 0x314ec822, "virtqueue_add_outbuf" },
	{ 0x9d669763, "memcpy" },
	{ 0x49970de8, "finish_wait" },
	{ 0x8ddd8aad, "schedule_timeout" },
	{ 0x647af474, "prepare_to_wait_event" },
	{ 0xfe487975, "init_wait_entry" },
	{ 0xae603ef8, "virtqueue_enable_cb" },
	{ 0x19608fbf, "arm_dma_ops" },
	{ 0x3b56266e, "virtqueue_notify" },
	{ 0x53f482f0, "virtqueue_kick_prepare" },
	{ 0x266ea782, "virtqueue_add_inbuf" },
	{ 0xf3da5b1a, "dma_release_from_dev_coherent" },
	{ 0xb0d974d3, "virtqueue_disable_cb" },
	{ 0x1099f976, "dma_alloc_from_dev_coherent" },
	{ 0x6a568b0c, "virtqueue_get_vring_size" },
	{ 0x5bbe49f4, "__init_waitqueue_head" },
	{ 0xedc06d37, "refcount_dec_and_test_checked" },
	{ 0x5f3fd789, "idr_alloc" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x5f195d1, "rpmsg_sendto" },
	{ 0xfa174339, "virtio_check_driver_offered_feature" },
	{ 0x987c11c7, "__pv_phys_pfn_offset" },
	{ 0x8a7d1c31, "high_memory" },
	{ 0xa9487fae, "sg_init_one" },
	{ 0x51e77c97, "pfn_valid" },
	{ 0x1a5a8fd5, "vmalloc_to_page" },
	{ 0xee4d1bfd, "sg_init_table" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x297a41a6, "rpmsg_register_device" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0xa7556f1d, "put_device" },
	{ 0xae4b2875, "rpmsg_find_device" },
	{ 0xda8c96bd, "rpmsg_unregister_device" },
	{ 0x328a05f1, "strncpy" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x6ae3a899, "virtqueue_get_buf" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0x3dcf1ffa, "__wake_up" },
	{ 0xa74a844, "device_unregister" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x37a0cba, "kfree" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=virtio,virtio_ring,rpmsg_core";

MODULE_ALIAS("virtio:d00000007v*");
