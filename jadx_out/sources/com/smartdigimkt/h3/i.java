package com.smartdigimkt.h3;

import android.content.Context;
import com.anythink.core.common.d.t;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f40562a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40563b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f40564c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f40565d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f40566e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m f40567f;

    public i(m mVar, long j2, String str, boolean z2, int i2, int i3) {
        this.f40567f = mVar;
        this.f40562a = j2;
        this.f40563b = str;
        this.f40564c = z2;
        this.f40565d = i2;
        this.f40566e = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strD;
        synchronized (this.f40567f.f40581f) {
            try {
                try {
                    strD = com.smartdigimkt.c5.d.d(this.f40563b);
                } catch (Throwable unused) {
                    StringBuilder sb = new StringBuilder("cur offset: ");
                    this.f40567f.getClass();
                    sb.append(y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", t.a.f3021E, 0));
                    sb.append(", error string: ");
                    sb.append(this.f40563b);
                    com.smartdigimkt.y3.h.a("handleUpdateInspectInfo error", sb.toString(), SDKContext.getInstance().f(), "");
                    strD = null;
                }
                LinkedHashMap linkedHashMapA = com.smartdigimkt.c5.k.a(strD);
                if (!this.f40564c) {
                    if (this.f40565d == 1 || linkedHashMapA.size() == 0) {
                        String str = this.f40567f.f40576a;
                        y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", t.a.f3021E, 0);
                    } else {
                        this.f40567f.getClass();
                        y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", t.a.f3021E, y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", t.a.f3021E, 0) + linkedHashMapA.size());
                        String str2 = this.f40567f.f40576a;
                    }
                }
                Context contextD = SDKContext.getInstance().d();
                if (contextD != null) {
                    if (!this.f40567f.f40584i) {
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry entry : linkedHashMapA.entrySet()) {
                            try {
                                String str3 = (String) entry.getKey();
                                String string = entry.getValue().toString();
                                b bVar = (b) this.f40567f.f40580e.get(str3);
                                if (bVar != null) {
                                    arrayList.add(new c(contextD, string, str3, bVar.f40548b, bVar.f40549c));
                                } else {
                                    arrayList.add(new c(contextD, string, str3));
                                }
                            } catch (Throwable unused2) {
                            }
                        }
                        if (arrayList.size() > 0) {
                            m.a(this.f40567f, arrayList, true);
                        }
                    }
                    int i2 = this.f40566e;
                    int size = this.f40567f.f40583h.size();
                    int i3 = this.f40565d;
                    long j2 = this.f40562a;
                    com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
                    cVar.f42817a = "1004758";
                    cVar.f42828l = String.valueOf(i2);
                    cVar.f42829m = String.valueOf(size);
                    cVar.f42830n = String.valueOf(i3);
                    cVar.f42831o = String.valueOf(j2);
                    com.smartdigimkt.y3.h.a(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
