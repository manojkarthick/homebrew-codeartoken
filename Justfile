version := "0.1.0"

download:
    wget https://github.com/manojkarthick/codeartoken/releases/download/v{{version}}/codeartoken-{{version}}-darwin-all.tar.gz -O codeartoken-mac.tar.gz

checksum:
    shasum -a 256 codeartoken-mac.tar.gz

commit:
    git add -A
    git commit -m "Create release v{{version}}"
    git tag {{version}}
    git push -f origin master --tags

upload:
    github-upload-asset --owner manojkarthick --repo homebrew-codeartoken --release-tag {{version}} --asset-path codeartoken-mac.tar.gz --create-release
