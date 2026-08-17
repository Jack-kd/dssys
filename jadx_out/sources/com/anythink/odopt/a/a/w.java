package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.odopt.a.a.v;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    v f10628a;

    /* renamed from: b, reason: collision with root package name */
    ServiceConnection f10629b = new ServiceConnection() { // from class: com.anythink.odopt.a.a.w.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            w.this.f10628a = new v.a(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private Context f10630c;

    public w(Context context) {
        this.f10630c = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        v vVar;
        try {
            Intent intent = new Intent();
            intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
            if (!this.f10630c.bindService(intent, this.f10629b, 1) || (vVar = this.f10628a) == null) {
                aVar.a("Service unbind");
            } else {
                aVar.a(vVar.a(), false);
            }
        } catch (Throwable th) {
            aVar.a(th.getMessage());
        }
    }
}
