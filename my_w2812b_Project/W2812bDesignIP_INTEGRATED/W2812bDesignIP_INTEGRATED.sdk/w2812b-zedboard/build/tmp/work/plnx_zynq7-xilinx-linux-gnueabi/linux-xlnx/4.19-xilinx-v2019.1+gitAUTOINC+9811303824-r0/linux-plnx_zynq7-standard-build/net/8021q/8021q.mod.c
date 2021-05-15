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
	{ 0xd4b6ec3e, "register_netdevice" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0xfa963798, "gro_find_receive_by_type" },
	{ 0xe2e59fcf, "dev_change_flags" },
	{ 0xf62bdb2f, "vlan_filter_push_vids" },
	{ 0xf195649c, "dev_mc_unsync" },
	{ 0x3603a55d, "vlan_filter_drop_vids" },
	{ 0x380f737a, "dev_get_flags" },
	{ 0x60a13e90, "rcu_barrier" },
	{ 0x78fc286d, "dev_get_nest_level" },
	{ 0x544dd732, "proc_create_single_data" },
	{ 0xeccc7a44, "vlan_dev_vlan_id" },
	{ 0x701819d1, "dev_uc_add" },
	{ 0x9d104186, "seq_puts" },
	{ 0xc7a4fbed, "rtnl_lock" },
	{ 0xeebd6d6, "vlan_uses_dev" },
	{ 0x8ee3cba8, "netif_carrier_on" },
	{ 0x23feaa0f, "seq_printf" },
	{ 0xd2da1048, "register_netdevice_notifier" },
	{ 0x6486d4cc, "netif_carrier_off" },
	{ 0x40a82ad5, "remove_proc_entry" },
	{ 0x5c5f92c9, "dev_set_allmulti" },
	{ 0x11808e23, "vlan_vid_del" },
	{ 0xaa914a57, "call_netdevice_notifiers" },
	{ 0x9be5d63, "linkwatch_fire_event" },
	{ 0x68a8aa62, "dev_add_offload" },
	{ 0x28cc25db, "arm_copy_from_user" },
	{ 0x163b3ad6, "vlan_vid_add" },
	{ 0xc9ec4e21, "free_percpu" },
	{ 0x9d0d6206, "unregister_netdevice_notifier" },
	{ 0xf4fa543b, "arm_copy_to_user" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xcf3fac84, "cpumask_next" },
	{ 0x98ad29e5, "proc_remove" },
	{ 0x967f6aa0, "vlan_ioctl_set" },
	{ 0xf8b9e3b8, "__pskb_pull_tail" },
	{ 0x17de3d5, "nr_cpu_ids" },
	{ 0x1e96f43d, "__cpu_possible_mask" },
	{ 0xe773aa70, "unregister_pernet_subsys" },
	{ 0x9fdecc31, "unregister_netdevice_many" },
	{ 0xff794143, "__ethtool_get_link_ksettings" },
	{ 0x7c32d0f0, "printk" },
	{ 0xaf33b7e8, "ethtool_op_get_link" },
	{ 0xbeec26fb, "ns_capable" },
	{ 0x9a6e79db, "free_netdev" },
	{ 0x328a05f1, "strncpy" },
	{ 0x3913b193, "nla_put" },
	{ 0xdaf6c422, "netdev_upper_dev_unlink" },
	{ 0x73e20c1c, "strlcpy" },
	{ 0xee300c9b, "dev_remove_offload" },
	{ 0x9927baa2, "skb_push" },
	{ 0x15ca7b87, "proc_mkdir_data" },
	{ 0xf32bec2f, "netif_stacked_transfer_operstate" },
	{ 0x2469810f, "__rcu_read_unlock" },
	{ 0xac6fa367, "gro_find_complete_by_type" },
	{ 0x813e78c2, "init_net" },
	{ 0x6d2e2c74, "rtnl_link_unregister" },
	{ 0x274bcd9d, "__dev_get_by_index" },
	{ 0x6c209eab, "__alloc_percpu_gfp" },
	{ 0xe2e018f8, "nla_validate" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x8b9fa1ac, "eth_header_parse" },
	{ 0x7376976d, "alloc_netdev_mqs" },
	{ 0x807260f0, "register_pernet_subsys" },
	{ 0x4b073c76, "netdev_upper_dev_link" },
	{ 0xbd68fbc0, "proc_create_net_data" },
	{ 0x1f747cb, "ether_setup" },
	{ 0xf70d8f47, "dev_uc_unsync" },
	{ 0x62a2a922, "__dev_get_by_name" },
	{ 0x341dbfa3, "__per_cpu_offset" },
	{ 0xf5f0195c, "unregister_netdevice_queue" },
	{ 0x3b595838, "netdev_warn" },
	{ 0x6a1afddc, "eth_validate_addr" },
	{ 0x117f3578, "dev_set_promiscuity" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x58b4645c, "dev_close_many" },
	{ 0xd177b40b, "rtnl_link_register" },
	{ 0x7dbbdab7, "dev_uc_del" },
	{ 0x534737e3, "dev_uc_sync" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xb81960ca, "snprintf" },
	{ 0xe113bbbc, "csum_partial" },
	{ 0xf2ab21d, "netdev_update_features" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0xe77f1e4e, "dev_queue_xmit" },
	{ 0x8d522714, "__rcu_read_lock" },
	{ 0xb98ef39e, "dev_mc_sync" },
	{ 0x6e720ff2, "rtnl_unlock" },
	{ 0xe653e2b9, "dev_get_stats" },
	{ 0xf0da7239, "dev_set_mtu" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
