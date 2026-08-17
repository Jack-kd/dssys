package com.ubix.ssp.ad.e.a0.c0.h;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes5.dex */
class q implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46189a;

    /* renamed from: b, reason: collision with root package name */
    private Class<?> f46190b;

    /* renamed from: c, reason: collision with root package name */
    private Object f46191c;

    @SuppressLint({"PrivateApi"})
    public q(Context context) throws ClassNotFoundException {
        this.f46189a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f46190b = cls;
            this.f46191c = cls.newInstance();
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
        }
    }

    private String b() {
        return (String) this.f46190b.getMethod("getOAID", Context.class).invoke(this.f46191c, this.f46189a);
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        Exception e2;
        if (this.f46189a == null || cVar == null) {
            return;
        }
        if (this.f46190b == null || this.f46191c == null) {
            e2 = new com.ubix.ssp.ad.e.a0.c0.e("Xiaomi IdProvider not exists");
        } else {
            try {
                String strB = b();
                if (strB == null || strB.length() == 0) {
                    throw new com.ubix.ssp.ad.e.a0.c0.e("OAID query failed");
                }
                com.ubix.ssp.ad.e.a0.c0.f.a("OAID query success: " + strB);
                cVar.a(strB);
                return;
            } catch (Exception e3) {
                e2 = e3;
                com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            }
        }
        cVar.a(e2);
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        return this.f46191c != null;
    }
}
