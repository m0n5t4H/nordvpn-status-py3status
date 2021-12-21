# py3nordStatus for i3

nordvpn for py3status using (external_script)
module

Requirements
> Nordvpn-bin / py3status

![This is an image](example.png)

>my i3status.conf settings for the script
```
order += "external_script nordvpn"

external_script nordvpn {
    format = "<span color'#000' bgcolor='#4687ff' size='large'>  </span> {output}"
    script_path = "~/.config/i3/scripts/nordvpn-status.sh"
    interval = 5
    serparator = false
}
```

if you want to hide the module when you aren't connected edit ***nordvpn-status.sh*** and remove the text from the last printf statement
```
printf "vpn "

printf ""
```
then bracket out the format section and pipe it
```
format = "[<span color'#000' bgcolor='#4687ff' size='large'>  </span> {output}]|"
```
