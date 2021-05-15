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
	{ 0xc94f8f49, "kernel_write" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x92c38fc9, "usb_gstrings_attach" },
	{ 0xff178f6, "__aeabi_idivmod" },
	{ 0x3b917bbf, "complete_and_exit" },
	{ 0xbde5a800, "up_read" },
	{ 0x9cfdb985, "usb_free_all_descriptors" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0x6ecd35d, "dequeue_signal" },
	{ 0x349cba85, "strchr" },
	{ 0x887ec63d, "usb_ep_disable" },
	{ 0x5a9fff9e, "usb_ep_enable" },
	{ 0x97255bdf, "strlen" },
	{ 0x367f38d9, "usb_ep_queue" },
	{ 0x7ab88a45, "system_freezing_cnt" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x60822084, "usb_ep_set_wedge" },
	{ 0x2a3aa678, "_test_and_clear_bit" },
	{ 0xe61fea42, "config_item_put" },
	{ 0x18fd7fee, "file_path" },
	{ 0x67ea780, "mutex_unlock" },
	{ 0xd2f7cadf, "vfs_fsync" },
	{ 0x945d354d, "usb_ep_set_halt" },
	{ 0x3204e6a1, "usb_ep_alloc_request" },
	{ 0x91715312, "sprintf" },
	{ 0x366b1ad2, "usb_function_unregister" },
	{ 0x8c8a0eb2, "kthread_create_on_node" },
	{ 0xdfc7da96, "down_read" },
	{ 0x5bbe49f4, "__init_waitqueue_head" },
	{ 0xb561ac5b, "wait_for_completion" },
	{ 0xf87f3da8, "kernel_read" },
	{ 0x5a0294c1, "_dev_warn" },
	{ 0x5f754e5a, "memset" },
	{ 0x752d5f5b, "kstrtobool" },
	{ 0x5705e8b2, "device_register" },
	{ 0x2e0b7957, "usb_put_function_instance" },
	{ 0xf9019aa0, "kstrtou8" },
	{ 0x39a12ca7, "_raw_spin_unlock_irqrestore" },
	{ 0x24e9deea, "freezing_slow_path" },
	{ 0xe346f67a, "__mutex_init" },
	{ 0x9ec9fabb, "unregister_gadget_item" },
	{ 0x7c32d0f0, "printk" },
	{ 0x6b36956f, "usb_ep_autoconfig" },
	{ 0x59bda5f9, "_raw_spin_unlock_irq" },
	{ 0xc271c3be, "mutex_lock" },
	{ 0xa14338f9, "config_group_init_type_name" },
	{ 0xa2f26632, "usb_ep_clear_halt" },
	{ 0x5854c028, "up_write" },
	{ 0x7ed6139f, "_dev_err" },
	{ 0x415ad42b, "down_write" },
	{ 0x872f9bce, "fput" },
	{ 0xfe487975, "init_wait_entry" },
	{ 0x12f005d1, "usb_function_register" },
	{ 0x51018c9c, "usb_composite_setup_continue" },
	{ 0x6468ba35, "usb_ep_dequeue" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0xa7556f1d, "put_device" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x1000e51, "schedule" },
	{ 0x2da81bff, "_raw_spin_lock_irq" },
	{ 0x4482cdb, "__refrigerator" },
	{ 0x2beb3825, "config_ep_by_speed" },
	{ 0x5c373239, "wake_up_process" },
	{ 0xcd2b3b73, "usb_ep_free_request" },
	{ 0xcc5005fe, "msleep_interruptible" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x5f849a69, "_raw_spin_lock_irqsave" },
	{ 0x3dcf1ffa, "__wake_up" },
	{ 0x647af474, "prepare_to_wait_event" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x6df1aaf1, "kernel_sigaction" },
	{ 0x40ae250e, "send_sig_info" },
	{ 0x9e61bb05, "set_freezable" },
	{ 0xd548902f, "invalidate_mapping_pages" },
	{ 0x92670019, "usb_assign_descriptors" },
	{ 0x49970de8, "finish_wait" },
	{ 0x522199da, "usb_interface_id" },
	{ 0xa74a844, "device_unregister" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x676bbc0f, "_set_bit" },
	{ 0xb81960ca, "snprintf" },
	{ 0x99bb8806, "memmove" },
	{ 0xf5eb827c, "dev_set_name" },
	{ 0x5c49ec5, "usb_ep_fifo_flush" },
	{ 0x49ebacbd, "_clear_bit" },
	{ 0xfe12d25b, "__init_rwsem" },
	{ 0x23517e19, "filp_open" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=libcomposite";

