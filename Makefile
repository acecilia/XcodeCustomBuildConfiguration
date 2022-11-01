SHELL := /bin/zsh -euo pipefail
.SILENT:

project:
	cd Dependency && xcodegen
	xcodegen
	bundle exec pod install

clean_derived_data:
	rm -rf 'gen/build'

clean: clean_derived_data
	rm -rf Pods Podfile.lock
	rm -rf Pods Gemfile.lock
	find . \( -name "*.xcodeproj" -o -name "*.xcworkspace" \) | xargs rm -rf

build: clean_derived_data
	xcodebuild build \
		-workspace CustomConfigurationSample.xcworkspace -scheme "$(CONFIG)" \
		-destination "platform=iOS Simulator,OS=latest,name=iPhone X" \
		-derivedDataPath 'gen/build/DerivedData' \
		| xcbeautify

all: clean project build
