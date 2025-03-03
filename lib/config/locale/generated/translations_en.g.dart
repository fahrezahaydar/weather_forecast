///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get hello => 'Hello!';
	String get loading => 'Loading';
	String get changeTheme => 'Change theme';
	String get changeLanguage => 'Change language';
	String get noInternetConnection => 'No internet connection!';
	String get serverNotResponding => 'Server is not responding!';
	String get someThingWentWorng => 'Something went wrong';
	String get apiNotFound => 'Route not found!';
	String get serverError => 'Server error';
	String get urlNotFound => 'URL not found';
	String get goodMorning => 'Good morning';
	String get name => 'Emad Beltaje';
	String get attendanceRegistration => 'Attendance Registration';
	String get time => '09:00 am';
	String get vocation => 'Vocation';
	String get remainingTasks => 'Remaining Tasks';
	String get daysOfDelays => 'Days of Delays';
	String get absentDays => 'Absent Days';
	String get days => 'Days';
	String get tasks => 'Tasks';
	String get vacationingEmployees => 'Vacationing Employees';
	String get viewAll => 'View All';
	String get gaza => 'Gaza';
	String get abdQader => 'Abd-Qader Shareef';
	String get loai => 'Loai Arafat';
	String get retry => 'Retry';
	String get internetError => 'Error Occurred Check Your Internet Connection! ⚠️';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'Hello!';
			case 'loading': return 'Loading';
			case 'changeTheme': return 'Change theme';
			case 'changeLanguage': return 'Change language';
			case 'noInternetConnection': return 'No internet connection!';
			case 'serverNotResponding': return 'Server is not responding!';
			case 'someThingWentWorng': return 'Something went wrong';
			case 'apiNotFound': return 'Route not found!';
			case 'serverError': return 'Server error';
			case 'urlNotFound': return 'URL not found';
			case 'goodMorning': return 'Good morning';
			case 'name': return 'Emad Beltaje';
			case 'attendanceRegistration': return 'Attendance Registration';
			case 'time': return '09:00 am';
			case 'vocation': return 'Vocation';
			case 'remainingTasks': return 'Remaining Tasks';
			case 'daysOfDelays': return 'Days of Delays';
			case 'absentDays': return 'Absent Days';
			case 'days': return 'Days';
			case 'tasks': return 'Tasks';
			case 'vacationingEmployees': return 'Vacationing Employees';
			case 'viewAll': return 'View All';
			case 'gaza': return 'Gaza';
			case 'abdQader': return 'Abd-Qader Shareef';
			case 'loai': return 'Loai Arafat';
			case 'retry': return 'Retry';
			case 'internetError': return 'Error Occurred Check Your Internet Connection! ⚠️';
			default: return null;
		}
	}
}

