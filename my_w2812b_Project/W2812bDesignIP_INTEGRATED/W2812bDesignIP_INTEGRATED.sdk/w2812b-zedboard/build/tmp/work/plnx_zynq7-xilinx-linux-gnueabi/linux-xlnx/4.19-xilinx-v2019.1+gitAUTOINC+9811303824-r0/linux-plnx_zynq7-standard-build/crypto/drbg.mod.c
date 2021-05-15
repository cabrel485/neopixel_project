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
	{ 0xfe412fad, "crypto_unregister_rngs" },
	{ 0xb952a1d6, "crypto_register_rngs" },
	{ 0x4d61fbff, "crypto_alloc_rng" },
	{ 0x7c848517, "add_random_ready_callback" },
	{ 0x97255bdf, "strlen" },
	{ 0x71c90087, "memcmp" },
	{ 0x4205ad24, "cancel_work_sync" },
	{ 0x69d1c0f2, "del_random_ready_callback" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0xec1aa6ef, "memzero_explicit" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xb2d48a2e, "queue_work_on" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x7c32d0f0, "printk" },
	{ 0xf66968b2, "crypto_alloc_shash" },
	{ 0x9d669763, "memcpy" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x5f754e5a, "memset" },
	{ 0xd7757ac, "crypto_shash_setkey" },
	{ 0xc40c3755, "crypto_shash_update" },
	{ 0x6fe7702e, "crypto_shash_final" },
	{ 0x7a4497db, "kzfree" },
	{ 0x60c6068e, "crypto_destroy_tfm" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0xc271c3be, "mutex_lock" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

