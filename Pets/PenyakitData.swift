let dataPenyakit = [
    Penyakit(image:"imgcacing", penyakit: "Cacingan", daftarPenanganan: ["Beri obat ke kucing anda sebanyak satu kali."], daftarGejala: ["Mata kucing berair atau belekan.", "Terdapat cacing pada feses kucing."], daftarPenyebab: ["Dialami kucing sejak usia 2 bulan."]),
    Penyakit(image:"imgkutu", penyakit: "Kutuan", daftarPenanganan: ["Langsung bersihkan dan grooming kucing anda jika saat awal beli.", "Ambil kutunya dengan pinset khusus.", "Lap kucing anda dengan kapas.","Cari obat (krim/salep) kutuan di pet shop atau toko obat kucing.","Bersihkan kucing anda dengan obat tersebut.","Keringkan kucing anda.","Hindari kucing anda untuk bertemu dengan kucing lain yang mengalami kutuan."], daftarGejala: ["Biasanya dialami kucing yang baru dibeli.", "Biasanya dialami kucing ras bulu tebal.","Terdapat kutu di telinga, belakang telinga, leher, atau celah bulu pada kucing."], daftarPenyebab: ["Kena tular kucing lain.", "Biasanya saat awal beli, terdapat kutu."]),
    Penyakit(image:"imgjamur", penyakit: "Jamuran", daftarPenanganan: ["Cari obat jamuran (krim/tabur/tetes) di pet shop atau toko obat kucing.", "Beri obat ke kucing anda.", "Bersihkan kucing anda.","Tidur"], daftarGejala: ["Terdapat jamur di sekitar telinga kucing.", "Tidak tumbuh bulu di ekor kucing."], daftarPenyebab: ["Dikarenakan kucing kotor atau tidak pernah dimandikan.", "Kandang kucing tidak bersih.", "Tertular kucing lain yang jamuran."]),
    Penyakit(image:"imgpilek", penyakit: "Pilek", daftarPenanganan: ["Cari obat pilek di pet shop atau toko obat kucing.", "Beri obat ke kucing anda.", "Mandi","Tidur"], daftarGejala: ["Bersin-bersin.", "Hidung berlendir.", "Perilaku tidak semangat.", "Nafsu makan turun atau tidak ingin makan."], daftarPenyebab: ["Bisa dikarenakan cuaca, seperti hujan."]),
    Penyakit(image:"imgdemam", penyakit: "Demam", daftarPenanganan: ["Cari obat penurun panas di pet shop atau toko obat kucing.", "Beri obat ke kucing anda.", "Mandi","Tidur"], daftarGejala: ["Suhu badan kucing naik, tidak seperti biasanya."], daftarPenyebab: ["Bisa karena kandang lembab, seperti kehujanan."])
]

struct Penyakit {
    let image: String
    let penyakit: String
    let daftarPenanganan: [String]
    let daftarGejala: [String]
    let daftarPenyebab: [String]
}
