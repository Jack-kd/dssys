package com.smartdigimkt.r;

import android.app.KeyguardManager;
import android.content.Context;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42878a;

    /* renamed from: b, reason: collision with root package name */
    public KeyguardManager f42879b;

    public d(Context context) {
        this.f42878a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        Context context = this.f42878a;
        if (context != null) {
            if (this.f42879b == null) {
                this.f42879b = (KeyguardManager) context.getSystemService("keyguard");
            }
            KeyguardManager keyguardManager = this.f42879b;
            if (keyguardManager == null) {
                bVar.a("KeyguardManager not found");
                return;
            }
            try {
                Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f42879b, null);
                if (objInvoke != null) {
                    bVar.a(objInvoke.toString(), false);
                } else {
                    bVar.a("CoolSea OAID obtain failed.");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
