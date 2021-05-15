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
	{ 0xff178f6, "__aeabi_idivmod" },
	{ 0x9cfdb985, "usb_free_all_descriptors" },
	{ 0x887ec63d, "usb_ep_disable" },
	{ 0x5a9fff9e, "usb_ep_enable" },
	{ 0x367f38d9, "usb_ep_queue" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x742f4ff8, "usb_ep_autoconfig_release" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x945d354d, "usb_ep_set_halt" },
	{ 0x3204e6a1, "usb_ep_alloc_request" },
	{ 0x91715312, "sprintf" },
	{ 0x366b1ad2, "usb_function_unregister" },
	{ 0x5f754e5a, "memset" },
	{ 0x2e0b7957, "usb_put_function_instance" },
	{ 0xf9019aa0, "kstrtou8" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x6b36956f, "usb_ep_autoconfig" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xa14338f9, "config_group_init_type_name" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x12f005d1, "usb_function_register" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x4fa34060, "alloc_ep_req" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x3fa0d062, "kstrtou16" },
	{ 0x2beb3825, "config_ep_by_speed" },
	{ 0xcd2b3b73, "usb_ep_free_request" },
	{ 0x37a0cba, "kfree" },
	{ 0xa46f2f1b, "kstrtouint" },
	{ 0xc0d54f05, "usb_string_id" },
	{ 0x92670019, "usb_assign_descriptors" },
	{ 0x522199da, "usb_interface_id" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=libcomposite";

