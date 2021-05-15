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
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xf3da5b1a, "dma_release_from_dev_coherent" },
	{ 0x4ab82d5f, "mem_map" },
	{ 0x19608fbf, "arm_dma_ops" },
	{ 0x2ee26c1, "free_pages_exact" },
	{ 0xfffa3100, "sg_next" },
	{ 0x987c11c7, "__pv_phys_pfn_offset" },
	{ 0x1099f976, "dma_alloc_from_dev_coherent" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x5f754e5a, "memset" },
	{ 0xaec655c7, "alloc_pages_exact" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x822137e2, "arm_heavy_mb" },
	{ 0x37a0cba, "kfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

