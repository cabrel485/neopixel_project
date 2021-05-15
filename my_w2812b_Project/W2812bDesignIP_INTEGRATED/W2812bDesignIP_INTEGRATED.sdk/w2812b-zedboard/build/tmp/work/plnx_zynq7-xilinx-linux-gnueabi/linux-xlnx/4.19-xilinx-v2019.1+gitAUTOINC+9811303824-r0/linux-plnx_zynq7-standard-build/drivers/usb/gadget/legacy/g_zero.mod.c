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
	{ 0x2b68bd2f, "del_timer" },
	{ 0xf50ee3e8, "param_ops_bool" },
	{ 0xc6f46339, "init_timer_key" },
	{ 0x526c3a6c, "jiffies" },
	{ 0xc89c7161, "usb_ep_autoconfig_reset" },
	{ 0x8763bfbc, "usb_otg_descriptor_init" },
	{ 0x72e80044, "param_ops_charp" },
	{ 0x97934ecf, "del_timer_sync" },
	{ 0x2e0b7957, "usb_put_function_instance" },
	{ 0xc38c83b8, "mod_timer" },
	{ 0xa0a7c050, "usb_otg_descriptor_alloc" },
	{ 0xa73ca78a, "usb_composite_overwrite_options" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0xb8098b7e, "usb_composite_probe" },
	{ 0xa06054da, "usb_add_function" },
	{ 0xbdf65ed3, "usb_gadget_wakeup" },
	{ 0xa502505d, "usb_put_function" },
	{ 0x9f682a8, "usb_composite_unregister" },
	{ 0xf57159d6, "usb_get_function" },
	{ 0x37a0cba, "kfree" },
	{ 0x44920fe7, "usb_string_ids_tab" },
	{ 0xc456b360, "usb_add_config_only" },
	{ 0x36d860c7, "usb_get_function_instance" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8780586d, "param_ops_ushort" },
	{ 0x7f02188f, "__msecs_to_jiffies" },
	{ 0x817c05c8, "param_ops_uint" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=libcomposite";

