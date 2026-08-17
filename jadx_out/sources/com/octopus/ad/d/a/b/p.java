package com.octopus.ad.d.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public class p implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33994a;

    /* renamed from: b, reason: collision with root package name */
    private Class<?> f33995b;

    /* renamed from: c, reason: collision with root package name */
    private Object f33996c;

    @SuppressLint({"PrivateApi"})
    public p(Context context) throws ClassNotFoundException {
        this.f33994a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f33995b = cls;
            this.f33996c = cls.newInstance();
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
        }
    }

    private String b() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return (String) this.f33995b.getMethod("getOAID", Context.class).invoke(this.f33996c, this.f33994a);
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        return this.f33996c != null;
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33994a == null || cVar == null) {
            return;
        }
        if (this.f33995b == null || this.f33996c == null) {
            cVar.a(new com.octopus.ad.d.a.e("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new com.octopus.ad.d.a.e("OAID query failed");
            }
            com.octopus.ad.d.a.f.a("OAID query success: " + strB);
            cVar.a(strB);
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            cVar.a(e2);
        }
    }
}
