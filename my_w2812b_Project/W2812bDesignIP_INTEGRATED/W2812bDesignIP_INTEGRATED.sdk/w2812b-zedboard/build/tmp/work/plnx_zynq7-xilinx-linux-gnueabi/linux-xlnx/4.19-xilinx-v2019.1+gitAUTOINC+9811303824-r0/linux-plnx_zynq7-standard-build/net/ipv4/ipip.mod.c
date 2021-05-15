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
	{ 0x68c0210b, "ip_tunnel_get_link_net" },
	{ 0xfb13e09a, "ip_tunnel_dellink" },
	{ 0xe1011c2d, "ip_tunnel_get_iflink" },
	{ 0x8adbc1b5, "ip_tunnel_get_stats64" },
	{ 0x98fe9a32, "ip_tunnel_change_mtu" },
	{ 0x480e91ea, "ip_tunnel_uninit" },
	{ 0x6d2e2c74, "rtnl_link_unregister" },
	{ 0xfb6c33dc, "xfrm4_tunnel_deregister" },
	{ 0xd177b40b, "rtnl_link_register" },
	{ 0x6aabc87d, "unregister_pernet_device" },
	{ 0xe866319b, "xfrm4_tunnel_register" },
	{ 0xdaa02fd, "register_pernet_device" },
	{ 0x7c32d0f0, "printk" },
	{ 0x3b77cc1d, "ip_tunnel_rcv" },
	{ 0x7d18245e, "metadata_dst_alloc" },
	{ 0xc156e784, "__xfrm_policy_check" },
	{ 0x5c10e64e, "__iptunnel_pull_header" },
	{ 0xb74659a5, "ip_tunnel_init_net" },
	{ 0x6627de4d, "ip_tunnel_delete_nets" },
	{ 0x526c3a6c, "jiffies" },
	{ 0x813e78c2, "init_net" },
	{ 0xf0b5b232, "ipv4_redirect" },
	{ 0x3b0ab740, "ipv4_update_pmtu" },
	{ 0xb55f17a6, "ip_tunnel_lookup" },
	{ 0x2469810f, "__rcu_read_unlock" },
	{ 0x8d522714, "__rcu_read_lock" },
	{ 0x707a4348, "ip_tunnel_init" },
	{ 0xb82ae380, "kfree_skb" },
	{ 0x18b55f7a, "ip_tunnel_xmit" },
	{ 0x9f776e89, "ip_md_tunnel_xmit" },
	{ 0xaa6e5b05, "iptunnel_handle_offloads" },
	{ 0xf4fa543b, "arm_copy_to_user" },
	{ 0xf197a0a5, "ip_tunnel_ioctl" },
	{ 0x28cc25db, "arm_copy_from_user" },
	{ 0x54078b81, "ip_tunnel_setup" },
	{ 0x1dc3ad42, "ip_tunnel_newlink" },
	{ 0xee3a58a3, "ip_tunnel_changelink" },
	{ 0x3a277fd9, "ip_tunnel_encap_setup" },
	{ 0x5f754e5a, "memset" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0x3913b193, "nla_put" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

