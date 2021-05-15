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
	{ 0xf9a482f9, "msleep" },
	{ 0xa8863035, "crypto_dequeue_request" },
	{ 0x55b74ad0, "kthread_destroy_worker" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x5f754e5a, "memset" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0x499043d3, "crypto_init_queue" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x585459e6, "crypto_enqueue_request" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0x35ae9d82, "kthread_queue_work" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0x13796f1d, "sched_setscheduler" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xb81960ca, "snprintf" },
	{ 0x4025dc4f, "devm_kmalloc" },
	{ 0x5c3e0ee5, "kthread_create_worker" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

