# Time Quick Fix for Miyoo Mini+

![Main Apps UI](https://github.com/hotcereal/files/blob/main/TimeQuickFix.png?raw=true)

Using NTP and CloudFlare, fix your system time.

## Pre-requisities
- [OnionOS 4.2 beta](https://github.com/OnionUI/Onion/releases/tag/dev-v4.2.0-beta) (at least) must be installed for this to function.
- Wifi enabled

## Installation

1. Drag the `App` folder from this repo to the root of your SD card. Hit "Merge" on macOS and whatever does the same thing on the Windows. 
    - By default, the time is set to UTC-0. Your timezone is probably not UTC-0. To fix this, open the `launch.sh` file within `App > TimeQuickFix` in a text editor and change `export TZ=UTC-0` to [whatever your UTC offset](https://en.wikipedia.org/wiki/List_of_UTC_offsets) is.
    - For exmaple, eastern USA (New York, DC, Atlanta, Florida etc.) would change the line to `export TZ=UTC-5` since the UTC offset is shown as `-5:00` in the above link.
      - Thank you to [XK](https://github.com/xk-tuff) for helping with this.

### Post-install

This app is born out of a desire to get cloud saves to and from my Miyoo Mini, and that project can be found [here](https://github.com/hotcereal/cloud-saves-miyoo-mini-plus). 

#### Notes:
These features are likely to come to OnionOS in the coming weeks/months. If and when that happens, consider this repo obsolete. If need be, I will update with minor fixes if anything needs changing. 

All of these apps are powered by simple Linux commands. Feel free to edit them how you see fit. 

If this has helped you, I don't want anything. I want a BlueSky invite. Please send me a BlueSky invite. 
