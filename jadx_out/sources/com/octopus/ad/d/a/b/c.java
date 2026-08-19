package com.octopus.ad.d.a.b;

import android.app.KeyguardManager;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes4.dex */
public class c implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33971a;

    /* renamed from: b, reason: collision with root package name */
    private final KeyguardManager f33972b;

    public c(Context context) {
        this.f33971a = context;
        this.f33972b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        KeyguardManager keyguardManager;
        if (this.f33971a == null || (keyguardManager = this.f33972b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f33972b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f33971a == null || cVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f33972b;
        if (keyguardManager == null) {
            cVar.a(new com.octopus.ad.d.a.e("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f33972b, null);
            if (objInvoke != null) {
                String string = objInvoke.toString();
                com.octopus.ad.d.a.f.a("OAID obtain success: " + string);
                cVar.a(string);
                return;
            }
            throw new com.octopus.ad.d.a.e("OAID obtain failed");
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
        }
    }
}
