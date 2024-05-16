# [END YOUR STRUGGLE WITH DATA STRUCTURE HERE 👈🏽](https://neetcode.io/practice).

## Intellij License
* [JetBrain Retrial version on mac](https://github.com/thanhdevapp/jetbrains-reset-trial-evaluation-mac)
```
 STEPS
1. Download and extract the bash file from the link above OR Create a bash script and paste the code below 👇 
E.g runme.sh
2. Run the bash file on your teminal using the bash script name e.g bash runme.sh
3. Use intellij version 2021.1.3

```

```
#!/bin/bash

if [ "$1" = "--prepare-env" ]; then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
  mkdir -p ~/Scripts

  echo "Copying the script to $HOME/Scripts"
  cp -rf $DIR/runme.sh  ~/Scripts/jetbrains-reset.sh
  chmod +x ~/Scripts/jetbrains-reset.sh

  echo
  echo "Copying com.jetbrains.reset.plist to $HOME/Library/LaunchAgents"
  cp -rf $DIR/com.jetbrains.reset.plist ~/Library/LaunchAgents

  echo
  echo "Loading job into launchctl"
  launchctl load ~/Library/LaunchAgents/com.jetbrains.reset.plist

  echo
  echo "That's it, enjoy ;)"
  exit 0
fi

if [ "$1" = "--launch-agent" ]; then
  PROCESS=(idea webstorm datagrip phpstorm clion pycharm goland rubymine rider)
  COMMAND_PRE=("${PROCESS[@]/#/MacOS/}")

  # Kill all Intellij applications
  kill -9 `ps aux | egrep $(IFS=$'|'; echo "${COMMAND_PRE[*]}") | awk '{print $2}'`
fi

# Reset Intellij evaluation
#for product in IntelliJIdea WebStorm DataGrip PhpStorm CLion PyCharm GoLand RubyMine Rider; do
for product in Rider; do
  echo "Resetting trial period for $product"

#  echo "removing evaluation key..."
#  rm -rf ~/Library/Preferences/$product*/eval

  # Above path not working on latest version. Fixed below
  rm -rf ~/Library/Application\ Support/JetBrains/$product*/eval/*.key

#  echo "removing all evlsprt properties in options.xml..."
#  sed -i '' '/evlsprt/d' ~/Library/Preferences/$product*/options/other.xml

  # Above path not working on latest version. Fixed below
  sed -i '' '/evlsprt/d' ~/Library/Application\ Support/JetBrains/$product*/options/other.xml

  echo
done

echo "removing additional plist files..."
rm -f ~/Library/Preferences/com.apple.java.util.prefs.plist
rm -f ~/Library/Preferences/com.jetbrains.*.plist
rm -f ~/Library/Preferences/jetbrains.*.*.plist

for f in ~/Library/Preferences/jetbrains.*.plist; do
    if [[ -f $f ]]; then
        fn=${f##*/}; key=${fn%.plist}
        echo delete $key from pref and file $f
        defaults delete "${fn%.plist}" 2>/dev/null && rm "$f"
    fi
done


echo
echo "That's it, enjoy ;)"

# Flush preference cache
if [ "$1" = "--launch-agent" ]; then
  killall cfprefsd
  echo "Evaluation was reset at $(date)" >> ~/Scripts/logs
fi
```

## Frontend Developement
+ [Fullstack Frontend Developement 1](https://mega.nz/folder/KxhBHQZT#6L-57x0w3L4jowjIlrRQ6w)
+ [FullStack Developement](https://mega.nz/folder/DrYHBSxA#xMQBqkyr5lTOb9R6Zg_3yA) 

## Project Templete
- [Model Template for Professional Project Ideas](https://themeforest.net/item/renax-car-rental-template/50946417)
- [Model Figma Template for Professional Project Ideas](https://app.dhiwise.com/web-templates)

## Secert Links
+ [Everything you need to know about Deveops and AWS](https://drive.google.com/drive/folders/1P15Mp_J4WtUnr3EU7aZf-tgdX6jquEYE)
+ [Best Java and DeveOp Programming ASHOK IT DevOps](https://drive.google.com/drive/folders/1q41_DOSmVDL__yZYs7zNUHc8Z1heLZWV)
+ [React Lessons](https://drive.google.com/drive/folders/1DHuk-5sls0bMfE0hqJWCUzKcVKLfjqJy)
+ [Java Lessons](https://drive.google.com/drive/folders/1DQl01unzlOrQmXrG05iOb38ROW22WVM2?usp=sharing)
+ [Security CheatSheet Series](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
+ [Udemy Resources](https://1337x.to/torrent/3000685/Udemy-Linux-Administration-with-Advance-Troubleshooting-Skills/)
+ [Linux Administration Sheet](https://drive.google.com/file/d/1WJyjAfRmdgFbZq-ii5HKGQepjDMFpixf/view)




# ROADMAP.

<img src="https://github.com/Innocentsax/JAVA_BEGINNERS_ROADMAP_RESOURCES/blob/main/Java-Master-RoadMap/java-developer-roadmap.png">


## Internships and placements
+ [Web Development and Data Science Internships @bharatintern](https://bharatintern.live/b/i/index.html)
+ [Java Internships @DryCode](https://drycode-internships.github.io/)
+ [Java Internships @CodeClause](https://internship.codeclause.com/InternshipDomains)
+ [Java Internships @Oasisinfobyte](https://oasisinfobyte.com/#features)
+ [Java and React InternShips @SyncIntern](https://www.syncinterns.com/)
+ [Java Internship @Internpe](https://internpe.in/index.html)
+ [CodSoft Internship](https://docs.google.com/forms/d/e/1FAIpQLSd9wZJpC7Q_T3VcxOQ7YRACFcor6N-psh060RrIwZb7tGBBvw/viewform)
+ [CodeAlpha](https://docs.google.com/forms/d/e/1FAIpQLSeKAA3g_XsH7qCMVxPsEAM2JHJrIDLBgpLqWpQfmkoLeYcexg/viewform)

## My Offer Letters
+ [God Did it](https://drive.google.com/drive/folders/10c6hdOVCJSTP-RunGvv4yuzCqzY4AJED)
