import 'package:flutter/material.dart';
import 'package:logger/components/common/sized_text.dart';
import 'package:logger/utils/app_information.dart';
import 'package:logger/l10n/app_localizations.dart';

class AboutActivityScreen extends StatelessWidget {
  const AboutActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).appDetailsText,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedText(
                  AppLocalizations.of(context).softwareInformationText,
                  size: 20.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(115, 53, 52, 52)
                          : const Color.fromARGB(255, 249, 245, 255),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(115, 53, 52, 52)
                            : const Color.fromARGB(201, 233, 216, 255),
                      ),
                    ),
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppLocalizations.of(context).versionText,
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppInformation.getVersion(),
                            ),
                          ),
                        ),
                      ]),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                AppLocalizations.of(context).platformText,
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                AppLocalizations.of(context).platformNameText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedText(
                  AppLocalizations.of(context).storagePolicyLabelText,
                  size: 20.0,
                ),
                const SizedBox(height: 15.0),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(115, 53, 52, 52)
                          : const Color.fromARGB(255, 249, 245, 255),
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).storagePolicyText,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedText(
                  AppLocalizations.of(context).analyticsPolicyLabelText,
                  size: 20.0,
                ),
                const SizedBox(height: 15.0),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(115, 53, 52, 52)
                          : const Color.fromARGB(255, 249, 245, 255),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    AppLocalizations.of(context).analyticsPolicyText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
