package com.ubix.ssp.ad.d;

import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.v;
import java.io.Serializable;

/* loaded from: classes5.dex */
public class e implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public String f45833a;

    /* renamed from: b, reason: collision with root package name */
    public String f45834b;

    /* renamed from: c, reason: collision with root package name */
    public String f45835c;

    /* renamed from: d, reason: collision with root package name */
    public String f45836d;

    /* renamed from: e, reason: collision with root package name */
    public String f45837e;

    /* renamed from: f, reason: collision with root package name */
    public String f45838f;

    /* renamed from: g, reason: collision with root package name */
    public String f45839g;

    /* renamed from: h, reason: collision with root package name */
    public String f45840h;

    /* renamed from: i, reason: collision with root package name */
    public String f45841i;

    /* renamed from: j, reason: collision with root package name */
    public String f45842j;

    /* renamed from: k, reason: collision with root package name */
    public String f45843k;

    /* renamed from: l, reason: collision with root package name */
    public String f45844l;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e() {
        /*
            r2 = this;
            r2.<init>()
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getImei()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r1 = ""
            if (r0 == 0) goto L15
            r0 = r1
            goto L1d
        L15:
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getImei()
        L1d:
            r2.f45833a = r0
            java.lang.String r0 = com.ubix.ssp.ad.e.a0.h.a(r0)
            r2.f45834b = r0
            r2.f45835c = r1
            boolean r0 = r2.a()
            if (r0 == 0) goto L32
            java.lang.String r0 = r2.c()
            goto L4b
        L32:
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getOaid()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L49
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getOaid()
            goto L4b
        L49:
            java.lang.String r0 = com.ubix.ssp.ad.d.b.f45798e
        L4b:
            r2.f45836d = r0
            java.lang.String r0 = com.ubix.ssp.ad.e.a0.h.a(r0)
            r2.f45837e = r0
            java.lang.String r0 = "device_android_id"
            boolean r0 = com.ubix.ssp.ad.e.b.a(r0)
            if (r0 == 0) goto L81
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            boolean r0 = r0.isCanUseAndroidId()
            if (r0 == 0) goto L6a
            java.lang.String r0 = r2.b()
            goto L83
        L6a:
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getAndroidId()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L81
            com.ubix.ssp.open.UBiXAdPrivacyManager r0 = com.ubix.ssp.ad.d.b.a()
            java.lang.String r0 = r0.getAndroidId()
            goto L83
        L81:
            java.lang.String r0 = com.ubix.ssp.ad.d.b.f45799f
        L83:
            r2.f45838f = r0
            java.lang.String r0 = com.ubix.ssp.ad.e.a0.h.a(r0)
            r2.f45839g = r0
            r2.f45840h = r1
            r2.f45841i = r1
            r2.f45842j = r1
            r2.f45843k = r1
            r2.f45844l = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.d.e.<init>():void");
    }

    private boolean a() {
        return b.a().isCanUseOaid() && com.ubix.ssp.ad.e.b.a("device_oaid");
    }

    private String b() {
        if (TextUtils.isEmpty(b.f45799f)) {
            String strA = com.ubix.ssp.ad.e.a0.c.a(b.f45794a.getPrivacyManager().isCanUseAndroidId());
            if (!TextUtils.isEmpty(strA)) {
                b.f45799f = strA;
                return strA;
            }
        } else if (b.f45794a.getPrivacyManager().isCanUseAndroidId()) {
            if (System.currentTimeMillis() > v.c(com.ubix.ssp.ad.e.a0.c.e(), "ubix_sp_seed", "android_id_expired")) {
                String strA2 = com.ubix.ssp.ad.e.a0.c.a(true);
                if (!TextUtils.isEmpty(strA2)) {
                    b.f45799f = strA2;
                    return strA2;
                }
            }
        }
        return b.f45799f;
    }

    private String c() {
        if (TextUtils.isEmpty(b.f45798e)) {
            String strA = com.ubix.ssp.ad.e.a0.c0.b.a(com.ubix.ssp.ad.e.a0.c.e(), b.f45816w);
            b.f45798e = strA;
            return strA;
        }
        if (!b.f45794a.getPrivacyManager().isTrustOaid()) {
            com.ubix.ssp.ad.e.a0.c0.b.a(com.ubix.ssp.ad.e.a0.c.e(), b.f45816w);
            return b.f45798e;
        }
        if (System.currentTimeMillis() > v.c(com.ubix.ssp.ad.e.a0.c.e(), "ubix_sp_seed", "seed_expired")) {
            com.ubix.ssp.ad.e.a0.c0.b.a(com.ubix.ssp.ad.e.a0.c.e(), b.f45816w);
        }
        return b.f45798e;
    }

    public String toString() {
        return "DeviceIdBean{imei='" + this.f45833a + "', imei_md5=" + this.f45834b + "', android_id=" + this.f45838f + "', android_id_md5=" + this.f45839g + "', oaid=" + this.f45836d + "', mac=" + this.f45840h + "', mac_md5=" + this.f45841i + "', wifi_mac=" + this.f45842j + "', wifi_mac_md5=" + this.f45843k + "', ssid=" + this.f45844l + "', imsi=" + this.f45835c + "'}";
    }
}
