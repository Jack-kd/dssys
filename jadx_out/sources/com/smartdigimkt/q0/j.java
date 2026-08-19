package com.smartdigimkt.q0;

import android.media.MediaCodecInfo;
import android.util.SparseIntArray;
import com.smartdigimkt.a1.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public abstract class j {

    /* renamed from: d, reason: collision with root package name */
    public static final SparseIntArray f42670d;

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f42671e;

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f42672f;

    /* renamed from: a, reason: collision with root package name */
    public static final a f42667a = new a("OMX.google.raw.decoder", null, null, true, false, false);

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f42668b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f42669c = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public static int f42673g = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42670d = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f42671e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap map = new HashMap();
        f42672f = map;
        map.put("L30", 1);
        map.put("L60", 4);
        map.put("L63", 16);
        map.put("L90", 64);
        map.put("L93", 256);
        map.put("L120", 1024);
        map.put("L123", 4096);
        map.put("L150", 16384);
        map.put("L153", 65536);
        map.put("L156", 262144);
        map.put("L180", 1048576);
        map.put("L183", 4194304);
        map.put("L186", 16777216);
        map.put("H30", 2);
        map.put("H60", 8);
        map.put("H63", 32);
        map.put("H90", 128);
        map.put("H93", 512);
        map.put("H120", 2048);
        map.put("H123", 8192);
        map.put("H150", 32768);
        map.put("H153", 131072);
        map.put("H156", 524288);
        map.put("H180", 2097152);
        map.put("H183", 8388608);
        map.put("H186", 33554432);
    }

    public static a a(String str, boolean z2) {
        List listUnmodifiableList;
        synchronized (j.class) {
            try {
                e eVar = new e(str, z2);
                listUnmodifiableList = (List) f42669c.get(eVar);
                if (listUnmodifiableList == null) {
                    int i2 = t.f39303a;
                    g iVar = i2 >= 21 ? new i(z2) : new h();
                    ArrayList arrayListA = a(eVar, iVar, str);
                    if (z2 && arrayListA.isEmpty() && 21 <= i2 && i2 <= 23) {
                        iVar = new h();
                        arrayListA = a(eVar, iVar, str);
                        if (!arrayListA.isEmpty()) {
                            String str2 = ((a) arrayListA.get(0)).f42620a;
                        }
                    }
                    if ("audio/eac3-joc".equals(str)) {
                        arrayListA.addAll(a(new e("audio/eac3", z2), iVar, str));
                    }
                    if (i2 < 26) {
                        int i3 = 1;
                        if (arrayListA.size() > 1 && "OMX.MTK.AUDIO.DECODER.RAW".equals(((a) arrayListA.get(0)).f42620a)) {
                            while (true) {
                                if (i3 >= arrayListA.size()) {
                                    break;
                                }
                                a aVar = (a) arrayListA.get(i3);
                                if ("OMX.google.raw.decoder".equals(aVar.f42620a)) {
                                    arrayListA.remove(i3);
                                    arrayListA.add(0, aVar);
                                    break;
                                }
                                i3++;
                            }
                        }
                    }
                    listUnmodifiableList = Collections.unmodifiableList(arrayListA);
                    f42669c.put(eVar, listUnmodifiableList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            return null;
        }
        return (a) listUnmodifiableList.get(0);
    }

    public static int a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int i2;
        if (f42673g == -1) {
            int iMax = 0;
            a aVarA = a("video/avc", false);
            if (aVarA != null) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = aVarA.f42622c;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                int length = codecProfileLevelArr.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i3 = codecProfileLevelArr[iMax].level;
                    if (i3 != 1 && i3 != 2) {
                        switch (i3) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                break;
                            case 64:
                                i2 = 202752;
                                break;
                            case 128:
                            case 256:
                                i2 = 414720;
                                break;
                            case 512:
                                i2 = 921600;
                                break;
                            case 1024:
                                i2 = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                break;
                            case 8192:
                                i2 = 2228224;
                                break;
                            case 16384:
                                i2 = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                i2 = 9437184;
                                break;
                            default:
                                i2 = -1;
                                break;
                        }
                    } else {
                        i2 = 25344;
                    }
                    iMax2 = Math.max(i2, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, t.f39303a >= 21 ? 345600 : 172800);
            }
            f42673g = iMax;
        }
        return f42673g;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e5 A[Catch: Exception -> 0x0144, TRY_ENTER, TryCatch #5 {Exception -> 0x0144, blocks: (B:3:0x0004, B:5:0x0016, B:7:0x0026, B:9:0x002e, B:58:0x00dd, B:61:0x00e5, B:63:0x00eb, B:64:0x0105, B:65:0x0126), top: B:83:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0105 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList a(com.smartdigimkt.q0.e r19, com.smartdigimkt.q0.g r20, java.lang.String r21) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q0.j.a(com.smartdigimkt.q0.e, com.smartdigimkt.q0.g, java.lang.String):java.util.ArrayList");
    }

    public static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z2, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z2 && str.endsWith(".secure"))) {
            return false;
        }
        int i2 = t.f39303a;
        if (i2 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i2 < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
            return false;
        }
        if (i2 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = t.f39304b;
            if ("a70".equals(str3) || ("Xiaomi".equals(t.f39305c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i2 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = t.f39304b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i2 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = t.f39304b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i2 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(t.f39305c))) {
            String str6 = t.f39304b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i2 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(t.f39305c)) {
            String str7 = t.f39304b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i2 <= 19 && t.f39304b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return ("audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }
}
