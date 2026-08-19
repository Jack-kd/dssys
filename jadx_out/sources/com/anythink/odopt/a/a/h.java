package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.anythink.odopt.a.a.g;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f10569a = "OaidAidlUtil";

    /* renamed from: b, reason: collision with root package name */
    private static final String f10570b = "com.huawei.hwid";

    /* renamed from: c, reason: collision with root package name */
    private static final String f10571c = "com.uodis.opendevice.OPENIDS_SERVICE";

    /* renamed from: d, reason: collision with root package name */
    private Context f10572d;

    /* renamed from: e, reason: collision with root package name */
    private ServiceConnection f10573e;

    /* renamed from: f, reason: collision with root package name */
    private g f10574f;

    /* renamed from: g, reason: collision with root package name */
    private com.anythink.odopt.a.a f10575g;

    public final class a implements ServiceConnection {
        public /* synthetic */ a(h hVar, byte b3) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            h.this.f10574f = g.a.a(iBinder);
            try {
                if (h.this.f10574f != null) {
                    try {
                        if (h.this.f10575g != null) {
                            h.this.f10575g.a(h.this.f10574f.a(), h.this.f10574f.b());
                        }
                    } catch (RemoteException e2) {
                        if (h.this.f10575g != null) {
                            h.this.f10575g.a(e2.getMessage());
                        }
                    } catch (Exception e3) {
                        if (h.this.f10575g != null) {
                            h.this.f10575g.a(e3.getMessage());
                        }
                    }
                }
            } finally {
                h.c(h.this);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            h.this.f10574f = null;
        }

        private a() {
        }
    }

    public h(Context context) {
        this.f10572d = context;
    }

    public static /* synthetic */ void c(h hVar) {
        ServiceConnection serviceConnection;
        Context context = hVar.f10572d;
        if (context == null || (serviceConnection = hVar.f10573e) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        hVar.f10574f = null;
        hVar.f10572d = null;
        hVar.f10575g = null;
    }

    private void b() {
        ServiceConnection serviceConnection;
        Context context = this.f10572d;
        if (context == null || (serviceConnection = this.f10573e) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        this.f10574f = null;
        this.f10572d = null;
        this.f10575g = null;
    }

    private void a() {
        com.anythink.odopt.a.a aVar;
        if (this.f10572d == null) {
            com.anythink.odopt.a.a aVar2 = this.f10575g;
            if (aVar2 != null) {
                aVar2.a("mContext is null.");
                return;
            }
            return;
        }
        this.f10573e = new a(this, (byte) 0);
        Intent intent = new Intent(f10571c);
        intent.setPackage(f10570b);
        if (this.f10572d.bindService(intent, this.f10573e, 1) || (aVar = this.f10575g) == null) {
            return;
        }
        aVar.a("Service binding failed.");
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        com.anythink.odopt.a.a aVar2;
        this.f10575g = aVar;
        if (this.f10572d == null) {
            if (aVar != null) {
                aVar.a("mContext is null.");
                return;
            }
            return;
        }
        this.f10573e = new a(this, (byte) 0);
        Intent intent = new Intent(f10571c);
        intent.setPackage(f10570b);
        if (this.f10572d.bindService(intent, this.f10573e, 1) || (aVar2 = this.f10575g) == null) {
            return;
        }
        aVar2.a("Service binding failed.");
    }
}
