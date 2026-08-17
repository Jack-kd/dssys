package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
class qq implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15833a;

    /* renamed from: b, reason: collision with root package name */
    private Class f15834b;

    /* renamed from: c, reason: collision with root package name */
    private Object f15835c;

    public qq(Context context) throws ClassNotFoundException {
        this.f15833a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f15834b = cls;
            this.f15835c = cls.newInstance();
        } catch (Exception e2) {
            ak.a(e2);
        }
    }

    private String b() {
        return (String) this.f15834b.getMethod("getOAID", Context.class).invoke(this.f15835c, this.f15833a);
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        return this.f15835c != null;
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f15833a == null || lcVar == null) {
            return;
        }
        if (this.f15834b == null || this.f15835c == null) {
            lcVar.a(new vj("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new vj("OAID query failed");
            }
            ak.a("OAID query success: " + strB);
            lcVar.a(strB);
        } catch (Exception e2) {
            ak.a(e2);
            lcVar.a(e2);
        }
    }
}
