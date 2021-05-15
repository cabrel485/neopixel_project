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
	{ 0xa4ab97f3, "unregister_rpmsg_driver" },
	{ 0x3e6badd6, "class_destroy" },
	{ 0xbb7f4038, "__register_rpmsg_driver" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0x2d0d89b2, "__class_create" },
	{ 0x7c32d0f0, "printk" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0x5bbe49f4, "__init_waitqueue_head" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x28cc25db, "arm_copy_from_user" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x233177f, "device_add" },
	{ 0xb9757c96, "cdev_add" },
	{ 0xf5eb827c, "dev_set_name" },
	{ 0xeb00f3ca, "ida_alloc_range" },
	{ 0xfad496fc, "cdev_init" },
	{ 0x2fc5bded, "device_initialize" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x91715312, "sprintf" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xf4fa543b, "arm_copy_to_user" },
	{ 0x49970de8, "finish_wait" },
	{ 0x1000e51, "schedule" },
	{ 0x647af474, "prepare_to_wait_event" },
	{ 0xfe487975, "init_wait_entry" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x4899e04c, "rpmsg_send" },
	{ 0x890cb0ea, "rpmsg_trysend" },
	{ 0xdc165e81, "mutex_lock_interruptible" },
	{ 0xe2e8065e, "memdup_user" },
	{ 0x9c6ddac5, "rpmsg_poll" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0x5d57092b, "skb_queue_tail" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x9d669763, "memcpy" },
	{ 0xb8edc009, "skb_put" },
	{ 0x4fb2348e, "__alloc_skb" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x2fe5f5cd, "rpmsg_create_ept" },
	{ 0xb82ae380, "kfree_skb" },
	{ 0xac39280e, "skb_dequeue" },
	{ 0xeb3d2078, "get_device" },
	{ 0x37a0cba, "kfree" },
	{ 0xd1f18866, "cdev_del" },
	{ 0x21af32f7, "ida_free" },
	{ 0x3dcf1ffa, "__wake_up" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x16deffed, "rpmsg_destroy_ept" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xa7556f1d, "put_device" },
	{ 0x90cb6dbd, "device_del" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x39bbfe3f, "device_for_each_child" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=rpmsg_core";

