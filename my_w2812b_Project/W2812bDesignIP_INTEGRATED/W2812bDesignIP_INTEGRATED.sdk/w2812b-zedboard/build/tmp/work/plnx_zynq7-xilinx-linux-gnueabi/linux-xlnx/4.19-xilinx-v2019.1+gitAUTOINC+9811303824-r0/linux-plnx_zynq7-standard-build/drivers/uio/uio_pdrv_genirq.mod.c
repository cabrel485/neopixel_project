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
	{ 0x82bd9696, "param_ops_string" },
	{ 0x8a8062bf, "platform_driver_unregister" },
	{ 0x38e4b428, "__platform_driver_register" },
	{ 0xdc53581, "__uio_register_device" },
	{ 0x1db22110, "pm_runtime_enable" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x7ae7907a, "platform_get_irq" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x4025dc4f, "devm_kmalloc" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x27bbf221, "disable_irq_nosync" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0xfcec0987, "enable_irq" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0xf4239b47, "__pm_runtime_resume" },
	{ 0x2bb4b485, "__pm_runtime_idle" },
	{ 0xa2a7b99f, "__pm_runtime_disable" },
	{ 0x5009bb40, "uio_unregister_device" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

MODULE_ALIAS("of:N*T*");
MODULE_ALIAS("of:N*T*C*");
