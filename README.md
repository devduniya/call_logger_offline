# Logger

Logger is an Android call-log viewer and organizer built with Flutter. It reads the call history available on the device and provides filtering, on-device summaries, and user-controlled import and export.

## Platform support

| Platform | Support | Scope and limitations |
| --- | --- | --- |
| Android | Supported (Android 5.0 / API 21 and later) | Full feature set. Reading contacts and call history requires the corresponding Android permissions. Importing writes entries to the device call log and requires write access, which may be restricted by Android, the device manufacturer, or the app distribution policy. |
| iOS | Not supported | This repository has no iOS app target. iOS does not provide third-party apps with access to the system call history. |
| Web, Windows, macOS, Linux | Not supported | No app targets or call-log provider implementations are included for these platforms. |

## Features

| Feature | Capability | Scope and limitations |
| --- | --- | --- |
| Call history | Browse the call history provided by Android, with contact and phone-account details where available. | The app can only show records exposed by the device's call-log provider. Available history and metadata depend on the device, phone app, permissions, and system retention. |
| Search and filters | Narrow records by number/contact, call type, date range, duration, and phone account/SIM. | Filters apply to the records currently available from the device; they do not retrieve records from a remote service. |
| Grouping | Group calls using the grouping options in Settings, including grouping behavior when filters are active. | Grouping changes the on-screen presentation, not the underlying call-log entries. |
| Analytics | View call counts, incoming/outgoing comparisons, durations, frequent callers/recipients, and top contacts. | Summaries are calculated on the device from the currently available and filtered call records. |
| Tracked numbers | Add numbers to a local track list and review their call activity and charts. | Tracking is a view over call history already on the device; it is not live call monitoring or a cloud-synced list. |
| Filter presets | Save and reuse named filter configurations. | Presets are stored locally on the device and are not included in call-log exports. |
| Export | Export the current call-log view as CSV, JSON, or iCalendar (`.ical`) to a folder selected with Android's document picker; CSV and JSON exports can also be shared through another app. | Exporting is user-initiated. The receiving app or selected storage provider handles any shared or saved copy. |
| Import | Select a CSV file and add its records to the Android call log. | Import accepts Logger-compatible CSV files with the documented call-log columns; JSON and iCalendar imports are not supported. Android may deny write access. |
| Preferences and languages | Configure grouping, export format and filename, display options, and other app preferences. The interface includes 16 languages. | Preferences are local to the app installation. Translations may vary in completeness. |
| Privacy | Call-log analysis is performed locally. There is no app service for uploading or syncing call history. | Exporting or sharing intentionally sends a copy to the destination selected by the user. Android permissions control access to call logs and contacts. |

### CSV format

CSV import expects the following columns in this order:

`name,duration,number,phone_account_id,call_type,formatted_number,sim_display_name,timestamp,cached_number_label,cached_number_type,cached_matched_number`

The importer also accepts the older `formattedNumber` spelling for the `formatted_number` column.

### Languages

English, Hindi, French, Polish, Portuguese, Russian, Spanish, Swedish, German, Dutch, Chinese, Romanian, Korean, Finnish, Japanese, and Turkish.

## Build and run

Requirements: Flutter 3.27.1 or newer and the Android SDK.

```sh
flutter pub get
flutter run
```

Build an Android APK with:

```sh
flutter build apk
```

## License

This project is distributed under the GNU General Public License v3.0. See [LICENSE](LICENSE).
