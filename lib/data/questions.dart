import '../models/question.dart';

final List<Question> questions = [
  Question(
    question: 'Bahasa pemrograman utama untuk mengembangkan aplikasi Android adalah...',
    options: ['Swift', 'Java', 'Kotlin', 'Python'],
    answerIndex: 2, // Kotlin
  ),
  Question(
    question: 'IDE yang paling umum digunakan untuk mengembangkan aplikasi Android adalah...',
    options: ['Visual Studio', 'Eclipse', 'Android Studio', 'IntelliJ IDEA'],
    answerIndex: 2, // Android Studio
  ),
  Question(
    question: 'File berformat `.apk` pada Android digunakan untuk...',
    options: [
      'Menyimpan gambar aplikasi',
      'Menjalankan aplikasi di browser',
      'File instalasi aplikasi Android',
      'Menyimpan data pengguna'
    ],
    answerIndex: 2, // File instalasi aplikasi Android
  ),
  Question(
    question: 'Dalam pemrograman Android, Activity berfungsi sebagai...',
    options: [
      'Tempat menyimpan database',
      'Antarmuka pengguna dari satu layar aplikasi',
      'Proses latar belakang',
      'Kelas utama untuk jaringan'
    ],
    answerIndex: 1,
  ),
  Question(
    question: 'Layout yang digunakan untuk mengatur posisi elemen berdasarkan baris dan kolom adalah...',
    options: ['LinearLayout', 'RelativeLayout', 'FrameLayout', 'GridLayout'],
    answerIndex: 3,
  ),
  Question(
    question: 'Komponen Android yang digunakan untuk menjalankan proses di latar belakang disebut...',
    options: ['Intent', 'Activity', 'Service', 'Broadcast'],
    answerIndex: 2,
  ),
  Question(
    question: 'Apa fungsi dari file AndroidManifest.xml?',
    options: [
      'Menyimpan kode program utama',
      'Mengatur tampilan UI',
      'Menentukan izin, activity, dan informasi aplikasi',
      'Menyimpan aset gambar'
    ],
    answerIndex: 2,
  ),
  Question(
    question: 'Bahasa utama untuk pengembangan aplikasi iOS adalah...',
    options: ['C++', 'Objective-C dan Swift', 'Java', 'Kotlin'],
    answerIndex: 1,
  ),
  Question(
    question: 'Framework yang memungkinkan pembuatan aplikasi mobile lintas platform adalah...',
    options: ['Android Studio', 'Xcode', 'Flutter', 'Notepad++'],
    answerIndex: 2,
  ),
  Question(
    question: 'Apa fungsi dari Intent dalam Android?',
    options: [
      'Menghubungkan antar komponen aplikasi',
      'Menyimpan data',
      'Menjalankan proses background',
      'Membuat tampilan layout'
    ],
    answerIndex: 0,
  ),
];
