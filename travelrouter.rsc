# mar/01/2020 00:16:52 by RouterOS 6.46.4
# software id = 
#
# model = RouterBOARD 952Ui-5ac2nD
# serial number = 

/interface bridge add admin-mac=CC:2D:E0:0E:93:B4 auto-mac=no comment=default name=bridge_default protocol-mode=none
/interface bridge add comment="security L2TP" name=bridge_security_l2tp protocol-mode=none
/interface bridge add comment="security OVPN" name=bridge_security_ovpn protocol-mode=none
/interface bridge add comment=visitors name=bridge_visitors protocol-mode=none


/interface ethernet set [ find default-name=ether1 ] name=ether1-WAN
/interface ethernet set [ find default-name=ether2 ] name=ether2-master


/interface list add exclude=dynamic name=discover
/interface list add name=mactel
/interface list add name=mac-winbox
/interface list add name=public


/interface wireless security-profiles set [ find default=yes ] authentication-types=wpa-psk,wpa2-psk eap-methods="" mode=static-keys-required supplicant-identity=Mikrotik wpa-pre-shared-key=DoNotUseThisSecurityProfile wpa2-pre-shared-key=DoNotUseThisSecurityProfile
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" mode=dynamic-keys name=WAN supplicant-identity="" wpa-pre-shared-key=PutYourPasswordHere wpa2-pre-shared-key=PutYourPasswordHere
/interface wireless security-profiles add name=none supplicant-identity=Mikrotik
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=visitor supplicant-identity="" wpa-pre-shared-key=YourPasswordHere wpa2-pre-shared-key=YourPasswordHere
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=PHY-5G supplicant-identity="" wpa-pre-shared-key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" wpa2-pre-shared-key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=PHY-2G supplicant-identity="" wpa-pre-shared-key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" wpa2-pre-shared-key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" mode=dynamic-keys name=local@travelrouter supplicant-identity="" wpa-pre-shared-key=PutYourPasswordHere wpa2-pre-shared-key=PutYourPasswordHere
/interface wireless security-profiles add authentication-types=wpa-psk,wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=mobilehotspot supplicant-identity="" wpa-pre-shared-key=PutYourPasswordHere wpa2-pre-shared-key=PutYourPasswordHere
/interface wireless set [ find default-name=wlan1 ] band=2ghz-b/g/n channel-width=20/40mhz-Ce country=no_country_set disabled=no distance=indoors frequency=auto frequency-mode=superchannel hw-retries=15 keepalive-frames=disabled mode=station-pseudobridge multicast-buffering=disabled name=wlan1-2GHz-WAN security-profile=WAN ssid="" station-roaming=disabled wds-cost-range=0 wds-default-cost=0 wireless-protocol=802.11 wps-mode=disabled
/interface wireless set [ find default-name=wlan2 ] band=5ghz-onlyn bridge-mode=disabled channel-width=20/40mhz-Ce country=no_country_set disabled=no distance=indoors frequency=5300 hide-ssid=yes hw-retries=15 keepalive-frames=disabled mode=ap-bridge multicast-buffering=disabled name=wlan2-5GHz-WAN security-profile=PHY-5G ssid=N0NE5 station-roaming=disabled wds-cost-range=0 wds-default-cost=0 wireless-protocol=802.11 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:B9 master-interface=wlan1-2GHz-WAN multicast-buffering=disabled name=wlan3-2GHz-LAN security-profile=local@travelrouter ssid=HET-2GHz wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:BA master-interface=wlan1-2GHz-WAN multicast-buffering=disabled name=wlan4-2GHz-LAN-S-L security-profile=local@travelrouter ssid=HET-2GHz-S-L wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:B8 master-interface=wlan2-5GHz-WAN multicast-buffering=disabled name=wlan5-5GHz-LAN security-profile=local@travelrouter ssid=HET-5GHz wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:BB master-interface=wlan2-5GHz-WAN multicast-buffering=disabled name=wlan6-5GHz-LAN-S-L security-profile=local@travelrouter ssid=HET-5GHz-S-L wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=02:00:00:AA:00:01 master-interface=wlan1-2GHz-WAN multicast-buffering=disabled name=wlan7-2GHz-LAN-S-O security-profile=local@travelrouter ssid=HET-2GHz-S-O wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:BC master-interface=wlan2-5GHz-WAN multicast-buffering=disabled name=wlan8-5GHz-LAN-S-O security-profile=local@travelrouter ssid=HET-5GHz-S-O wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=02:00:00:AA:00:02 master-interface=wlan1-2GHz-WAN multicast-buffering=disabled name=wlan9-2GHz-LAN-VIS security-profile=visitor ssid=mikrotik wds-cost-range=0 wds-default-cost=0 wps-mode=disabled
/interface wireless add disabled=no keepalive-frames=disabled mac-address=CE:2D:E0:0E:93:BD master-interface=wlan2-5GHz-WAN multicast-buffering=disabled name=wlan10-5GHz-LAN-VIS security-profile=visitor ssid=mikrotik wds-cost-range=0 wds-default-cost=0 wps-mode=disabled


