package com.smartdigimkt.p0;

import androidx.core.view.ViewCompat;
import com.anythink.core.common.f.a;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final int f42456a = com.smartdigimkt.a1.t.a("nam");

    /* renamed from: b, reason: collision with root package name */
    public static final int f42457b = com.smartdigimkt.a1.t.a("trk");

    /* renamed from: c, reason: collision with root package name */
    public static final int f42458c = com.smartdigimkt.a1.t.a("cmt");

    /* renamed from: d, reason: collision with root package name */
    public static final int f42459d = com.smartdigimkt.a1.t.a(a.C0051a.f3214k);

    /* renamed from: e, reason: collision with root package name */
    public static final int f42460e = com.smartdigimkt.a1.t.a("ART");

    /* renamed from: f, reason: collision with root package name */
    public static final int f42461f = com.smartdigimkt.a1.t.a("too");

    /* renamed from: g, reason: collision with root package name */
    public static final int f42462g = com.smartdigimkt.a1.t.a("alb");

    /* renamed from: h, reason: collision with root package name */
    public static final int f42463h = com.smartdigimkt.a1.t.a("com");

    /* renamed from: i, reason: collision with root package name */
    public static final int f42464i = com.smartdigimkt.a1.t.a("wrt");

    /* renamed from: j, reason: collision with root package name */
    public static final int f42465j = com.smartdigimkt.a1.t.a("lyr");

    /* renamed from: k, reason: collision with root package name */
    public static final int f42466k = com.smartdigimkt.a1.t.a("gen");

    /* renamed from: l, reason: collision with root package name */
    public static final int f42467l = com.smartdigimkt.a1.t.a("covr");

    /* renamed from: m, reason: collision with root package name */
    public static final int f42468m = com.smartdigimkt.a1.t.a("gnre");

    /* renamed from: n, reason: collision with root package name */
    public static final int f42469n = com.smartdigimkt.a1.t.a("grp");

    /* renamed from: o, reason: collision with root package name */
    public static final int f42470o = com.smartdigimkt.a1.t.a("disk");

    /* renamed from: p, reason: collision with root package name */
    public static final int f42471p = com.smartdigimkt.a1.t.a("trkn");

    /* renamed from: q, reason: collision with root package name */
    public static final int f42472q = com.smartdigimkt.a1.t.a("tmpo");

    /* renamed from: r, reason: collision with root package name */
    public static final int f42473r = com.smartdigimkt.a1.t.a("cpil");

    /* renamed from: s, reason: collision with root package name */
    public static final int f42474s = com.smartdigimkt.a1.t.a("aART");

    /* renamed from: t, reason: collision with root package name */
    public static final int f42475t = com.smartdigimkt.a1.t.a("sonm");

    /* renamed from: u, reason: collision with root package name */
    public static final int f42476u = com.smartdigimkt.a1.t.a("soal");

    /* renamed from: v, reason: collision with root package name */
    public static final int f42477v = com.smartdigimkt.a1.t.a("soar");

    /* renamed from: w, reason: collision with root package name */
    public static final int f42478w = com.smartdigimkt.a1.t.a("soaa");

    /* renamed from: x, reason: collision with root package name */
    public static final int f42479x = com.smartdigimkt.a1.t.a("soco");

    /* renamed from: y, reason: collision with root package name */
    public static final int f42480y = com.smartdigimkt.a1.t.a("rtng");

    /* renamed from: z, reason: collision with root package name */
    public static final int f42481z = com.smartdigimkt.a1.t.a("pgap");

    /* renamed from: A, reason: collision with root package name */
    public static final int f42452A = com.smartdigimkt.a1.t.a("sosn");

    /* renamed from: B, reason: collision with root package name */
    public static final int f42453B = com.smartdigimkt.a1.t.a("tvsh");

    /* renamed from: C, reason: collision with root package name */
    public static final int f42454C = com.smartdigimkt.a1.t.a("----");

    /* renamed from: D, reason: collision with root package name */
    public static final String[] f42455D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static com.smartdigimkt.t0.o a(int i2, String str, com.smartdigimkt.a1.l lVar, boolean z2, boolean z3) {
        int iMin;
        lVar.c(lVar.f39287b + 4);
        if (lVar.a() == c.f42298F0) {
            lVar.c(lVar.f39287b + 8);
            iMin = lVar.e();
        } else {
            iMin = -1;
        }
        if (z3) {
            iMin = Math.min(1, iMin);
        }
        if (iMin >= 0) {
            return z2 ? new com.smartdigimkt.t0.u(str, null, Integer.toString(iMin)) : new com.smartdigimkt.t0.j("und", str, Integer.toString(iMin));
        }
        c.a(i2);
        return null;
    }

    public static com.smartdigimkt.t0.q b(int i2, com.smartdigimkt.a1.l lVar) {
        String strA = null;
        String strA2 = null;
        int i3 = -1;
        int i4 = -1;
        while (true) {
            int i5 = lVar.f39287b;
            if (i5 >= i2) {
                break;
            }
            int iA = lVar.a();
            int iA2 = lVar.a();
            lVar.c(lVar.f39287b + 4);
            if (iA2 == c.f42294D0) {
                strA = lVar.a(iA - 12);
            } else if (iA2 == c.f42296E0) {
                strA2 = lVar.a(iA - 12);
            } else {
                if (iA2 == c.f42298F0) {
                    i3 = i5;
                    i4 = iA;
                }
                lVar.c(lVar.f39287b + (iA - 12));
            }
        }
        if (strA == null || strA2 == null || i3 == -1) {
            return null;
        }
        lVar.c(i3);
        lVar.c(lVar.f39287b + 16);
        return new com.smartdigimkt.t0.q(strA, strA2, lVar.a(i4 - 16));
    }

    public static com.smartdigimkt.t0.j a(int i2, com.smartdigimkt.a1.l lVar) {
        int iA = lVar.a();
        if (lVar.a() == c.f42298F0) {
            lVar.c(lVar.f39287b + 8);
            String strA = lVar.a(iA - 16);
            return new com.smartdigimkt.t0.j("und", strA, strA);
        }
        c.a(i2);
        return null;
    }

    public static com.smartdigimkt.t0.u b(int i2, com.smartdigimkt.a1.l lVar, String str) {
        int iA = lVar.a();
        if (lVar.a() == c.f42298F0) {
            lVar.c(lVar.f39287b + 8);
            return new com.smartdigimkt.t0.u(str, null, lVar.a(iA - 16));
        }
        c.a(i2);
        return null;
    }

    public static com.smartdigimkt.t0.u a(int i2, com.smartdigimkt.a1.l lVar, String str) {
        int iA = lVar.a();
        if (lVar.a() == c.f42298F0 && iA >= 22) {
            lVar.c(lVar.f39287b + 10);
            int iJ = lVar.j();
            if (iJ > 0) {
                String str2 = "" + iJ;
                int iJ2 = lVar.j();
                if (iJ2 > 0) {
                    str2 = str2 + ServiceReference.DELIMITER + iJ2;
                }
                return new com.smartdigimkt.t0.u(str, null, str2);
            }
        }
        c.a(i2);
        return null;
    }

    public static com.smartdigimkt.t0.b a(com.smartdigimkt.a1.l lVar) {
        String str;
        int iA = lVar.a();
        if (lVar.a() != c.f42298F0) {
            return null;
        }
        int iA2 = lVar.a() & ViewCompat.MEASURED_SIZE_MASK;
        if (iA2 == 13) {
            str = DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG;
        } else {
            str = iA2 == 14 ? DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG : null;
        }
        if (str == null) {
            return null;
        }
        lVar.c(lVar.f39287b + 4);
        int i2 = iA - 16;
        byte[] bArr = new byte[i2];
        lVar.a(bArr, 0, i2);
        return new com.smartdigimkt.t0.b(str, null, 3, bArr);
    }
}
