# Mikrotik travel router 

  - Brand: **Mikrotik**
  - Operating system: **Routerboard**
  - Market model: **hAP AC Lite**
  - Technical model: **RB95ZUi-5acZnD**

### Mikrotik configuration for a travel router

This is a repository comprised of configuration files for the above Mikrotik router model.

The rationale behind this project is to have a single router that can provide several Wi-Fi access points, both in 2.4 GHz and 5 GHz, so, it's relatively simple to get the most from an intermitent Internet connection while on trip. 

A secure remote connection is stablished with a remote endpoint using both L2TP + IPSec and OpenVPN. The rationale for this is to try connecting both VPN endpoint expecting, worst case scenario, at least one of them will manage to get connected, so, providing secure (tunneled) access to a controled remote endpoint to flow local traffic trought.

Hope this results useful, like it is to me.
