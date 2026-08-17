package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.odopt.a.a.e;

/* loaded from: classes2.dex */
public final class f implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private Context f10563a;

    /* renamed from: b, reason: collision with root package name */
    private com.anythink.odopt.a.a f10564b;

    public f(Context context) {
        this.f10563a = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        if (this.f10563a == null) {
            return;
        }
        this.f10564b = aVar;
        try {
            Intent intent = new Intent("android.service.action.msa");
            intent.setPackage("com.android.creator");
            if (this.f10563a.bindService(intent, this, 1)) {
                return;
            }
            aVar.a("Service binding failed.");
        } catch (Throwable th) {
            aVar.a(th.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            e eVarA = e.b.a(iBinder);
            if (eVarA != null) {
                this.f10564b.a(eVarA.b(), false);
            } else {
                this.f10564b.a("FreemeIdsSupplier == null");
            }
        } catch (Throwable th) {
            try {
                com.anythink.odopt.a.a aVar = this.f10564b;
                if (aVar != null) {
                    aVar.a(th.getMessage());
                }
                try {
                    this.f10563a.unbindService(this);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } finally {
                try {
                    this.f10563a.unbindService(this);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
