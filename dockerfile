# Use the official Flutter image that includes Android SDK
FROM ghcr.io/cirruslabs/flutter:stable

# Set the working directory
WORKDIR /app

# Copy the entire project
COPY . .

# Get Flutter packages
RUN flutter pub get

# Build APK
RUN flutter build apk --release

# The APK will be at /app/build/app/outputs/flutter-apk/app-release.apk
