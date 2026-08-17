package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes4.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static final int f31213a = 3;

    /* renamed from: b, reason: collision with root package name */
    private static q f31214b = null;

    /* renamed from: g, reason: collision with root package name */
    private static final String f31215g = "1";

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f31216c = false;

    /* renamed from: d, reason: collision with root package name */
    private dn f31217d;

    /* renamed from: e, reason: collision with root package name */
    private Context f31218e;

    /* renamed from: f, reason: collision with root package name */
    private t f31219f;

    private q(Context context) {
        this.f31218e = context;
        this.f31217d = dn.a(context);
        this.f31219f = t.a(context);
    }

    private static void d() {
        try {
            dn dnVarA = dn.a();
            if (dnVarA != null) {
                dnVarA.b("W_S_V", "1");
            }
        } catch (Exception unused) {
        }
    }

    public void c() {
        for (s sVar : this.f31219f.a()) {
            r rVarA = r.a();
            if ((rVarA != null ? rVarA.d(sVar.f31235c) : null) == null) {
                a(sVar.f31233a, sVar.f31236d, (PackageInfo) null);
            }
        }
    }

    public static synchronized q a(Context context) {
        try {
            if (f31214b == null) {
                f31214b = new q(context);
            }
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            throw th;
        }
        return f31214b;
    }

    public synchronized void b() {
        String canonicalPath;
        try {
            if (this.f31216c) {
                return;
            }
            this.f31216c = true;
            for (s sVar : this.f31219f.a()) {
                try {
                    canonicalPath = this.f31218e.getFilesDir().getCanonicalPath();
                } catch (Throwable unused) {
                    canonicalPath = null;
                }
                if (canonicalPath != null) {
                    sVar.f31245m = canonicalPath + bg.f30864j + sVar.f31233a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(sVar.f31245m);
                    sb.append("/lib");
                    dl.c(sb.toString());
                    dl.c(sVar.f31245m);
                    dl.c(canonicalPath + "/.tmp");
                }
            }
            this.f31219f.b();
            if (this.f31217d.b(dn.f31143d)) {
                this.f31219f.c();
            } else {
                this.f31217d.a(dn.f31143d, Boolean.TRUE, true);
            }
            n.a().a(new u(this.f31218e, 1, false));
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        d();
        if (WeaponHI.isLoad) {
            b();
        } else {
            WeaponHI.iD();
        }
    }

    public synchronized boolean a(int i2, String str, PackageInfo packageInfo) {
        return a(i2, str, null, false, packageInfo);
    }

    private synchronized boolean a(int i2, String str, String str2, boolean z2, PackageInfo packageInfo) {
        if (z2) {
            if (this.f31219f.c(i2) != 1) {
                return false;
            }
        }
        s sVarA = this.f31219f.a(i2);
        if (sVarA == null) {
            this.f31219f.b(i2, -1);
            return false;
        }
        if (!dl.a(new File(sVarA.f31237e))) {
            this.f31219f.b(i2, -1);
            return false;
        }
        if (packageInfo != null) {
            sVarA.f31250r = packageInfo;
        }
        r rVarA = r.a(this.f31218e.getApplicationContext(), true);
        if (!rVarA.a(sVarA, false)) {
            this.f31219f.b(i2, -1);
            rVarA.a(sVarA.f31237e);
            return false;
        }
        s sVarC = rVarA.c(sVarA.f31237e);
        sVarC.f31234b = 1;
        sVarC.f31248p = 1;
        this.f31219f.a(sVarC);
        return true;
    }

    public void b(String str) {
        r rVarA;
        try {
            if (!TextUtils.isEmpty(str) && (rVarA = r.a()) != null) {
                rVarA.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2) {
        this.f31219f.a(str);
        File file = new File(str2);
        if (file.exists()) {
            file.delete();
        }
    }

    public void a(final String str) {
        try {
            n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.q.1
                @Override // java.lang.Runnable
                public void run() {
                    final r rVarA;
                    try {
                        if (!TextUtils.isEmpty(str) && (rVarA = r.a(q.this.f31218e.getApplicationContext(), true)) != null) {
                            final s sVarD = rVarA.d(str);
                            if (sVarD == null) {
                                s sVarB = q.this.f31219f.b(str);
                                if (sVarB != null) {
                                    q.this.a(str, sVarB.f31237e);
                                    return;
                                }
                                return;
                            }
                            new Timer().schedule(new TimerTask() { // from class: com.kuaishou.weapon.p0.q.1.1
                                @Override // java.util.TimerTask, java.lang.Runnable
                                public void run() {
                                    rVarA.b(str);
                                    q.this.f31219f.a(str);
                                    File file = new File(sVarD.f31237e);
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                }
                            }, 600000L);
                            rVarA.b(str);
                            q.this.f31219f.a(str);
                            File file = new File(sVarD.f31237e);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.kuaishou.weapon.p0.q] */
    public boolean a(s sVar, String str, String str2) {
        q qVar;
        r rVarA;
        if (sVar == null) {
            return false;
        }
        File file = new File(sVar.f31237e);
        if (!dl.a(file)) {
            return false;
        }
        try {
            if (!this.f31219f.b(sVar.f31233a)) {
                this.f31219f.a(sVar);
            }
            rVarA = r.a(this.f31218e.getApplicationContext(), true);
            t tVar = this.f31219f;
            qVar = sVar.f31233a;
            tVar.a(qVar, 1);
            b(sVar.f31235c);
        } catch (Throwable unused) {
            qVar = this;
        }
        if (!rVarA.a(sVar, true)) {
            file.delete();
            a(sVar.f31233a, sVar.f31236d, null, true, null);
            this.f31219f.a(sVar.f31233a, 0);
            return false;
        }
        qVar = this;
        sVar = rVarA.c(sVar.f31237e);
        if (sVar == null) {
            qVar.f31219f.a(sVar.f31233a, 0);
            return false;
        }
        try {
            s sVarA = qVar.f31219f.a(sVar.f31233a);
            File file2 = (sVarA == null || sVarA.f31236d.equals(sVar.f31236d)) ? null : new File(sVarA.f31237e);
            sVar.f31234b = 1;
            sVar.f31248p = 1;
            if (qVar.f31219f.a(sVar) > 0 && file2 != null && file2.exists()) {
                file2.delete();
            }
            qVar.f31219f.a(sVar.f31233a, 0);
            return true;
        } catch (Throwable unused2) {
            return false;
        }
    }
}
