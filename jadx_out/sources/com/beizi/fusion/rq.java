package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
class rq implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f16104a;

    /* renamed from: b, reason: collision with root package name */
    private Class f16105b;

    /* renamed from: c, reason: collision with root package name */
    private Object f16106c;

    public rq(Context context) throws ClassNotFoundException {
        this.f16104a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f16105b = cls;
            this.f16106c = cls.newInstance();
        } catch (Exception e2) {
            bk.a(e2);
        }
    }

    private String b() {
        return (String) this.f16105b.getMethod("getOAID", Context.class).invoke(this.f16106c, this.f16104a);
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        return this.f16106c != null;
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f16104a == null || mcVar == null) {
            return;
        }
        if (this.f16105b == null || this.f16106c == null) {
            mcVar.a(new wj("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new wj("OAID query failed");
            }
            bk.a("OAID query success: " + strB);
            mcVar.a(strB);
        } catch (Exception e2) {
            bk.a(e2);
            mcVar.a(e2);
        }
    }
}
