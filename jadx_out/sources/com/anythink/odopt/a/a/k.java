package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.anythink.core.common.v.af;
import com.anythink.odopt.a.a.i;
import com.anythink.odopt.a.a.j;
import com.umeng.analytics.pro.bk;

/* loaded from: classes2.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f10581a = "k";

    /* renamed from: b, reason: collision with root package name */
    private Context f10582b;

    /* renamed from: c, reason: collision with root package name */
    private ServiceConnection f10583c;

    /* renamed from: d, reason: collision with root package name */
    private j f10584d;

    /* renamed from: e, reason: collision with root package name */
    private com.anythink.odopt.a.a f10585e;

    public final class a extends i.a {
        public /* synthetic */ a(k kVar, byte b3) {
            this();
        }

        @Override // com.anythink.odopt.a.a.i
        public final void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        private a() {
        }

        @Override // com.anythink.odopt.a.a.i
        public final void a(int i2, Bundle bundle) {
            if (i2 != 0 || bundle == null) {
                return;
            }
            String string = bundle.getString(bk.c.f48849b);
            if (k.this.f10585e != null) {
                if (TextUtils.isEmpty(string)) {
                    k.this.f10585e.a("oaid is empty.");
                } else {
                    k.this.f10585e.a(string, false);
                }
            }
        }
    }

    public final class b implements ServiceConnection {
        private b() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                k.this.f10584d = j.a.a(iBinder);
                if (k.this.f10584d != null) {
                    k.this.f10584d.a(new a(k.this, (byte) 0));
                }
            } finally {
                try {
                } finally {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            k.this.f10584d = null;
        }

        public /* synthetic */ b(k kVar, byte b3) {
            this();
        }
    }

    public k(Context context) {
        this.f10582b = context;
    }

    public static /* synthetic */ void c(k kVar) {
        ServiceConnection serviceConnection;
        Context context = kVar.f10582b;
        if (context == null || (serviceConnection = kVar.f10583c) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        kVar.f10584d = null;
        kVar.f10582b = null;
        kVar.f10585e = null;
    }

    private void b() {
        ServiceConnection serviceConnection;
        Context context = this.f10582b;
        if (context == null || (serviceConnection = this.f10583c) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        this.f10584d = null;
        this.f10582b = null;
        this.f10585e = null;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        com.anythink.odopt.a.a aVar2;
        byte b3 = 0;
        try {
            if (this.f10582b != null) {
                String str = (String) Class.forName(af.b("frp1klkrqru1dgv1lghqwlilhu1DgyhuwlvlqjLgFolhqw'Lqir")).getDeclaredField("id").get(Class.forName(af.b("frp1klkrqru1dgv1lghqwlilhu1DgyhuwlvlqjLgFolhqw")).getMethod(af.b("jhwDgyhuwlvlqjLgLqir"), Context.class).invoke(null, this.f10582b.getApplicationContext()));
                if (!TextUtils.isEmpty(str)) {
                    aVar.a(str, false);
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.f10585e = aVar;
        if (this.f10582b == null) {
            return;
        }
        this.f10583c = new b(this, b3);
        try {
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            if (this.f10582b.bindService(intent, this.f10583c, 1) || (aVar2 = this.f10585e) == null) {
                return;
            }
            aVar2.a("Service binding failed.");
        } catch (Throwable th) {
            com.anythink.odopt.a.a aVar3 = this.f10585e;
            if (aVar3 != null) {
                aVar3.a(th.getMessage());
            }
        }
    }

    private void a() {
        com.anythink.odopt.a.a aVar;
        if (this.f10582b == null) {
            return;
        }
        this.f10583c = new b(this, (byte) 0);
        try {
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            if (this.f10582b.bindService(intent, this.f10583c, 1) || (aVar = this.f10585e) == null) {
                return;
            }
            aVar.a("Service binding failed.");
        } catch (Throwable th) {
            com.anythink.odopt.a.a aVar2 = this.f10585e;
            if (aVar2 != null) {
                aVar2.a(th.getMessage());
            }
        }
    }
}
