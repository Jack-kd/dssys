package com.anythink.odopt.a.a;

import android.app.KeyguardManager;
import android.content.Context;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private Context f10553a;

    /* renamed from: b, reason: collision with root package name */
    private KeyguardManager f10554b;

    public d(Context context) {
        this.f10553a = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        Context context = this.f10553a;
        if (context == null) {
            return;
        }
        if (this.f10554b == null) {
            this.f10554b = (KeyguardManager) context.getSystemService("keyguard");
        }
        KeyguardManager keyguardManager = this.f10554b;
        if (keyguardManager == null) {
            aVar.a("KeyguardManager not found");
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f10554b, null);
            if (objInvoke != null) {
                aVar.a(objInvoke.toString(), false);
            } else {
                aVar.a("CoolSea OAID obtain failed.");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
