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
	{ 0x36673c0f, "crypto_unregister_template" },
	{ 0x9276aa6a, "crypto_register_template" },
	{ 0x1bd0823f, "shash_no_setkey" },
	{ 0x5b4080d9, "crypto_mod_put" },
	{ 0x4cb23215, "shash_free_instance" },
	{ 0xf71f2db1, "shash_register_instance" },
	{ 0xe8f2e0da, "crypto_init_shash_spawn" },
	{ 0x64b2ddd6, "crypto_alloc_instance2" },
	{ 0xbe7fc87d, "shash_attr_alg" },
	{ 0x243f0b4b, "crypto_check_attr_type" },
	{ 0x8b25a2cb, "crypto_spawn_tfm2" },
	{ 0x60c6068e, "crypto_destroy_tfm" },
	{ 0x6fe7702e, "crypto_shash_final" },
	{ 0xdd74e5d1, "crypto_shash_finup" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x5f754e5a, "memset" },
	{ 0x9d669763, "memcpy" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x9424a508, "crypto_shash_digest" },
	{ 0xc40c3755, "crypto_shash_update" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

