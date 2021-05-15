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
	{ 0xd8d06d48, "bus_register" },
	{ 0xec70a674, "driver_register" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0x6c1ce5ce, "strcspn" },
	{ 0x91715312, "sprintf" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x78f3ed4d, "of_device_uevent_modalias" },
	{ 0x5f754e5a, "memset" },
	{ 0x5705e8b2, "device_register" },
	{ 0xb0e404f9, "device_find_child" },
	{ 0x7c32d0f0, "printk" },
	{ 0xa9159d05, "driver_unregister" },
	{ 0x328a05f1, "strncpy" },
	{ 0x84b183ae, "strncmp" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0xdb05e7af, "bus_unregister" },
	{ 0x1ca90923, "of_match_device" },
	{ 0x51ef33b8, "kstrndup" },
	{ 0x5d9562d9, "dev_pm_domain_detach" },
	{ 0xa7556f1d, "put_device" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0xad90c0ed, "dev_pm_domain_attach" },
	{ 0x48141141, "of_device_modalias" },
	{ 0x37a0cba, "kfree" },
	{ 0xa74a844, "device_unregister" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xf5eb827c, "dev_set_name" },
	{ 0x6c07d933, "add_uevent_var" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

