package com.umeng.analytics.pro;

import android.text.TextUtils;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* loaded from: classes5.dex */
public class cc {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49018a = "HttpClient";

    /* renamed from: f, reason: collision with root package name */
    private static HostnameVerifier f49019f;

    /* renamed from: b, reason: collision with root package name */
    private String f49020b;

    /* renamed from: c, reason: collision with root package name */
    private a f49021c;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f49022d;

    /* renamed from: e, reason: collision with root package name */
    private cd f49023e;

    public enum a {
        POST,
        GET
    }

    public cc(String str, a aVar, Map<String, String> map, cd cdVar) {
        this.f49020b = str;
        this.f49021c = aVar;
        this.f49022d = map;
        this.f49023e = cdVar;
    }

    private static HostnameVerifier a() {
        if (f49019f == null) {
            f49019f = new HostnameVerifier() { // from class: com.umeng.analytics.pro.cc.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return !TextUtils.isEmpty(str) && ca.f49001a.equalsIgnoreCase(str);
                }
            };
        }
        return f49019f;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ca A[PHI: r1
      0x00ca: PHI (r1v12 javax.net.ssl.HttpsURLConnection) = 
      (r1v6 javax.net.ssl.HttpsURLConnection)
      (r1v7 javax.net.ssl.HttpsURLConnection)
      (r1v8 javax.net.ssl.HttpsURLConnection)
      (r1v9 javax.net.ssl.HttpsURLConnection)
      (r1v10 javax.net.ssl.HttpsURLConnection)
      (r1v11 javax.net.ssl.HttpsURLConnection)
      (r1v15 javax.net.ssl.HttpsURLConnection)
     binds: [B:46:0x00da, B:48:0x00dd, B:50:0x00e0, B:52:0x00e3, B:54:0x00e6, B:56:0x00e9, B:22:0x009f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(int r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.cc.a(int, java.lang.String):java.lang.String");
    }
}
