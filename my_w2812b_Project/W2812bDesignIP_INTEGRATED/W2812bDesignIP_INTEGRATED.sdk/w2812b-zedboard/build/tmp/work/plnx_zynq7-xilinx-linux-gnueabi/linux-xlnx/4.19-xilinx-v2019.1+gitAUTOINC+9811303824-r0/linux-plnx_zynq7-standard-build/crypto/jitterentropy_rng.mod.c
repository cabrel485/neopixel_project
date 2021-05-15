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
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0xb43f9365, "ktime_get" },
	{ 0xf76b0a59, "read_current_timer" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0x7c32d0f0, "printk" },
	{ 0x7c1372e8, "panic" },
	{ 0xb8b91f7c, "crypto_unregister_rng" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x9d669763, "memcpy" },
	{ 0x7a4497db, "kzfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x4119a402, "crypto_register_rng" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

