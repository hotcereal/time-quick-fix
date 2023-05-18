# Time Quick Fix for Miyoo Mini+

![Main Apps UI](https://github.com/hotcereal/files/blob/main/TimeQuickFix.png?raw=true)

Using NTP and CloudFlare, fix your system time.

## Pre-requisities
- [OnionOS 4.2 beta](https://github.com/OnionUI/Onion/releases/tag/dev-v4.2.0-beta) (at least) must be installed for this to function.
- Wifi enabled

## Installation

1. Drag the `App` folder from this repo to the root of your SD card. Hit "Merge" on macOS and whatever does the same thing on the Windows. 

### IMPORTANT NOTE:

   - By default, the time is set to UTC-0. Your timezone is probably not UTC-0. To fix this, open the `launch.sh` file within `App > TimeQuickFix` in a text editor and change `export TZ=UTC-0` to [whatever your UTC offset](https://en.wikipedia.org/wiki/List_of_UTC_offsets) is.
     - ⚠️ This part is both important and slightly confusing. Example: astern USA (New York, DC, Atlanta, Florida etc.) is listed above as UTC-5:00. However, because of daylight savings time (which runs from Mar to Nov each year) it is "technically" UTC-4.
     - On top of that, the TZ env is backwards. Meaning, eastern folks should not be UTC minus 4, but UTC *plus* 4. Confusing, I know. But, all in all, your end result should be `export TZ=UTC+4` if you are in the eastern USA region.
        - Thank you to [XK](https://github.com/xk-tuff) for helping with this.
      
  My ___recommendation___ is to make two `launch.sh` files. One for right now, one for when your region is no longer observing DST. When DST is over, simply rename the second launch.sh to the original name, `launch.sh`. The name of the copy you make does not matter.
  * tl;dr: Find UTC offset, change the minus to plus or plus to minus, subtract 1 if your region observes daylight savings time. If your region does not observe DST, you will never need a second file.
        

### Post-install

This app is born out of a desire to get cloud saves to and from my Miyoo Mini, and that project can be found [here](https://github.com/hotcereal/cloud-saves-miyoo-mini-plus). 

#### Notes:
These features are likely to come to OnionOS in the coming weeks/months. If and when that happens, consider this repo obsolete. If need be, I will update with minor fixes if anything needs changing. 

All of these apps are powered by simple Linux commands. Feel free to edit them how you see fit. 

If this has helped you, I don't want anything. I want a BlueSky invite. Please send me a BlueSky invite. 
