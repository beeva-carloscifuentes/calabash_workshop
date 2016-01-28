#!/bin/bash

# create project directory
mkdir ../pop_project

# copy files & folder:
cp -R app ../pop_project
cp Gemfile ../pop_project
cp cucumber.yml ../pop_project

cd ../pop_project

echo '-----------------------------------------------------------------------------------'
echo ' Creating defaul calabash android structure...'
echo '-----------------------------------------------------------------------------------'
mkdir android
cd android
calabash-android gen

echo '-----------------------------------------------------------------------------------'
echo ' Creating defaul calabash iOS structure...'
echo '-----------------------------------------------------------------------------------'
cd ..
mkdir ios
cd ios
calabash-ios gen

echo '-----------------------------------------------------------------------------------'
echo ' Resign demo apk with our developer debug keystore...'
echo '-----------------------------------------------------------------------------------'
cd ..
calabash-android resign app/app-debug.apk

echo '-----------------------------------------------------------------------------------'
echo ' Creating project structure...'
echo '-----------------------------------------------------------------------------------'
mkdir impl

mkdir impl/helpers
mkdir impl/helpers/general
mkdir impl/helpers/android
mkdir impl/helpers/ios

mkdir impl/reports

cp -R ../create_project/screens impl/

cp -R ../create_project/step_definitions impl/

cp -R ../create_project/support impl/

cp -R ../create_project/features .

# mv files from generated android & ios folders
cp -R android/features/support/ impl/support/android/
cp -R ios/features/support/ impl/support/ios/
cp ../create_project/hooks.rb impl/support/android
cp ../create_project/hooks.rb impl/support/ios


# remove default generated folders
rm -rf android/
rm -rf ios/

# install all project dependencies included in Gemfile
echo '-----------------------------------------------------------------------------------'
echo ' Install gem dependencies...'
echo '-----------------------------------------------------------------------------------'
bundle install

echo '-----------------------------------------------------------------------------------'
echo ' Run demo test: (you need an android emaulator running (android list avd // emulator -avd Nexus_5_API_23) or device USB connected with debug mode enabled) '
echo ' $ cd ../pop_project '
echo ' $ bundle exec calabash-android run app/app-debug.apk -p android-html'
echo '-----------------------------------------------------------------------------------'
