# OH_amazonDash
Use amazon dash button to trigger openHAB events

Little python script based on monitoring the network traffic for ARP requests by the amazon dash button. Each time you press the button the dash uses ARP to find out the default gateway on the network. The script hooks into this event and then passes a trigger to openHAB (running on localhost), which can be process by standard OH rule.

Edit the script to match the MAC address of your button and create a DASH_<name> item in openHAB (.item file) - that's it.
The script is based on: https://www.digikey.com/en/maker/blogs/amazon-dash-hack-connecting-to-your-ifttt-account/f3192a6e7e4a4920b9b7963a33e1d4fd

In addition you could block the IP traffic towards amazon in your router's firewall. Otherwise you'll get a notification from amazon that the button setup is not completed each time you press the button. Read the instructions for button setup careful, otherwise you'll place an order each time you press the button :-)

The script runs in an endless loop, so maybe include it into your crontab to get started on system start.
Run the script with "sudo python ./dash_button.py"
Note: The script requires root access (or sudo)

Difference to the OH2 Dash button binding:
This is a very easy way to implement the function whereas the OH2 binding requires libpcap, which is much more complicated to install.
