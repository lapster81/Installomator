marathonkase)
      name="Marathon Kalin Setterberg Data AB"
      type="pkg"
      downloadURL_aarch64="https://update.kase.se/marathon/macos-aarch64/Marathon-$(curl -s https://update.kase.se/marathon/macos-aarch64/versions.txt | tail -n 1)_aarch64.pkg"
      downloadURL_x64="https://update.kase.se/marathon/macos-x64/Marathon-$(curl -s https://update.kase.se/marathon/macos-x64/versions.txt | tail -n 1)_x64.pkg"
      if [[ $(arch) == "arm64" ]]; then
        downloadURL=$downloadURL_aarch64
      else
        downloadURL=$downloadURL_x64
      fi
      appNewVersion=$(curl -s https://update.kase.se/marathon/macos-aarch64/versions.txt | tail -n 1) # Fetch the latest version
      expectedTeamID="WUUW5HSQMZ"
      ;;