package com.beizi.fusion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.beizi.fusion.e7;

/* loaded from: classes2.dex */
public class xg {

    /* renamed from: a, reason: collision with root package name */
    private Context f17452a;

    /* renamed from: b, reason: collision with root package name */
    ch f17453b;

    /* renamed from: c, reason: collision with root package name */
    ServiceConnection f17454c = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            xg.this.f17453b = new ah(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public xg(Context context) {
        this.f17452a = context;
    }

    public void a(e7.a aVar) {
        ch chVar;
        this.f17452a.getPackageName();
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        if (!this.f17452a.bindService(intent, this.f17454c, 1) || (chVar = this.f17453b) == null) {
            return;
        }
        String strA = chVar.a();
        if (aVar != null) {
            aVar.a(strA);
        }
    }
}
