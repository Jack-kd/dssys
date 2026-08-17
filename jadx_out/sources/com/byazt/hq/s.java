package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final s f20931a;

    /* renamed from: e, reason: collision with root package name */
    public static final s f20932e;
    public static final s eb;
    public static final s gu;
    public static final Comparator<String> hp;

    /* renamed from: j, reason: collision with root package name */
    public static final s f20933j;
    public static final s jl;
    public static final s jx;

    /* renamed from: k, reason: collision with root package name */
    public static final s f20934k;

    /* renamed from: l, reason: collision with root package name */
    public static final s f20935l;

    /* renamed from: q, reason: collision with root package name */
    public static final s f20936q;

    /* renamed from: s, reason: collision with root package name */
    public static final s f20937s;

    /* renamed from: u, reason: collision with root package name */
    public static final s f20938u;

    /* renamed from: v, reason: collision with root package name */
    public static final s f20939v;
    public static final Map<String, s> vv;

    /* renamed from: w, reason: collision with root package name */
    public static final s f20940w;
    public static final s zy;
    public final String xs;

    static {
        Comparator<String> comparator = new Comparator<String>() { // from class: com.byazt.hq.s.1
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(String str, String str2) {
                int iMin = Math.min(str.length(), str2.length());
                for (int i2 = 4; i2 < iMin; i2++) {
                    char cCharAt = str.charAt(i2);
                    char cCharAt2 = str2.charAt(i2);
                    if (cCharAt != cCharAt2) {
                        return cCharAt < cCharAt2 ? -1 : 1;
                    }
                }
                int length = str.length();
                int length2 = str2.length();
                if (length != length2) {
                    return length < length2 ? -1 : 1;
                }
                return 0;
            }
        };
        hp = comparator;
        vv = new TreeMap(comparator);
        f20935l = hp("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        jx = hp("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        f20933j = hp("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        f20940w = hp("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        f20931a = hp("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        eb = hp("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        f20937s = hp("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        f20936q = hp("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        f20932e = hp("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        gu = hp("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        jl = hp("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        zy = hp("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        f20934k = hp("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        f20939v = hp("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        f20938u = hp("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    }

    private s(String str) {
        str.getClass();
        this.xs = str;
    }

    public static synchronized s hp(String str) {
        s sVar;
        Map<String, s> map = vv;
        sVar = map.get(str);
        if (sVar == null) {
            sVar = new s(str);
            map.put(str, sVar);
        }
        return sVar;
    }

    public String toString() {
        return this.xs;
    }

    public static List<s> hp(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(hp(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static s hp(String str, int i2) {
        return hp(str);
    }

    public String hp() {
        return this.xs;
    }
}
