package com.ubix.ssp.ad.e.a0.c0.h;

import android.app.KeyguardManager;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes5.dex */
public class c implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46156a;

    /* renamed from: b, reason: collision with root package name */
    private final KeyguardManager f46157b;

    public c(Context context) {
        this.f46156a = context;
        this.f46157b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f46156a == null || cVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f46157b;
        if (keyguardManager == null) {
            cVar.a(new com.ubix.ssp.ad.e.a0.c0.e("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f46157b, null);
            if (objInvoke == null) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("OAID obtain failed");
            }
            String string = objInvoke.toString();
            com.ubix.ssp.ad.e.a0.c0.f.a("OAID obtain success: " + string);
            cVar.a(string);
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        KeyguardManager keyguardManager;
        if (this.f46156a == null || (keyguardManager = this.f46157b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f46157b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            com.ubix.ssp.ad.e.a0.c0.f.a(th);
            return false;
        }
    }
}
