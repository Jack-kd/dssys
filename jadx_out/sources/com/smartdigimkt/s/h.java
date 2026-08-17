package com.smartdigimkt.s;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes5.dex */
public final class h implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f43091a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.q.a f43092b;

    /* renamed from: c, reason: collision with root package name */
    public final f f43093c;

    public h(Context context, a aVar, f fVar) {
        if (context instanceof Application) {
            this.f43091a = context;
        } else {
            this.f43091a = context.getApplicationContext();
        }
        this.f43092b = aVar;
        this.f43093c = fVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        componentName.getClassName();
        try {
            try {
                this.f43093c.getClass();
                String strA = f.a(iBinder);
                if (strA == null || strA.isEmpty()) {
                    throw new RuntimeException("OAID acquire failed");
                }
                if ("oaid".equalsIgnoreCase(strA)) {
                    throw new RuntimeException("Invalid OAID");
                }
                this.f43092b.a(strA, false);
                try {
                    this.f43091a.unbindService(this);
                    componentName.getClassName();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                try {
                    this.f43091a.unbindService(this);
                    componentName.getClassName();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                throw th;
            }
        } catch (Exception e4) {
            this.f43092b.a(e4.getMessage());
            try {
                this.f43091a.unbindService(this);
                componentName.getClassName();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        componentName.getClassName();
    }
}
