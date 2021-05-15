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
	{ 0x54bbbd62, "pskb_trim_rcsum_slow" },
	{ 0x2b5ab97d, "_raw_spin_lock_bh" },
	{ 0xa1c2e1d9, "skb_clone" },
	{ 0xce90062e, "refcount_inc_not_zero_checked" },
	{ 0xf8b9e3b8, "__pskb_pull_tail" },
	{ 0x3c3fce39, "__local_bh_enable_ip" },
	{ 0x9927baa2, "skb_push" },
	{ 0xca1c4b02, "dev_remove_pack" },
	{ 0xedc06d37, "refcount_dec_and_test_checked" },
	{ 0x6091797f, "synchronize_rcu" },
	{ 0x3a91daf0, "skb_pull" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x8f3625fe, "_raw_spin_unlock_bh" },
	{ 0xb82ae380, "kfree_skb" },
	{ 0x37a0cba, "kfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x1cc9b4f6, "dev_add_pack" },
	{ 0x81cda390, "consume_skb" },
	{ 0xe77f1e4e, "dev_queue_xmit" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

