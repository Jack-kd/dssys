package com.smartdigimkt.s1;

import android.content.Context;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.i0.c f43103a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f43104b;

    public c(d dVar, com.smartdigimkt.i0.c cVar) {
        this.f43104b = dVar;
        this.f43103a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Context context = this.f43104b.f43106a;
        if (com.smartdigimkt.h0.a.f40421b == null) {
            com.smartdigimkt.h0.a.f40421b = new com.smartdigimkt.h0.a(context);
        }
        com.smartdigimkt.h0.a aVar = com.smartdigimkt.h0.a.f40421b;
        String str2 = this.f43103a.f40641f;
        synchronized (aVar) {
            synchronized (aVar) {
                try {
                    str = "record_date != '" + str2 + "'";
                } catch (Exception unused) {
                }
                if (com.smartdigimkt.h0.b.a(aVar.f40422a).getWritableDatabase() != null) {
                    com.smartdigimkt.h0.b.a(aVar.f40422a).getWritableDatabase().delete("my_offer_cap_pacing", str, null);
                }
            }
        }
        Context context2 = this.f43104b.f43106a;
        if (com.smartdigimkt.h0.a.f40421b == null) {
            com.smartdigimkt.h0.a.f40421b = new com.smartdigimkt.h0.a(context2);
        }
        com.smartdigimkt.h0.a.f40421b.a(this.f43103a);
    }
}
