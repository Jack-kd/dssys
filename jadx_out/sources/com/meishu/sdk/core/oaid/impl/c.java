package com.meishu.sdk.core.oaid.impl;

import android.app.KeyguardManager;
import android.content.Context;
import com.meishu.sdk.core.oaid.OAIDException;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes4.dex */
public class c implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31689a;

    /* renamed from: b, reason: collision with root package name */
    public final KeyguardManager f31690b;

    public c(Context context) {
        this.f31689a = context;
        this.f31690b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        KeyguardManager keyguardManager;
        if (this.f31689a == null || (keyguardManager = this.f31690b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", null).invoke(this.f31690b, null);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f31689a == null || aVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.f31690b;
        if (keyguardManager == null) {
            ((com.meishu.sdk.core.utils.l) aVar).a(new OAIDException("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", null).invoke(this.f31690b, null);
            if (objInvoke != null) {
                ((com.meishu.sdk.core.utils.l) aVar).a(objInvoke.toString());
                return;
            }
            throw new OAIDException("OAID obtain failed");
        } catch (Exception unused) {
        }
    }
}