/ip ipsec peer add name=peer1 passive=yes
/ip ipsec profile set [ find default=yes ] dh-group=modp1024 enc-algorithm=aes-256
/ip ipsec proposal add name=L2TP pfs-group=none


/ip pool add name=pool_default ranges=192.168.87.10-192.168.87.254
/ip pool add name=pool_security_l2tp ranges=192.168.86.10-192.168.86.254
/ip pool add name=pool_security_ovpn ranges=192.168.85.10-192.168.85.254
/ip pool add name=pool_visitors ranges=192.168.84.10-192.168.84.254
/ip pool add name=pool_home_emulation ranges=192.168.68.2-192.168.69.100


/ip dhcp-server add address-pool=pool_default disabled=no interface=bridge_default name=dhcp_default
/ip dhcp-server add address-pool=pool_security_l2tp disabled=no interface=bridge_security_l2tp name=dhcp_security_l2tp
/ip dhcp-server add address-pool=pool_security_ovpn disabled=no interface=bridge_security_ovpn name=dhcp_security_ovpn
/ip dhcp-server add address-pool=pool_visitors disabled=no interface=bridge_visitors name=dhcp_visitors


/ppp profile add change-tcp-mss=yes name=vpn-l2tp only-one=no use-compression=no use-encryption=required use-mpls=no
/ppp profile add change-tcp-mss=yes name=vpn-ovpn only-one=no use-compression=no use-encryption=required use-mpls=no


/interface l2tp-client add allow=mschap2 connect-to=remote.domain.tld disabled=no ipsec-secret=PutYourIPSecPasswordHere keepalive-timeout=disabled name=l2tp-to-remote password=PutYourPasswordHere profile=vpn-l2tp use-ipsec=yes user=PutYourUsernameHere


/interface ovpn-client add certificate=client-certificate cipher=aes256 connect-to=remote.domain.tld mac-address=02:3D:3B:84:EA:59 name=ovpn-to-remote password=PutYourPasswordHere port=993 profile=vpn-ovpn user=PutYourUsernameHere


/interface bridge port add bridge=bridge_default interface=ether2-master
/interface bridge port add bridge=bridge_default interface=ether3
/interface bridge port add bridge=bridge_default interface=ether4
/interface bridge port add bridge=bridge_default interface=ether5
/interface bridge port add bridge=bridge_default interface=wlan3-2GHz-LAN
/interface bridge port add bridge=bridge_security_l2tp interface=wlan4-2GHz-LAN-S-L
/interface bridge port add bridge=bridge_default interface=wlan5-5GHz-LAN
/interface bridge port add bridge=bridge_security_l2tp interface=wlan6-5GHz-LAN-S-L
/interface bridge port add bridge=bridge_security_ovpn interface=wlan7-2GHz-LAN-S-O
/interface bridge port add bridge=bridge_security_ovpn interface=wlan8-5GHz-LAN-S-O
/interface bridge port add bridge=bridge_visitors interface=wlan9-2GHz-LAN-VIS
/interface bridge port add bridge=bridge_visitors interface=wlan10-5GHz-LAN-VIS


/ip neighbor discovery-settings set discover-interface-list=discover


/ip settings set tcp-syncookies=yes


/interface l2tp-server server set allow-fast-path=yes ipsec-secret=PutYourIPSecPasswordHere


