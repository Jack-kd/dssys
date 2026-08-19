package com.anythink.core.common.n.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class i {
    final String bq;

    /* renamed from: a, reason: collision with root package name */
    static final Comparator<String> f6843a = new Comparator<String>() { // from class: com.anythink.core.common.n.b.i.1
        private static int a(String str, String str2) {
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

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            int iMin = Math.min(str3.length(), str4.length());
            for (int i2 = 4; i2 < iMin; i2++) {
                char cCharAt = str3.charAt(i2);
                char cCharAt2 = str4.charAt(i2);
                if (cCharAt != cCharAt2) {
                    return cCharAt < cCharAt2 ? -1 : 1;
                }
            }
            int length = str3.length();
            int length2 = str4.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    };
    private static final Map<String, i> br = new LinkedHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final i f6844b = c("SSL_RSA_WITH_NULL_MD5");

    /* renamed from: c, reason: collision with root package name */
    public static final i f6845c = c("SSL_RSA_WITH_NULL_SHA");

    /* renamed from: d, reason: collision with root package name */
    public static final i f6846d = c("SSL_RSA_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: e, reason: collision with root package name */
    public static final i f6847e = c("SSL_RSA_WITH_RC4_128_MD5");

    /* renamed from: f, reason: collision with root package name */
    public static final i f6848f = c("SSL_RSA_WITH_RC4_128_SHA");

    /* renamed from: g, reason: collision with root package name */
    public static final i f6849g = c("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: h, reason: collision with root package name */
    public static final i f6850h = c("SSL_RSA_WITH_DES_CBC_SHA");

    /* renamed from: i, reason: collision with root package name */
    public static final i f6851i = c("SSL_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: j, reason: collision with root package name */
    public static final i f6852j = c("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: k, reason: collision with root package name */
    public static final i f6853k = c("SSL_DHE_DSS_WITH_DES_CBC_SHA");

    /* renamed from: l, reason: collision with root package name */
    public static final i f6854l = c("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: m, reason: collision with root package name */
    public static final i f6855m = c("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: n, reason: collision with root package name */
    public static final i f6856n = c("SSL_DHE_RSA_WITH_DES_CBC_SHA");

    /* renamed from: o, reason: collision with root package name */
    public static final i f6857o = c("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: p, reason: collision with root package name */
    public static final i f6858p = c("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: q, reason: collision with root package name */
    public static final i f6859q = c("SSL_DH_anon_WITH_RC4_128_MD5");

    /* renamed from: r, reason: collision with root package name */
    public static final i f6860r = c("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: s, reason: collision with root package name */
    public static final i f6861s = c("SSL_DH_anon_WITH_DES_CBC_SHA");

    /* renamed from: t, reason: collision with root package name */
    public static final i f6862t = c("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: u, reason: collision with root package name */
    public static final i f6863u = c("TLS_KRB5_WITH_DES_CBC_SHA");

    /* renamed from: v, reason: collision with root package name */
    public static final i f6864v = c("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: w, reason: collision with root package name */
    public static final i f6865w = c("TLS_KRB5_WITH_RC4_128_SHA");

    /* renamed from: x, reason: collision with root package name */
    public static final i f6866x = c("TLS_KRB5_WITH_DES_CBC_MD5");

    /* renamed from: y, reason: collision with root package name */
    public static final i f6867y = c("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");

    /* renamed from: z, reason: collision with root package name */
    public static final i f6868z = c("TLS_KRB5_WITH_RC4_128_MD5");

    /* renamed from: A, reason: collision with root package name */
    public static final i f6817A = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");

    /* renamed from: B, reason: collision with root package name */
    public static final i f6818B = c("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");

    /* renamed from: C, reason: collision with root package name */
    public static final i f6819C = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");

    /* renamed from: D, reason: collision with root package name */
    public static final i f6820D = c("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: E, reason: collision with root package name */
    public static final i f6821E = c("TLS_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: F, reason: collision with root package name */
    public static final i f6822F = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");

    /* renamed from: G, reason: collision with root package name */
    public static final i f6823G = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: H, reason: collision with root package name */
    public static final i f6824H = c("TLS_DH_anon_WITH_AES_128_CBC_SHA");

    /* renamed from: I, reason: collision with root package name */
    public static final i f6825I = c("TLS_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: J, reason: collision with root package name */
    public static final i f6826J = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");

    /* renamed from: K, reason: collision with root package name */
    public static final i f6827K = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: L, reason: collision with root package name */
    public static final i f6828L = c("TLS_DH_anon_WITH_AES_256_CBC_SHA");

    /* renamed from: M, reason: collision with root package name */
    public static final i f6829M = c("TLS_RSA_WITH_NULL_SHA256");

    /* renamed from: N, reason: collision with root package name */
    public static final i f6830N = c("TLS_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: O, reason: collision with root package name */
    public static final i f6831O = c("TLS_RSA_WITH_AES_256_CBC_SHA256");

    /* renamed from: P, reason: collision with root package name */
    public static final i f6832P = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");

    /* renamed from: Q, reason: collision with root package name */
    public static final i f6833Q = c("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: R, reason: collision with root package name */
    public static final i f6834R = c("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: S, reason: collision with root package name */
    public static final i f6835S = c("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: T, reason: collision with root package name */
    public static final i f6836T = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: U, reason: collision with root package name */
    public static final i f6837U = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");

    /* renamed from: V, reason: collision with root package name */
    public static final i f6838V = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");

    /* renamed from: W, reason: collision with root package name */
    public static final i f6839W = c("TLS_DH_anon_WITH_AES_128_CBC_SHA256");

    /* renamed from: X, reason: collision with root package name */
    public static final i f6840X = c("TLS_DH_anon_WITH_AES_256_CBC_SHA256");

    /* renamed from: Y, reason: collision with root package name */
    public static final i f6841Y = c("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");

    /* renamed from: Z, reason: collision with root package name */
    public static final i f6842Z = c("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
    public static final i aa = c("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
    public static final i ab = c("TLS_PSK_WITH_RC4_128_SHA");
    public static final i ac = c("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
    public static final i ad = c("TLS_PSK_WITH_AES_128_CBC_SHA");
    public static final i ae = c("TLS_PSK_WITH_AES_256_CBC_SHA");
    public static final i af = c("TLS_RSA_WITH_SEED_CBC_SHA");
    public static final i ag = c("TLS_RSA_WITH_AES_128_GCM_SHA256");
    public static final i ah = c("TLS_RSA_WITH_AES_256_GCM_SHA384");
    public static final i ai = c("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
    public static final i aj = c("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
    public static final i ak = c("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
    public static final i al = c("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
    public static final i am = c("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
    public static final i an = c("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
    public static final i ao = c("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
    public static final i ap = c("TLS_FALLBACK_SCSV");
    public static final i aq = c("TLS_ECDH_ECDSA_WITH_NULL_SHA");
    public static final i ar = c("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
    public static final i as = c("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
    public static final i at = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
    public static final i au = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
    public static final i av = c("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
    public static final i aw = c("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
    public static final i ax = c("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
    public static final i ay = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
    public static final i az = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
    public static final i aA = c("TLS_ECDH_RSA_WITH_NULL_SHA");
    public static final i aB = c("TLS_ECDH_RSA_WITH_RC4_128_SHA");
    public static final i aC = c("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final i aD = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
    public static final i aE = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
    public static final i aF = c("TLS_ECDHE_RSA_WITH_NULL_SHA");
    public static final i aG = c("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
    public static final i aH = c("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final i aI = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
    public static final i aJ = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
    public static final i aK = c("TLS_ECDH_anon_WITH_NULL_SHA");
    public static final i aL = c("TLS_ECDH_anon_WITH_RC4_128_SHA");
    public static final i aM = c("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
    public static final i aN = c("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
    public static final i aO = c("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
    public static final i aP = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
    public static final i aQ = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
    public static final i aR = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
    public static final i aS = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
    public static final i aT = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
    public static final i aU = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
    public static final i aV = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
    public static final i aW = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
    public static final i aX = c("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
    public static final i aY = c("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
    public static final i aZ = c("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
    public static final i ba = c("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
    public static final i bb = c("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
    public static final i bc = c("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
    public static final i bd = c("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
    public static final i be = c("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
    public static final i bf = c("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
    public static final i bg = c("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
    public static final i bh = c("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
    public static final i bi = c("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
    public static final i bj = c("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
    public static final i bk = c("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
    public static final i bl = c("TLS_AES_128_GCM_SHA256");
    public static final i bm = c("TLS_AES_256_GCM_SHA384");
    public static final i bn = c("TLS_CHACHA20_POLY1305_SHA256");
    public static final i bo = c("TLS_AES_128_CCM_SHA256");
    public static final i bp = c("TLS_AES_128_CCM_8_SHA256");

    private i(String str) {
        str.getClass();
        this.bq = str;
    }

    public static synchronized i a(String str) {
        i iVar;
        String str2;
        try {
            Map<String, i> map = br;
            iVar = map.get(str);
            if (iVar == null) {
                if (str.startsWith("TLS_")) {
                    str2 = "SSL_" + str.substring(4);
                } else if (str.startsWith("SSL_")) {
                    str2 = "TLS_" + str.substring(4);
                } else {
                    str2 = str;
                }
                iVar = map.get(str2);
                if (iVar == null) {
                    iVar = new i(str);
                }
                map.put(str, iVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iVar;
    }

    private static String b(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        if (!str.startsWith("SSL_")) {
            return str;
        }
        return "TLS_" + str.substring(4);
    }

    private static i c(String str) {
        i iVar = new i(str);
        br.put(str, iVar);
        return iVar;
    }

    public final String toString() {
        return this.bq;
    }

    public static List<i> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private String a() {
        return this.bq;
    }
}
