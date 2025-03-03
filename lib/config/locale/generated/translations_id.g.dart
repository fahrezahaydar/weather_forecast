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
class TranslationsId extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsId _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'Halo!';
	@override String get loading => 'Memuat';
	@override String get changeTheme => 'Ubah tema';
	@override String get changeLanguage => 'Ubah bahasa';
	@override String get noInternetConnection => 'Tidak ada koneksi internet!';
	@override String get serverNotResponding => 'Server tidak merespons!';
	@override String get someThingWentWorng => 'Terjadi kesalahan';
	@override String get apiNotFound => 'Rute tidak ditemukan!';
	@override String get serverError => 'Kesalahan server';
	@override String get urlNotFound => 'URL tidak ditemukan';
	@override String get goodMorning => 'Selamat pagi';
	@override String get name => 'Emad Beltaje';
	@override String get attendanceRegistration => 'Pendaftaran Kehadiran';
	@override String get time => '09:00 pagi';
	@override String get vocation => 'Cuti';
	@override String get remainingTasks => 'Tugas yang tersisa';
	@override String get daysOfDelays => 'Hari keterlambatan';
	@override String get absentDays => 'Hari tidak hadir';
	@override String get days => 'Hari';
	@override String get tasks => 'Tugas';
	@override String get vacationingEmployees => 'Karyawan yang sedang cuti';
	@override String get viewAll => 'Lihat Semua';
	@override String get gaza => 'Gaza';
	@override String get abdQader => 'Abd-Qader Shareef';
	@override String get loai => 'Loai Arafat';
	@override String get retry => 'Coba Lagi';
	@override String get internetError => 'Terjadi Kesalahan, Periksa Koneksi Internet Anda! ⚠️';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsId {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'Halo!';
			case 'loading': return 'Memuat';
			case 'changeTheme': return 'Ubah tema';
			case 'changeLanguage': return 'Ubah bahasa';
			case 'noInternetConnection': return 'Tidak ada koneksi internet!';
			case 'serverNotResponding': return 'Server tidak merespons!';
			case 'someThingWentWorng': return 'Terjadi kesalahan';
			case 'apiNotFound': return 'Rute tidak ditemukan!';
			case 'serverError': return 'Kesalahan server';
			case 'urlNotFound': return 'URL tidak ditemukan';
			case 'goodMorning': return 'Selamat pagi';
			case 'name': return 'Emad Beltaje';
			case 'attendanceRegistration': return 'Pendaftaran Kehadiran';
			case 'time': return '09:00 pagi';
			case 'vocation': return 'Cuti';
			case 'remainingTasks': return 'Tugas yang tersisa';
			case 'daysOfDelays': return 'Hari keterlambatan';
			case 'absentDays': return 'Hari tidak hadir';
			case 'days': return 'Hari';
			case 'tasks': return 'Tugas';
			case 'vacationingEmployees': return 'Karyawan yang sedang cuti';
			case 'viewAll': return 'Lihat Semua';
			case 'gaza': return 'Gaza';
			case 'abdQader': return 'Abd-Qader Shareef';
			case 'loai': return 'Loai Arafat';
			case 'retry': return 'Coba Lagi';
			case 'internetError': return 'Terjadi Kesalahan, Periksa Koneksi Internet Anda! ⚠️';
			default: return null;
		}
	}
}