/interface list member add interface=ether2-master list=discover
/interface list member add interface=ether3 list=discover
/interface list member add interface=ether4 list=discover
/interface list member add interface=ether5 list=discover
/interface list member add interface=bridge_default list=discover
/interface list member add interface=wlan3-2GHz-LAN list=discover
/interface list member add interface=bridge_default list=mactel
/interface list member add interface=bridge_default list=mac-winbox
/interface list member add interface=ether2-master list=mac-winbox
/interface list member add interface=ether2-master list=mactel
/interface list member add interface=ether3 list=mac-winbox
/interface list member add interface=ether3 list=mactel
/interface list member add interface=ether4 list=mac-winbox
/interface list member add interface=ether4 list=mactel
/interface list member add interface=ether5 list=mac-winbox
/interface list member add interface=ether5 list=mactel
/interface list member add interface=wlan3-2GHz-LAN list=mac-winbox
/interface list member add interface=wlan3-2GHz-LAN list=mactel
/interface list member add interface=wlan4-2GHz-LAN-S-L list=discover
/interface list member add interface=wlan5-5GHz-LAN list=discover
/interface list member add interface=wlan4-2GHz-LAN-S-L list=mac-winbox
/interface list member add interface=wlan4-2GHz-LAN-S-L list=mactel
/interface list member add interface=wlan5-5GHz-LAN list=mactel
/interface list member add interface=wlan5-5GHz-LAN list=mac-winbox
/interface list member add interface=wlan1-2GHz-WAN list=public
/interface list member add interface=wlan2-5GHz-WAN list=public
/interface list member add interface=wlan7-2GHz-LAN-S-O list=mac-winbox
/interface list member add interface=wlan7-2GHz-LAN-S-O list=discover
/interface list member add interface=wlan7-2GHz-LAN-S-O list=mactel
/interface list member add interface=wlan6-5GHz-LAN-S-L list=discover
/interface list member add interface=wlan6-5GHz-LAN-S-L list=mac-winbox
/interface list member add interface=wlan6-5GHz-LAN-S-L list=mactel
/interface list member add interface=wlan8-5GHz-LAN-S-O list=discover
/interface list member add interface=wlan8-5GHz-LAN-S-O list=mac-winbox
/interface list member add interface=wlan8-5GHz-LAN-S-O list=mactel
/interface list member add interface=ether1-WAN list=public


/interface wireless connect-list add comment="defconf: mobile hostspot" interface=wlan1-2GHz-WAN security-profile=mobilehotspot ssid=ESSID wireless-protocol=802.11


/ip address add address=192.168.88.1/24 interface=bridge_default network=192.168.88.0
/ip address add address=192.168.86.1/24 comment="security L2TP" interface=bridge_security_l2tp network=192.168.86.0
/ip address add address=192.168.85.1/24 comment="security OVPN" interface=bridge_security_ovpn network=192.168.85.0
/ip address add address=192.168.84.1/24 comment=visitors interface=bridge_visitors network=192.168.84.0
/ip address add address=192.168.87.1/24 comment=default interface=bridge_default network=192.168.87.0


/ip dhcp-client add comment=defconf disabled=no interface=ether1-WAN
/ip dhcp-client add disabled=no interface=wlan1-2GHz-WAN
/ip dhcp-client add disabled=no interface=wlan2-5GHz-WAN


/ip dhcp-server network add address=192.168.84.0/24 comment=visitors dns-server=192.168.84.1 gateway=192.168.84.1 ntp-server=147.156.7.18,213.251.52.234,5.56.160.3,185.242.56.3
/ip dhcp-server network add address=192.168.85.0/24 comment="security OVPN" dns-server=192.168.85.1 gateway=192.168.85.1 ntp-server=147.156.7.18,213.251.52.234,5.56.160.3,185.242.56.3
/ip dhcp-server network add address=192.168.86.0/24 comment="security L2TP" dns-server=192.168.86.1 gateway=192.168.86.1 ntp-server=147.156.7.18,213.251.52.234,5.56.160.3,185.242.56.3
/ip dhcp-server network add address=192.168.87.0/24 comment=default dns-server=192.168.87.1 gateway=192.168.87.1 ntp-server=147.156.7.18,213.251.52.234,5.56.160.3,185.242.56.3


/ip dns set allow-remote-requests=yes max-udp-packet-size=512
/ip dns static add address=192.168.88.1 name=router
/ip dns static add address=192.168.87.1 name=router



