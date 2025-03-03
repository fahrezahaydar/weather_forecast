///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsAr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'مرحباً!';
	@override String get loading => 'جاري التحميل';
	@override String get changeTheme => 'تغيير الثيم';
	@override String get changeLanguage => 'تغيير اللغة';
	@override String get noInternetConnection => 'لا يوجد إتصال بالإنترنت';
	@override String get serverNotResponding => 'لا يوجد إستجابة من السيرفر!';
	@override String get someThingWentWorng => 'حدث خطأ غير متوقع!';
	@override String get apiNotFound => 'الرابط الذي تحاول الوصول اليه غير موجود!';
	@override String get serverError => 'مشكلة من السيرفر';
	@override String get urlNotFound => 'مشكلة في الرابط';
	@override String get goodMorning => 'صباح الخير';
	@override String get name => 'عماد البلتاجي';
	@override String get attendanceRegistration => 'تسجيل الحضور';
	@override String get time => '09:00 م';
	@override String get vocation => 'الإجازات';
	@override String get remainingTasks => 'المهام المتبقية';
	@override String get daysOfDelays => 'أيام التأخر';
	@override String get absentDays => 'أيام الغياب';
	@override String get days => 'ايام';
	@override String get tasks => 'المهام';
	@override String get vacationingEmployees => 'موظفين في اجازة';
	@override String get viewAll => 'عرض الكل';
	@override String get gaza => 'غزة';
	@override String get abdQader => 'عبد القادر الشريف';
	@override String get loai => 'لؤي عرفات';
	@override String get retry => 'اعادة المحاولة';
	@override String get internetError => 'خطأ في الاتصال بالانترنت ⚠️';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'مرحباً!';
			case 'loading': return 'جاري التحميل';
			case 'changeTheme': return 'تغيير الثيم';
			case 'changeLanguage': return 'تغيير اللغة';
			case 'noInternetConnection': return 'لا يوجد إتصال بالإنترنت';
			case 'serverNotResponding': return 'لا يوجد إستجابة من السيرفر!';
			case 'someThingWentWorng': return 'حدث خطأ غير متوقع!';
			case 'apiNotFound': return 'الرابط الذي تحاول الوصول اليه غير موجود!';
			case 'serverError': return 'مشكلة من السيرفر';
			case 'urlNotFound': return 'مشكلة في الرابط';
			case 'goodMorning': return 'صباح الخير';
			case 'name': return 'عماد البلتاجي';
			case 'attendanceRegistration': return 'تسجيل الحضور';
			case 'time': return '09:00 م';
			case 'vocation': return 'الإجازات';
			case 'remainingTasks': return 'المهام المتبقية';
			case 'daysOfDelays': return 'أيام التأخر';
			case 'absentDays': return 'أيام الغياب';
			case 'days': return 'ايام';
			case 'tasks': return 'المهام';
			case 'vacationingEmployees': return 'موظفين في اجازة';
			case 'viewAll': return 'عرض الكل';
			case 'gaza': return 'غزة';
			case 'abdQader': return 'عبد القادر الشريف';
			case 'loai': return 'لؤي عرفات';
			case 'retry': return 'اعادة المحاولة';
			case 'internetError': return 'خطأ في الاتصال بالانترنت ⚠️';
			default: return null;
		}
	}
}

