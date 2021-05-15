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
	{ 0x609f1c7e, "synchronize_net" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x2b5ab97d, "_raw_spin_lock_bh" },
	{ 0xf8b9e3b8, "__pskb_pull_tail" },
	{ 0x7c32d0f0, "printk" },
	{ 0x71c90087, "memcmp" },
	{ 0x9927baa2, "skb_push" },
	{ 0xedc06d37, "refcount_dec_and_test_checked" },
	{ 0x2469810f, "__rcu_read_unlock" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x8f3625fe, "_raw_spin_unlock_bh" },
	{ 0xb82ae380, "kfree_skb" },
	{ 0x82b7f90f, "skb_pull_rcsum" },
	{ 0xe6545c6e, "llc_sap_open" },
	{ 0x37a0cba, "kfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x652bfbc7, "llc_sap_close" },
	{ 0x8d522714, "__rcu_read_lock" },
	{ 0x71c1cecc, "llc_build_and_send_ui_pkt" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=llc";

