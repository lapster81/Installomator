marathonkase)
    name="Marathon Kalin Setterberg"
    type="pkg"
    case $(arch) in
        "arm64")
          cpu_arch="aarch64"
        ;;
        "i386")
          cpu_arch="x64"
        ;;
    esac
    latestVersion=$(curl -s https://update.kase.se/marathon/macos-${cpu_arch}/versions.txt | tail -n 1)
    archiveName="Marathon-${latestVersion}_${cpu_arch}.pkg"
    downloadURL="https://update.kase.se/marathon/macos-${cpu_arch}/${archiveName}"
    packageID="se.kase.marathon"
    versionKey="CFBundleVersion"
    appNewVersion="${latestVersion}"
    expectedTeamID="WUUW5HSQMZ"
    blockingProcesses=( "java" "marathon" )
    ;;
