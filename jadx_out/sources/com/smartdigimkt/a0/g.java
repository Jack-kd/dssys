package com.smartdigimkt.a0;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.anythink.core.basead.a;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes5.dex */
public final class g extends b {

    /* renamed from: h, reason: collision with root package name */
    public final boolean f39236h;

    /* renamed from: i, reason: collision with root package name */
    public f f39237i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.i0.l f39238j;

    /* renamed from: k, reason: collision with root package name */
    public k f39239k;

    public g(a aVar) {
        com.smartdigimkt.l3.a aVar2;
        super(aVar);
        this.f39238j = null;
        com.smartdigimkt.m3.c cVar = this.f39220c;
        if (cVar == null || (aVar2 = this.f39221d) == null) {
            return;
        }
        com.smartdigimkt.m3.e eVar = aVar2.f41644r;
        boolean z2 = false;
        if (!(cVar instanceof com.smartdigimkt.m3.b) ? !(!(cVar instanceof com.smartdigimkt.p3.a) || ((com.smartdigimkt.p3.a) cVar).f42602r0 != 1) : !(!(eVar instanceof com.smartdigimkt.m3.l) || ((com.smartdigimkt.m3.l) eVar).f42061Z1 != 1)) {
            z2 = true;
        }
        this.f39236h = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0211  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.a0.s a(int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.a0.g.a(int, java.lang.String):com.smartdigimkt.a0.s");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b() {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.a0.g.b():java.lang.String");
    }

    public final String c(String str) throws Throwable {
        String str2;
        HttpURLConnection httpURLConnection;
        boolean z2 = false;
        String headerField = str;
        for (int i2 = 0; i2 < 10; i2++) {
            HttpURLConnection httpURLConnection2 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
                } catch (Exception e2) {
                    e = e2;
                    str2 = headerField;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setInstanceFollowRedirects(false);
                    com.smartdigimkt.m3.e eVar = this.f39221d.f41644r;
                    if (eVar != null && com.smartdigimkt.z.p.a(eVar, 9)) {
                        String strP = com.smartdigimkt.c5.h.p();
                        if (!TextUtils.isEmpty(strP)) {
                            httpURLConnection.addRequestProperty("User-Agent", strP);
                        }
                    }
                    httpURLConnection.setConnectTimeout(KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
                    httpURLConnection.connect();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        headerField = httpURLConnection.getHeaderField("Location");
                        if (!com.smartdigimkt.c0.e.b(headerField)) {
                            if (!headerField.contains(com.anythink.core.common.d.i.f2495E + com.smartdigimkt.c5.o.f39801g) && headerField.startsWith("http")) {
                                httpURLConnection.disconnect();
                                httpURLConnection.disconnect();
                            }
                        }
                        z2 = true;
                    }
                    String str3 = headerField;
                    if (z2 || responseCode == 200) {
                        httpURLConnection.disconnect();
                        return str3;
                    }
                    try {
                        com.smartdigimkt.y3.h.b(this.f39221d, this.f39220c, str, str3, responseCode + "", "");
                        httpURLConnection.disconnect();
                        return "";
                    } catch (Exception e3) {
                        e = e3;
                        httpURLConnection2 = httpURLConnection;
                        str2 = str3;
                        com.smartdigimkt.y3.h.b(this.f39221d, this.f39220c, str, str2, "", e.getMessage());
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return "";
                    }
                } catch (Exception e4) {
                    e = e4;
                    str2 = headerField;
                    httpURLConnection2 = httpURLConnection;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }
        return "";
    }

    public final synchronized f a(String str) {
        f fVar;
        fVar = new f();
        fVar.f39235c = str;
        fVar.f39234b = this.f39221d.f41644r.f41880O;
        fVar.f39233a = System.currentTimeMillis();
        return fVar;
    }

    public final s b(String str) {
        com.smartdigimkt.l3.a aVar = this.f39221d;
        int i2 = aVar.f41644r.f41969s;
        if (i2 != 0 && i2 == 2) {
            com.smartdigimkt.m3.c cVar = this.f39220c;
            IOfferClickHandler iOfferClickHandler = this.f39224g;
            Context context = this.f39219b;
            com.smartdigimkt.s2.c.f43115b = true;
            Intent intent = new Intent();
            intent.setClass(context, WebLandPageActivity.class);
            intent.putExtra(a.C0043a.f1582c, cVar);
            intent.putExtra(a.C0043a.f1584e, aVar);
            intent.putExtra(a.C0043a.f1588i, str);
            intent.putExtra(a.C0043a.f1595p, -1);
            intent.putExtra(a.C0043a.f1596q, true);
            intent.putExtra("extra_need_limit_redirect", true);
            if (iOfferClickHandler != null) {
                intent.putExtra(a.C0043a.f1590k, iOfferClickHandler);
            }
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } else {
            com.smartdigimkt.d5.e.a(str);
        }
        return new s(true);
    }
}
