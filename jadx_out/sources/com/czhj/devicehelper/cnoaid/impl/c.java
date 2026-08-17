package com.czhj.devicehelper.cnoaid.impl;

import android.app.KeyguardManager;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes3.dex */
public class c implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29127a;

    /* renamed from: b, reason: collision with root package name */
    private final KeyguardManager f29128b;

    public c(Context context) {
        this.f29127a = context;
        this.f29128b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f29127a == null || cVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f29128b;
        if (keyguardManager == null) {
            cVar.a(new com.czhj.devicehelper.cnoaid.f("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f29128b, null);
            if (objInvoke == null) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID obtain failed");
            }
            String string = objInvoke.toString();
            com.czhj.devicehelper.cnoaid.g.a("OAID obtain success: " + string);
            cVar.a(string);
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        KeyguardManager keyguardManager;
        if (this.f29127a == null || (keyguardManager = this.f29128b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f29128b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            return false;
        }
    }
}
