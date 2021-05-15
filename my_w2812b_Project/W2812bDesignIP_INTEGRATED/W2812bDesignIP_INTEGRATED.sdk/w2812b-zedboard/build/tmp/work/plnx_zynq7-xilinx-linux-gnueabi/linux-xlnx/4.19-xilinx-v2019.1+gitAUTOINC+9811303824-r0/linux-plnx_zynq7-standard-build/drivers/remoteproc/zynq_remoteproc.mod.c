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
	{ 0xf50ee3e8, "param_ops_bool" },
	{ 0x8a8062bf, "platform_driver_unregister" },
	{ 0x38e4b428, "__platform_driver_register" },
	{ 0x7ed61528, "zynq_cpun_start" },
	{ 0x7cb1ae69, "cpu_down" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x19608fbf, "arm_dma_ops" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xcd638618, "gen_pool_dma_alloc" },
	{ 0xcad0ba56, "gen_pool_size" },
	{ 0x49f4d3a8, "rproc_add" },
	{ 0x4025dc4f, "devm_kmalloc" },
	{ 0x7917409f, "of_gen_pool_get" },
	{ 0x2215d4f9, "set_ipi_handler" },
	{ 0x6016f7c1, "of_property_read_variable_u32_array" },
	{ 0xd6b8e852, "request_threaded_irq" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x7ae7907a, "platform_get_irq" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x8e477e5b, "rproc_alloc" },
	{ 0xc4bd16b0, "rproc_vq_interrupt" },
	{ 0x56d697ce, "cpu_up" },
	{ 0xe75625fb, "cpu_bit_bitmap" },
	{ 0xe6c1542e, "gic_raise_softirq" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xb2d48a2e, "queue_work_on" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x28fdc511, "gen_pool_free" },
	{ 0x5557947f, "rproc_free" },
	{ 0x99bd722b, "clear_ipi_handler" },
	{ 0xacd93123, "rproc_del" },
	{ 0x37a0cba, "kfree" },
	{ 0xdafd2cd3, "gic_set_cpu" },
	{ 0xc1514a3b, "free_irq" },
	{ 0xc234bbcb, "_dev_info" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=remoteproc";

MODULE_ALIAS("of:N*T*Cxlnx,zynq_remoteproc");
MODULE_ALIAS("of:N*T*Cxlnx,zynq_remoteprocC*");
