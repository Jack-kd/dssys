package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.beizi.fusion.d7;

/* loaded from: classes2.dex */
public class yg {

    /* renamed from: a, reason: collision with root package name */
    private Context f17688a;

    /* renamed from: b, reason: collision with root package name */
    bh f17689b;

    /* renamed from: c, reason: collision with root package name */
    ServiceConnection f17690c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            yg.this.f17689b = new zg(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public yg(Context context) {
        this.f17688a = context;
    }

    public void a(d7.b bVar) {
        bh bhVar;
        this.f17688a.getPackageName();
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        if (!this.f17688a.bindService(intent, this.f17690c, 1) || (bhVar = this.f17689b) == null) {
            return;
        }
        String strA = bhVar.a();
        if (bVar != null) {
            bVar.a(strA);
        }
    }
}
