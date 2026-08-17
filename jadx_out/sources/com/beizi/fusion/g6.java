package com.beizi.fusion;

import android.app.KeyguardManager;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class g6 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14017a;

    /* renamed from: b, reason: collision with root package name */
    private final KeyguardManager f14018b;

    public g6(Context context) {
        this.f14017a = context;
        this.f14018b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.beizi.fusion.zd
    public boolean a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        KeyguardManager keyguardManager;
        if (this.f14017a == null || (keyguardManager = this.f14018b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f14018b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f14017a == null || lcVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f14018b;
        if (keyguardManager == null) {
            lcVar.a(new vj("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f14018b, null);
            if (objInvoke != null) {
                String string = objInvoke.toString();
                ak.a("OAID obtain success: " + string);
                lcVar.a(string);
                return;
            }
            throw new vj("OAID obtain failed");
        } catch (Exception e2) {
            ak.a(e2);
        }
    }
}