/ip firewall address-list add address=192.168.87.0/24 list=net_default
/ip firewall address-list add address=192.168.86.0/24 list=net_security_l2tp
/ip firewall address-list add address=192.168.85.0/24 list=net_security_ovpn
/ip firewall address-list add address=192.168.84.0/24 list=net_visitors
/ip firewall address-list add address=192.168.84.0/22 list=net_all
/ip firewall address-list add address=192.168.88.0/24 list=net_failsafe


/ip firewall filter add action=fasttrack-connection chain=forward comment="defconf: fasttrack" connection-state=established,related
/ip firewall filter add action=accept chain=forward comment="debug rules: permit any any" disabled=yes
/ip firewall filter add action=accept chain=input disabled=yes
/ip firewall filter add action=accept chain=output disabled=yes
/ip firewall filter add action=accept chain=input comment="defconf: accept established" connection-state=established
/ip firewall filter add action=accept chain=forward connection-state=established
/ip firewall filter add action=accept chain=input comment="defconf: accept related" connection-state=related
/ip firewall filter add action=accept chain=forward connection-state=related
/ip firewall filter add action=accept chain=input comment="defconf: accept ICMP" in-interface=!wlan1-2GHz-WAN protocol=icmp
/ip firewall filter add action=accept chain=input in-interface=!wlan2-5GHz-WAN protocol=icmp
/ip firewall filter add action=accept chain=input in-interface=!ether1-WAN protocol=icmp
/ip firewall filter add action=accept chain=input comment="defconf: accept DHCP/BootP on external interfaces" dst-port=68 in-interface=wlan1-2GHz-WAN protocol=udp
/ip firewall filter add action=accept chain=input dst-port=68 in-interface=wlan2-5GHz-WAN protocol=udp
/ip firewall filter add action=accept chain=input dst-port=68 in-interface=ether1-WAN protocol=udp
/ip firewall filter add action=accept chain=input comment="defconf: accept incoming dns request from lan devices" dst-port=53 in-interface-list=!public protocol=udp
/ip firewall filter add action=accept chain=input dst-port=53 in-interface-list=!public protocol=tcp
/ip firewall filter add action=accept chain=input comment="defconf: management services" dst-port=22,443,8291 in-interface-list=!public protocol=tcp
/ip firewall filter add action=drop chain=input comment="defconf: drop all from WAN" in-interface=wlan1-2GHz-WAN
/ip firewall filter add action=drop chain=input in-interface=wlan2-5GHz-WAN
/ip firewall filter add action=drop chain=input in-interface=ether1-WAN
/ip firewall filter add action=passthrough chain=input comment="defconf: clean-up input" disabled=yes log=yes log-prefix="[ CLEANUP INPUT ]"
/ip firewall filter add action=drop chain=input
/ip firewall filter add action=passthrough chain=forward comment="defconf: drop invalid connections" connection-state=invalid disabled=yes log=yes log-prefix="[ INVALID ]"
/ip firewall filter add action=drop chain=forward connection-state=invalid
/ip firewall filter add action=accept chain=forward comment="defconf: traffic inside VPN are always approved" connection-state="" out-interface=l2tp-to-remote
/ip firewall filter add action=accept chain=forward connection-state="" out-interface=ovpn-to-remote
/ip firewall filter add action=accept chain=forward comment="defconf: allow to get to outgoing traffic initiated towards Internet / other networks" connection-state="" in-interface=bridge_default out-interface=wlan1-2GHz-WAN
/ip firewall filter add action=accept chain=forward connection-state="" in-interface=bridge_default out-interface=wlan2-5GHz-WAN
/ip firewall filter add action=accept chain=forward connection-state="" in-interface=bridge_default out-interface=ether1-WAN
/ip firewall filter add action=accept chain=forward connection-state="" in-interface=bridge_visitors out-interface=wlan1-2GHz-WAN
/ip firewall filter add action=accept chain=forward connection-state="" in-interface=bridge_visitors out-interface=wlan2-5GHz-WAN
/ip firewall filter add action=accept chain=forward connection-state="" in-interface=bridge_visitors out-interface=ether1-WAN
/ip firewall filter add action=passthrough chain=forward comment="defconf: drop all from WAN not DSTNATed" disabled=yes log=yes log-prefix="[ ALL ]"
/ip firewall filter add action=drop chain=forward connection-nat-state=!dstnat connection-state=new in-interface=wlan1-2GHz-WAN
/ip firewall filter add action=drop chain=forward connection-nat-state=!dstnat connection-state=new in-interface=wlan2-5GHz-WAN
/ip firewall filter add action=drop chain=forward connection-nat-state=!dstnat connection-state=new in-interface=ether1-WAN
/ip firewall filter add action=passthrough chain=forward comment="defconf: clean-up rule" disabled=yes log=yes log-prefix="[ CLEANUP ]"
/ip firewall filter add action=drop chain=forward


