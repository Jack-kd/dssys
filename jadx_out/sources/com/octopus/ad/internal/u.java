package com.octopus.ad.internal;

import android.os.Handler;
import com.octopus.ad.internal.c.d;
import com.umeng.analytics.pro.be;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    private int f35048a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final String f35049b;

    /* renamed from: c, reason: collision with root package name */
    private final String f35050c;

    /* renamed from: d, reason: collision with root package name */
    private final String f35051d;

    /* renamed from: e, reason: collision with root package name */
    private final long f35052e;

    /* renamed from: f, reason: collision with root package name */
    private final String f35053f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f35054g;

    /* renamed from: h, reason: collision with root package name */
    private d.a f35055h;

    /* renamed from: i, reason: collision with root package name */
    private ArrayList<String> f35056i;

    public u(String str, String str2, String str3, long j2, String str4, ArrayList<String> arrayList, boolean z2) {
        this.f35049b = str;
        this.f35050c = str2;
        this.f35051d = str3;
        this.f35052e = j2;
        this.f35053f = str4;
        this.f35054g = z2;
        this.f35056i = arrayList;
    }

    public static /* synthetic */ int c(u uVar) {
        int i2 = uVar.f35048a;
        uVar.f35048a = i2 - 1;
        return i2;
    }

    private String c(int i2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("url", this.f35053f);
            jSONObject.put("http_status_code", i2);
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        o.a(new l(be.f48800c.equals(this.f35049b) ? "IMPFAIL" : "CLKFAIL", this.f35050c, this.f35051d, System.currentTimeMillis() - this.f35052e, c(i2)));
    }

    public void a(d.a aVar) {
        this.f35055h = aVar;
    }

    public void a() {
        i iVar = new i(this.f35053f);
        if (this.f35054g) {
            iVar.a(new d.a() { // from class: com.octopus.ad.internal.u.1
                @Override // com.octopus.ad.internal.c.d.a
                public void a(int i2, boolean z2, String str) {
                    if (z2) {
                        if (u.this.f35055h != null) {
                            u.this.f35055h.a(i2, z2, str);
                        }
                        u.this.a(i2);
                    } else {
                        if (u.this.f35048a > 0) {
                            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.u.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    u.this.a();
                                    u.c(u.this);
                                }
                            }, 200L);
                        }
                        if (u.this.f35048a == 0) {
                            u.this.b(i2);
                        }
                    }
                }
            });
        } else {
            d.a aVar = this.f35055h;
            if (aVar != null) {
                aVar.a(200, true, "");
            }
        }
        iVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        try {
            ArrayList<String> arrayList = this.f35056i;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            if (this.f35056i.contains(new URL(this.f35053f).getHost())) {
                o.a(new l(be.f48800c.equals(this.f35049b) ? "IMPSUC" : "CLKSUC", this.f35050c, this.f35051d, System.currentTimeMillis() - this.f35052e, c(i2)));
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
