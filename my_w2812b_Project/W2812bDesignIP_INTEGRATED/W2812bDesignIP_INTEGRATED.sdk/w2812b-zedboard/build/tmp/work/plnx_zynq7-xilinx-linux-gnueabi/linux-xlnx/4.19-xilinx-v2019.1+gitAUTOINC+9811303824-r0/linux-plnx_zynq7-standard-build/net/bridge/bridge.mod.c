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
	{ 0xfbaf3e66, "kobject_put" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xb3454a94, "kmem_cache_destroy" },
	{ 0x63b87833, "neigh_lookup" },
	{ 0xf99fc839, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xbc0761f5, "stp_proto_unregister" },
	{ 0xffe34ebe, "rht_bucket_nested" },
	{ 0x897b843b, "sysfs_remove_bin_file" },
	{ 0x12585e08, "_raw_spin_unlock" },
	{ 0x349cba85, "strchr" },
	{ 0x7b52e38, "rtnl_unregister" },
	{ 0x91eb9b4, "round_jiffies" },
	{ 0x327c5bc4, "netdev_notice" },
	{ 0x2b68bd2f, "del_timer" },
	{ 0x97255bdf, "strlen" },
	{ 0x380f737a, "dev_get_flags" },
	{ 0x60a13e90, "rcu_barrier" },
	{ 0x6c0b4972, "ipv6_chk_addr" },
	{ 0xf9e158cf, "dev_disable_lro" },
	{ 0xfe90c4a6, "_find_first_zero_bit_le" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0x701819d1, "dev_uc_add" },
	{ 0xad1fb62c, "netdev_rx_handler_register" },
	{ 0xc7a4fbed, "rtnl_lock" },
	{ 0x3d09dbed, "arp_tbl" },
	{ 0xc39c415e, "kobject_uevent" },
	{ 0x8ee3cba8, "netif_carrier_on" },
	{ 0x2b5ab97d, "_raw_spin_lock_bh" },
	{ 0xa1c2e1d9, "skb_clone" },
	{ 0x20000329, "simple_strtoul" },
	{ 0xa37f378c, "skb_copy" },
	{ 0xffeedf6a, "delayed_work_timer_fn" },
	{ 0x2124474, "ip_send_check" },
	{ 0x2f2dc8d8, "__vlan_find_dev_deep_rcu" },
	{ 0xd2da1048, "register_netdevice_notifier" },
	{ 0x6486d4cc, "netif_carrier_off" },
	{ 0xa667d5c5, "rtnl_notify" },
	{ 0xe6c63660, "netdev_master_upper_dev_get" },
	{ 0x5c5f92c9, "dev_set_allmulti" },
	{ 0x6e45d69f, "is_skb_forwardable" },
	{ 0xaa914a57, "call_netdevice_notifiers" },
	{ 0xc6f46339, "init_timer_key" },
	{ 0x28cc25db, "arm_copy_from_user" },
	{ 0x29d9f26e, "cancel_delayed_work_sync" },
	{ 0x50b5aefd, "kobject_del" },
	{ 0x6993d1a7, "neigh_destroy" },
	{ 0xf499fdb2, "rcu_barrier_bh" },
	{ 0x28aa6a67, "call_rcu" },
	{ 0x91715312, "sprintf" },
	{ 0xc3d579c5, "rhashtable_insert_slow" },
	{ 0xe20c6d41, "sysfs_remove_group" },
	{ 0x9449fa2, "netdev_walk_all_upper_dev_rcu" },
	{ 0x526c3a6c, "jiffies" },
	{ 0xc9ec4e21, "free_percpu" },
	{ 0x9d0d6206, "unregister_netdevice_notifier" },
	{ 0xf4fa543b, "arm_copy_to_user" },
	{ 0x5ee1e1bc, "skb_trim" },
	{ 0xf28178a1, "kobject_create_and_add" },
	{ 0x131db64a, "system_long_wq" },
	{ 0xcf3fac84, "cpumask_next" },
	{ 0xf45a88bd, "netdev_master_upper_dev_link" },
	{ 0xa9fb6b48, "rhashtable_destroy" },
	{ 0x364f3607, "__netdev_alloc_skb" },
	{ 0x56ab8583, "ip_mc_check_igmp" },
	{ 0xde24f41c, "netif_rx" },
	{ 0xf8b9e3b8, "__pskb_pull_tail" },
	{ 0x17de3d5, "nr_cpu_ids" },
	{ 0xf1db1704, "nla_memcpy" },
	{ 0x1dc4fef7, "rht_bucket_nested_insert" },
	{ 0x97934ecf, "del_timer_sync" },
	{ 0x5f754e5a, "memset" },
	{ 0x84f5fc63, "netif_rx_ni" },
	{ 0x1e96f43d, "__cpu_possible_mask" },
	{ 0xe773aa70, "unregister_pernet_subsys" },
	{ 0x9fdecc31, "unregister_netdevice_many" },
	{ 0xb92ca86, "sysfs_rename_link_ns" },
	{ 0x871c165d, "rtnl_register_module" },
	{ 0xc35c9eb4, "stp_proto_register" },
	{ 0x37befc70, "jiffies_to_msecs" },
	{ 0xff794143, "__ethtool_get_link_ksettings" },
	{ 0x31f41b86, "arp_create" },
	{ 0x6d294e43, "clock_t_to_jiffies" },
	{ 0x7c32d0f0, "printk" },
	{ 0xaf33b7e8, "ethtool_op_get_link" },
	{ 0x3c3fce39, "__local_bh_enable_ip" },
	{ 0x1731d679, "sysfs_create_group" },
	{ 0x71c90087, "memcmp" },
	{ 0x7403627d, "inet_select_addr" },
	{ 0xbeec26fb, "ns_capable" },
	{ 0xceda11e3, "__skb_warn_lro_forwarding" },
	{ 0xca90d71b, "kobject_init_and_add" },
	{ 0xea4a09cb, "mod_delayed_work_on" },
	{ 0xcd279169, "nla_find" },
	{ 0x9a6e79db, "free_netdev" },
	{ 0x8c24a43d, "llc_mac_hdr_init" },
	{ 0x1fcde49d, "register_netdev" },
	{ 0x3913b193, "nla_put" },
	{ 0x54ff23bd, "netif_receive_skb" },
	{ 0xdaf6c422, "netdev_upper_dev_unlink" },
	{ 0x84b183ae, "strncmp" },
	{ 0x7333b976, "ndo_dflt_fdb_dump" },
	{ 0x73e20c1c, "strlcpy" },
	{ 0xc3bf72e9, "kmem_cache_free" },
	{ 0x9927baa2, "skb_push" },
	{ 0x652032cb, "mac_pton" },
	{ 0xb84ee546, "arp_send" },
	{ 0xf4f14de6, "rtnl_trylock" },
	{ 0xa7eedcc4, "call_usermodehelper" },
	{ 0xc38c83b8, "mod_timer" },
	{ 0xd244307d, "rtnl_af_unregister" },
	{ 0xedc06d37, "refcount_dec_and_test_checked" },
	{ 0x2469810f, "__rcu_read_unlock" },
	{ 0x5ca3a182, "sysfs_remove_link" },
	{ 0x3a91daf0, "skb_pull" },
	{ 0x166bfae2, "inet_confirm_addr" },
	{ 0x2a5bead1, "ipv6_stub" },
	{ 0x813e78c2, "init_net" },
	{ 0x7e3191f6, "try_to_del_timer_sync" },
	{ 0x6d2e2c74, "rtnl_link_unregister" },
	{ 0x274bcd9d, "__dev_get_by_index" },
	{ 0x496325b, "nla_reserve_64bit" },
	{ 0x51ef33b8, "kstrndup" },
	{ 0x6c209eab, "__alloc_percpu_gfp" },
	{ 0x9ad384a9, "ipv6_dev_get_saddr" },
	{ 0xd8655fe6, "sysfs_create_link" },
	{ 0x71b83deb, "rtnl_set_sk_err" },
	{ 0x92f552c6, "kmem_cache_alloc" },
	{ 0x4fb2348e, "__alloc_skb" },
	{ 0xac5272c2, "rtnl_af_register" },
	{ 0x8f3625fe, "_raw_spin_unlock_bh" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x43dae11a, "nla_parse" },
	{ 0xecd5de76, "netdev_rx_handler_unregister" },
	{ 0xb82ae380, "kfree_skb" },
	{ 0x8611751e, "nla_put_nohdr" },
	{ 0xe574f2aa, "passthru_features_check" },
	{ 0x7376976d, "alloc_netdev_mqs" },
	{ 0x8345b6ac, "arp_xmit" },
	{ 0x842ba70, "brioctl_set" },
	{ 0x807260f0, "register_pernet_subsys" },
	{ 0x31a4ce28, "netdev_err" },
	{ 0x1f747cb, "ether_setup" },
	{ 0x62a2a922, "__dev_get_by_name" },
	{ 0xc2ecaf91, "netdev_state_change" },
	{ 0xdb9ca3c5, "_raw_spin_lock" },
	{ 0x341dbfa3, "__per_cpu_offset" },
	{ 0xf4323eeb, "kmem_cache_create" },
	{ 0x7e927f92, "call_rcu_bh" },
	{ 0xf5f0195c, "unregister_netdevice_queue" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x50f3d972, "rhashtable_init" },
	{ 0x44da5d0f, "__csum_ipv6_magic" },
	{ 0x117f3578, "dev_set_promiscuity" },
	{ 0x37a0cba, "kfree" },
	{ 0x30660727, "dev_get_iflink" },
	{ 0x9d669763, "memcpy" },
	{ 0xb87a7e75, "sysfs_create_bin_file" },
	{ 0xd177b40b, "rtnl_link_register" },
	{ 0x7dbbdab7, "dev_uc_del" },
	{ 0x2e0bcc77, "nla_put_64bit" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0x7d0db45c, "jiffies_to_clock_t" },
	{ 0x676bbc0f, "_set_bit" },
	{ 0xb2d48a2e, "queue_work_on" },
	{ 0xe113bbbc, "csum_partial" },
	{ 0x81cda390, "consume_skb" },
	{ 0xf2ab21d, "netdev_update_features" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0x7f02188f, "__msecs_to_jiffies" },
	{ 0x118138e7, "sysfs_create_file_ns" },
	{ 0xe77f1e4e, "dev_queue_xmit" },
	{ 0x8d522714, "__rcu_read_lock" },
	{ 0x49ebacbd, "_clear_bit" },
	{ 0xb8edc009, "skb_put" },
	{ 0xaf65a793, "ipv6_mc_check_mld" },
	{ 0x7a3362ac, "__nlmsg_put" },
	{ 0xd546ca6b, "skb_copy_bits" },
	{ 0x6e720ff2, "rtnl_unlock" },
	{ 0x69668826, "netdev_increment_features" },
	{ 0xf0da7239, "dev_set_mtu" },
	{ 0xddeb3c0a, "netdev_lower_get_next" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=stp,llc";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
