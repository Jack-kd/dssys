package com.smartdigimkt.p0;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final int f42397a = com.smartdigimkt.a1.t.a("vide");

    /* renamed from: b, reason: collision with root package name */
    public static final int f42398b = com.smartdigimkt.a1.t.a("soun");

    /* renamed from: c, reason: collision with root package name */
    public static final int f42399c = com.smartdigimkt.a1.t.a(com.baidu.mobads.sdk.internal.a.f10878b);

    /* renamed from: d, reason: collision with root package name */
    public static final int f42400d = com.smartdigimkt.a1.t.a("sbtl");

    /* renamed from: e, reason: collision with root package name */
    public static final int f42401e = com.smartdigimkt.a1.t.a("subt");

    /* renamed from: f, reason: collision with root package name */
    public static final int f42402f = com.smartdigimkt.a1.t.a("clcp");

    /* renamed from: g, reason: collision with root package name */
    public static final int f42403g = com.smartdigimkt.a1.t.a("meta");

    /* JADX WARN: Removed duplicated region for block: B:311:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x06c5  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0a8e  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0b1a  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0b21 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0b22  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.smartdigimkt.p0.s a(com.smartdigimkt.p0.a r71, com.smartdigimkt.p0.b r72, long r73, com.smartdigimkt.n0.d r75, boolean r76, boolean r77) throws com.smartdigimkt.j0.y {
        /*
            Method dump skipped, instructions count: 2872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p0.i.a(com.smartdigimkt.p0.a, com.smartdigimkt.p0.b, long, com.smartdigimkt.n0.d, boolean, boolean):com.smartdigimkt.p0.s");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.smartdigimkt.p0.t] */
    public static Pair a(com.smartdigimkt.a1.l lVar, int i2, int i3) {
        int i4;
        int i5;
        byte[] bArr;
        int i6 = lVar.f39287b;
        while (true) {
            Pair pairCreate = null;
            if (i6 - i2 >= i3) {
                return null;
            }
            lVar.c(i6);
            int iA = lVar.a();
            com.smartdigimkt.a1.a.a("childAtomSize should be positive", iA > 0);
            if (lVar.a() == c.f42324W) {
                int i7 = i6 + 8;
                String strD = null;
                Integer numValueOf = null;
                int i8 = 0;
                int i9 = -1;
                while (i7 - i6 < iA) {
                    lVar.c(i7);
                    int iA2 = lVar.a();
                    int iA3 = lVar.a();
                    if (iA3 == c.f42332c0) {
                        numValueOf = Integer.valueOf(lVar.a());
                    } else if (iA3 == c.f42325X) {
                        lVar.c(lVar.f39287b + 4);
                        strD = lVar.d();
                    } else if (iA3 == c.f42326Y) {
                        i9 = i7;
                        i8 = iA2;
                    }
                    i7 += iA2;
                }
                if ("cenc".equals(strD) || "cbc1".equals(strD) || "cens".equals(strD) || "cbcs".equals(strD)) {
                    com.smartdigimkt.a1.a.a("frma atom is mandatory", numValueOf != null);
                    com.smartdigimkt.a1.a.a("schi atom is mandatory", i9 != -1);
                    int i10 = i9 + 8;
                    while (true) {
                        if (i10 - i9 >= i8) {
                            break;
                        }
                        lVar.c(i10);
                        int iA4 = lVar.a();
                        if (lVar.a() == c.f42327Z) {
                            int iA5 = (lVar.a() >> 24) & 255;
                            lVar.c(lVar.f39287b + 1);
                            if (iA5 == 0) {
                                lVar.c(lVar.f39287b + 1);
                                i5 = 0;
                                i4 = 0;
                            } else {
                                int iE = lVar.e();
                                i4 = iE & 15;
                                i5 = (iE & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4;
                            }
                            boolean z2 = lVar.e() == 1;
                            Integer num = numValueOf;
                            int iE2 = lVar.e();
                            byte[] bArr2 = new byte[16];
                            lVar.a(bArr2, 0, 16);
                            if (z2 && iE2 == 0) {
                                int iE3 = lVar.e();
                                byte[] bArr3 = new byte[iE3];
                                lVar.a(bArr3, 0, iE3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            ?? tVar = new t(strD, iE2, bArr2, i5, i4, bArr);
                            numValueOf = num;
                            pairCreate = tVar;
                        } else {
                            i10 += iA4;
                        }
                    }
                    com.smartdigimkt.a1.a.a("tenc atom is mandatory", pairCreate != null);
                    pairCreate = Pair.create(numValueOf, pairCreate);
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i6 += iA;
        }
    }

    public static Pair a(int i2, com.smartdigimkt.a1.l lVar) {
        lVar.c(i2 + 12);
        lVar.c(lVar.f39287b + 1);
        a(lVar);
        lVar.c(lVar.f39287b + 2);
        int iE = lVar.e();
        if ((iE & 128) != 0) {
            lVar.c(lVar.f39287b + 2);
        }
        if ((iE & 64) != 0) {
            lVar.c(lVar.f39287b + lVar.j());
        }
        if ((iE & 32) != 0) {
            lVar.c(lVar.f39287b + 2);
        }
        lVar.c(lVar.f39287b + 1);
        a(lVar);
        String strA = com.smartdigimkt.a1.h.a(lVar.e());
        if (!DLNAProfiles.DLNAMimeTypes.MIME_AUDIO_MPEG.equals(strA) && !"audio/vnd.dts".equals(strA) && !"audio/vnd.dts.hd".equals(strA)) {
            lVar.c(lVar.f39287b + 12);
            lVar.c(lVar.f39287b + 1);
            int iA = a(lVar);
            byte[] bArr = new byte[iA];
            lVar.a(bArr, 0, iA);
            return Pair.create(strA, bArr);
        }
        return Pair.create(strA, null);
    }

    public static int a(com.smartdigimkt.a1.l lVar) {
        int iE = lVar.e();
        int i2 = iE & 127;
        while ((iE & 128) == 128) {
            iE = lVar.e();
            i2 = (i2 << 7) | (iE & 127);
        }
        return i2;
    }
}
