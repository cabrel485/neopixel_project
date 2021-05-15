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
	{ 0x91715312, "sprintf" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0x7c1372e8, "panic" },
	{ 0xa9159d05, "driver_unregister" },
	{ 0x21af32f7, "ida_free" },
	{ 0x59bda5f9, "_raw_spin_unlock_irq" },
	{ 0x233177f, "device_add" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0xdb05e7af, "bus_unregister" },
	{ 0x2da81bff, "_raw_spin_lock_irq" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0x2fc5bded, "device_initialize" },
	{ 0xa74a844, "device_unregister" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xf5eb827c, "dev_set_name" },
	{ 0x445c816c, "ida_destroy" },
	{ 0xeb00f3ca, "ida_alloc_range" },
	{ 0xe914e41e, "strcpy" },
	{ 0x6c07d933, "add_uevent_var" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

