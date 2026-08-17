package com.czhj.devicehelper.cnoaid.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
class t implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29181a;

    /* renamed from: b, reason: collision with root package name */
    private Class<?> f29182b;

    /* renamed from: c, reason: collision with root package name */
    private Object f29183c;

    @SuppressLint({"PrivateApi"})
    public t(Context context) throws ClassNotFoundException {
        this.f29181a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f29182b = cls;
            this.f29183c = cls.newInstance();
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
        }
    }

    private String b() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return (String) this.f29182b.getMethod("getOAID", Context.class).invoke(this.f29183c, this.f29181a);
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        Exception e2;
        if (this.f29181a == null || cVar == null) {
            return;
        }
        if (this.f29182b == null || this.f29183c == null) {
            e2 = new com.czhj.devicehelper.cnoaid.f("Xiaomi IdProvider not exists");
        } else {
            try {
                String strB = b();
                if (strB == null || strB.length() == 0) {
                    throw new com.czhj.devicehelper.cnoaid.f("OAID query failed");
                }
                com.czhj.devicehelper.cnoaid.g.a("OAID query success: " + strB);
                cVar.a(strB);
                return;
            } catch (Exception e3) {
                e2 = e3;
                com.czhj.devicehelper.cnoaid.g.a(e2);
            }
        }
        cVar.a(e2);
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        return this.f29183c != null;
    }
}
