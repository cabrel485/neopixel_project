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
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0x5b4096c8, "crypto_ablkcipher_type" },
	{ 0x1a4af81b, "sg_nents" },
	{ 0x4e6c8f90, "crypto_engine_alloc_init" },
	{ 0xfffa3100, "sg_next" },
	{ 0xc0c06fe6, "cpu_topology" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x1185c09, "virtqueue_kick" },
	{ 0x6ae3a899, "virtqueue_get_buf" },
	{ 0xcf3fac84, "cpumask_next" },
	{ 0x17de3d5, "nr_cpu_ids" },
	{ 0x1cf169aa, "virtio_break_device" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x6dfd7438, "virtqueue_add_sgs" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0x7c32d0f0, "printk" },
	{ 0x921b07b1, "__cpu_online_mask" },
	{ 0x777621d, "crypto_engine_start" },
	{ 0x4389d61a, "sg_nents_for_len" },
	{ 0xb0d974d3, "virtqueue_disable_cb" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xe75625fb, "cpu_bit_bitmap" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0xa04f945a, "cpus_read_lock" },
	{ 0xbfaf5a82, "crypto_finalize_ablkcipher_request" },
	{ 0xde7db259, "module_put" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x6d977654, "crypto_transfer_ablkcipher_request_to_engine" },
	{ 0xc9882e32, "unregister_virtio_driver" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x8db400b5, "crypto_register_alg" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0x18fb2caf, "cpus_read_unlock" },
	{ 0xf73867d7, "crypto_engine_exit" },
	{ 0xa9487fae, "sg_init_one" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x7a4497db, "kzfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xb81960ca, "snprintf" },
	{ 0x102ec497, "virtqueue_is_broken" },
	{ 0x352c45b4, "virtqueue_detach_unused_buf" },
	{ 0xb27a8f7e, "crypto_unregister_alg" },
	{ 0xae603ef8, "virtqueue_enable_cb" },
	{ 0xc1742f8d, "try_module_get" },
	{ 0xed4bf7c6, "register_virtio_driver" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=crypto_engine,virtio_ring,virtio";

MODULE_ALIAS("virtio:d00000014v*");
