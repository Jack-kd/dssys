package com.beizi.fusion;

import android.app.KeyguardManager;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class h6 implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14245a;

    /* renamed from: b, reason: collision with root package name */
    private final KeyguardManager f14246b;

    public h6(Context context) {
        this.f14245a = context;
        this.f14246b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.beizi.fusion.ae
    public boolean a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        KeyguardManager keyguardManager;
        if (this.f14245a == null || (keyguardManager = this.f14246b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f14246b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f14245a == null || mcVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f14246b;
        if (keyguardManager == null) {
            mcVar.a(new wj("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f14246b, null);
            if (objInvoke != null) {
                String string = objInvoke.toString();
                bk.a("OAID obtain success: " + string);
                mcVar.a(string);
                return;
            }
            throw new wj("OAID obtain failed");
        } catch (Exception e2) {
            bk.a(e2);
        }
    }
}