/ip firewall mangle add action=mark-routing chain=prerouting comment="defconf: when on a security Wi-Fi mark traffic to send it through L2TP VPN" new-routing-mark=vpn-l2tp passthrough=no src-address-list=net_security_l2tp
/ip firewall mangle add action=mark-routing chain=prerouting comment="defconf: when on a security Wi-Fi mark traffic to send it through OpenVPN tunnel" new-routing-mark=vpn-ovpn passthrough=no src-address-list=net_security_ovpn


/ip firewall nat add action=redirect chain=dstnat comment="defconf: proxy dns request to local cache" dst-port=53 protocol=udp to-ports=53
/ip firewall nat add action=redirect chain=dstnat dst-port=53 protocol=tcp to-ports=53
/ip firewall nat add action=masquerade chain=srcnat comment="defconf: masquerade for outgoing traffic" out-interface=wlan1-2GHz-WAN
/ip firewall nat add action=masquerade chain=srcnat out-interface=wlan2-5GHz-WAN
/ip firewall nat add action=masquerade chain=srcnat out-interface=ether1-WAN
/ip firewall nat add action=masquerade chain=srcnat out-interface=l2tp-to-remote
/ip firewall nat add action=masquerade chain=srcnat out-interface=ovpn-to-remote


/ip firewall service-port set ftp disabled=yes
/ip firewall service-port set tftp disabled=yes
/ip firewall service-port set irc disabled=yes
/ip firewall service-port set h323 disabled=yes
/ip firewall service-port set sip disabled=yes
/ip firewall service-port set pptp disabled=yes
/ip firewall service-port set udplite disabled=yes
/ip firewall service-port set dccp disabled=yes
/ip firewall service-port set sctp disabled=yes


/ip route add distance=20 gateway=l2tp-to-remote routing-mark=vpn-l2tp
/ip route add distance=20 gateway=ovpn-to-remote routing-mark=vpn-ovpn


/ip service set telnet address=192.168.80.0/20 disabled=yes
/ip service set ftp address=192.168.80.0/20 disabled=yes
/ip service set www address=192.168.80.0/20 disabled=yes
/ip service set ssh address=192.168.80.0/20 disabled=yes
/ip service set www-ssl address=192.168.80.0/20 certificate=local-server disabled=no
/ip service set api address=192.168.80.0/20 disabled=yes
/ip service set winbox address=192.168.80.0/20
/ip service set api-ssl address=192.168.80.0/20 certificate=local-server disabled=yes


/ip upnp set enabled=yes
/ip upnp interfaces add interface=wlan3-2GHz-LAN type=internal
/ip upnp interfaces add interface=wlan2-5GHz-WAN type=internal
/ip upnp interfaces add interface=ether2-master type=internal
/ip upnp interfaces add interface=ether3 type=internal
/ip upnp interfaces add interface=ether4 type=internal
/ip upnp interfaces add interface=ether5 type=internal
/ip upnp interfaces add interface=bridge_default type=internal


/system clock set time-zone-name=Europe/Madrid


/system note set note="You are attempting to connect to a monitored device - Authorized administrators only"


/system ntp client set enabled=yes primary-ntp=147.156.7.50 secondary-ntp=193.145.15.15 server-dns-names=192.168.87.1


/tool graphing interface add allow-address=192.168.84.0/22 interface=ether1-WAN
/tool graphing interface add allow-address=192.168.84.0/22 interface=wlan1-2GHz-WAN
/tool graphing interface add allow-address=192.168.84.0/22 interface=wlan2-5GHz-WAN
/tool graphing interface add allow-address=192.168.84.0/22 interface=bridge_default
/tool graphing interface add allow-address=192.168.84.0/22 interface=bridge_visitors
/tool graphing resource add allow-address=192.168.80.0/20


/tool mac-server set allowed-interface-list=mactel
/tool mac-server mac-winbox set allowed-interface-list=mac-winbox
/tool mac-server ping set enabled=no

