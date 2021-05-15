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
	{ 0x402b8281, "__request_module" },
	{ 0x9f1e43e0, "device_remove_file" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x97adb487, "utf8s_to_utf16s" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0x349cba85, "strchr" },
	{ 0xfd9902c3, "usb_gadget_deactivate" },
	{ 0x97255bdf, "strlen" },
	{ 0xd35f75a1, "match_string" },
	{ 0x367f38d9, "usb_ep_queue" },
	{ 0xabf32f29, "utf16s_to_utf8s" },
	{ 0x20000329, "simple_strtoul" },
	{ 0xe2fae716, "kmemdup" },
	{ 0xe61fea42, "config_item_put" },
	{ 0x916a56f7, "config_item_init_type_name" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x48098dc, "usb_gadget_unregister_driver" },
	{ 0x3204e6a1, "usb_ep_alloc_request" },
	{ 0x91715312, "sprintf" },
	{ 0xc499ae1e, "kstrdup" },
	{ 0x63a69c98, "usb_gadget_set_state" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x44b5ee9a, "kasprintf" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x5f754e5a, "memset" },
	{ 0x77ae495d, "usb_speed_string" },
	{ 0x752d5f5b, "kstrtobool" },
	{ 0xf9019aa0, "kstrtou8" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x7c32d0f0, "printk" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xf2fc01d3, "usb_gadget_activate" },
	{ 0xa14338f9, "config_group_init_type_name" },
	{ 0xa7fbd5de, "init_uts_ns" },
	{ 0x7e05aae6, "configfs_register_subsystem" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x4881ea02, "device_create_file" },
	{ 0x6468ba35, "usb_ep_dequeue" },
	{ 0xde7db259, "module_put" },
	{ 0xe1a98d74, "config_item_set_name" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x11467977, "usb_gadget_vbus_draw" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x3fa0d062, "kstrtou16" },
	{ 0x7b256cc1, "usb_gadget_set_selfpowered" },
	{ 0x17297585, "configfs_unregister_subsystem" },
	{ 0xcd2b3b73, "usb_ep_free_request" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0xc0b06b1c, "usb_gadget_ep_match_desc" },
	{ 0xcd97f09a, "usb_gadget_probe_driver" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x676bbc0f, "_set_bit" },
	{ 0xb81960ca, "snprintf" },
	{ 0xaffba2d5, "config_group_init" },
	{ 0xc1742f8d, "try_module_get" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

