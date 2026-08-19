package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.SystemClock;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class y implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f42921a;

    public y(z zVar) {
        this.f42921a = zVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c0 a0Var;
        Context context;
        y yVar;
        Context context2;
        z zVar = this.f42921a;
        int i2 = b0.f42875a;
        if (iBinder == null) {
            a0Var = null;
        } else {
            try {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
                a0Var = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c0)) ? new a0(iBinder) : (c0) iInterfaceQueryLocalInterface;
            } catch (Throwable unused) {
            }
        }
        zVar.f42924c = a0Var;
        z zVar2 = this.f42921a;
        zVar2.getClass();
        try {
            try {
            } catch (Throwable th) {
                try {
                    zVar2.a("", "get oaid failed: " + th.getMessage());
                    if (context == null) {
                        return;
                    } else {
                        yVar = zVar2.f42925d;
                    }
                } finally {
                    context = zVar2.f42922a;
                    if (context != null) {
                        try {
                            context.unbindService(zVar2.f42925d);
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
            if (zVar2.f42924c != null) {
                String strA = zVar2.a();
                if (!TextUtils.isEmpty(strA)) {
                    zVar2.a(strA, "");
                    context2 = zVar2.f42922a;
                    if (context2 != null) {
                        yVar = zVar2.f42925d;
                        context2.unbindService(yVar);
                    }
                    return;
                }
                try {
                    SystemClock.sleep(3000L);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                zVar2.a(zVar2.a(), "");
            } else {
                zVar2.a("", "get oaid failed: oppoOaidInterface is null.");
            }
            context2 = zVar2.f42922a;
            if (context2 != null) {
                yVar = zVar2.f42925d;
                context2.unbindService(yVar);
            }
        } catch (Throwable unused3) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f42921a.f42924c = null;
    }
}
