package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.odopt.a.a.r;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f10607a = "action.com.oplus.stdid.ID_SERVICE";

    /* renamed from: b, reason: collision with root package name */
    private static final String f10608b = "com.coloros.mcs";

    /* renamed from: c, reason: collision with root package name */
    private static final String f10609c = "com.oplus.stdid.IdentifyService";

    /* renamed from: d, reason: collision with root package name */
    private Context f10610d;

    /* renamed from: e, reason: collision with root package name */
    private r f10611e;

    /* renamed from: f, reason: collision with root package name */
    private com.anythink.odopt.a.a f10612f;

    /* renamed from: g, reason: collision with root package name */
    private String f10613g;

    /* renamed from: h, reason: collision with root package name */
    private ServiceConnection f10614h;

    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            q.this.f10611e = r.a.a(iBinder);
            q.a(q.this);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            q.this.f10611e = null;
        }

        public /* synthetic */ a(q qVar, byte b3) {
            this();
        }
    }

    public q(Context context) {
        this.f10610d = context;
    }

    private void b() {
        Context context = this.f10610d;
        if (context == null) {
            return;
        }
        try {
            context.unbindService(this.f10614h);
        } catch (Throwable unused) {
        }
        this.f10611e = null;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        this.f10612f = aVar;
        this.f10614h = new a(this, (byte) 0);
        try {
            Intent intent = new Intent(f10607a);
            intent.setComponent(new ComponentName(f10608b, f10609c));
            if (this.f10610d.bindService(intent, this.f10614h, 1)) {
                return;
            }
            aVar.a("Service binding failed.");
        } catch (Throwable th) {
            aVar.a("Bind Service failed: " + th.getMessage());
        }
    }

    private void a() {
        try {
            Context context = this.f10610d;
            if (context == null) {
                com.anythink.odopt.a.a aVar = this.f10612f;
                if (aVar != null) {
                    aVar.a("context is null.");
                }
                return;
            }
            if (this.f10611e == null) {
                com.anythink.odopt.a.a aVar2 = this.f10612f;
                if (aVar2 != null) {
                    aVar2.a("realmeOaidInterface is null.");
                }
                return;
            }
            String packageName = context.getPackageName();
            if (this.f10613g == null) {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(this.f10610d.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
                }
                this.f10613g = sb.toString();
            }
            String strA = this.f10611e.a(packageName, this.f10613g, "OUID");
            com.anythink.odopt.a.a aVar3 = this.f10612f;
            if (aVar3 != null) {
                aVar3.a(strA, false);
            }
        } catch (Throwable th) {
            try {
                com.anythink.odopt.a.a aVar4 = this.f10612f;
                if (aVar4 != null) {
                    aVar4.a("realme get oaid failed: " + th.getMessage());
                }
            } finally {
                b();
            }
        }
    }

    public static /* synthetic */ void a(q qVar) {
        try {
            Context context = qVar.f10610d;
            if (context == null) {
                com.anythink.odopt.a.a aVar = qVar.f10612f;
                if (aVar != null) {
                    aVar.a("context is null.");
                }
                return;
            }
            if (qVar.f10611e == null) {
                com.anythink.odopt.a.a aVar2 = qVar.f10612f;
                if (aVar2 != null) {
                    aVar2.a("realmeOaidInterface is null.");
                }
                return;
            }
            String packageName = context.getPackageName();
            if (qVar.f10613g == null) {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(qVar.f10610d.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b3 : bArrDigest) {
                    sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
                }
                qVar.f10613g = sb.toString();
            }
            String strA = qVar.f10611e.a(packageName, qVar.f10613g, "OUID");
            com.anythink.odopt.a.a aVar3 = qVar.f10612f;
            if (aVar3 != null) {
                aVar3.a(strA, false);
            }
        } catch (Throwable th) {
            try {
                com.anythink.odopt.a.a aVar4 = qVar.f10612f;
                if (aVar4 != null) {
                    aVar4.a("realme get oaid failed: " + th.getMessage());
                }
            } finally {
                qVar.b();
            }
        }
    }
}
