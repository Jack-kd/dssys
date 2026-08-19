package com.sigmob.sdk.base.services;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Build;
import com.byazt.kc.AbsServerManager;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.services.f;
import com.sigmob.sdk.base.utils.y;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class b implements f.a {

    /* renamed from: c, reason: collision with root package name */
    private static final String f36544c = "BuriedPointConfig";

    /* renamed from: a, reason: collision with root package name */
    a f36545a;

    /* renamed from: b, reason: collision with root package name */
    g f36546b = g.STOP;

    public b() {
        if (this.f36545a == null) {
            this.f36545a = new a();
        }
    }

    public static void c() {
        y.b(com.sigmob.sdk.b.e(), f36544c, n.f36440c, Constants.sdf.format(new Date()));
    }

    private static List<PackageInfo> d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return AppPackageUtil.getPackageManager(context).getInstalledPackages(0);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Context context) {
        try {
            List<PackageInfo> listD = d(context);
            if (com.sigmob.sdk.base.utils.f.a(listD)) {
                return;
            }
            for (int i2 = 0; i2 < listD.size(); i2++) {
                PackageInfo packageInfo = listD.get(i2);
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    ad.a(packageInfo, 0);
                }
            }
            y.b(context, f36544c, n.f36439b, Constants.sdf.format(new Date()));
        } catch (Throwable th) {
            SigmobLog.e("update app info", th);
        }
    }

    private static void i() {
        final Context contextE = com.sigmob.sdk.b.e();
        if (c(contextE)) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.i
            @Override // java.lang.Runnable
            public final void run() {
                b.e(contextE);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void j() {
        /*
            com.sigmob.sdk.base.i r0 = com.sigmob.sdk.base.i.a()     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.i()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L44
            com.sigmob.windad.WindAds r0 = com.sigmob.windad.WindAds.sharedAds()     // Catch: java.lang.Throwable -> L45
            com.sigmob.windad.WindAdOptions r0 = r0.getOptions()     // Catch: java.lang.Throwable -> L45
            com.sigmob.sdk.base.o r1 = com.sigmob.sdk.base.o.a()     // Catch: java.lang.Throwable -> L45
            int r2 = r1.ab()     // Catch: java.lang.Throwable -> L45
            boolean r3 = r1.j()     // Catch: java.lang.Throwable -> L45
            boolean r1 = r1.Q()     // Catch: java.lang.Throwable -> L45
            r4 = 0
            if (r3 == 0) goto L26
            goto L3f
        L26:
            r3 = 1
            if (r2 == r3) goto L3e
            r5 = 2
            if (r2 == r5) goto L3f
            if (r0 == 0) goto L39
            com.sigmob.windad.WindCustomController r0 = r0.getCustomController()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L39
            boolean r0 = r0.isCanUseAppList()     // Catch: java.lang.Throwable -> L45
            goto L3a
        L39:
            r0 = r3
        L3a:
            if (r0 == 0) goto L3f
            if (r1 != 0) goto L3f
        L3e:
            r4 = r3
        L3f:
            if (r4 == 0) goto L44
            i()     // Catch: java.lang.Throwable -> L45
        L44:
            return
        L45:
            r0 = move-exception
            java.lang.String r1 = "BuriedPointManager getInstance"
            com.czhj.sdk.logger.SigmobLog.e(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.services.b.j():void");
    }

    public void a(Context context) {
        if (o.a().aa()) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.f36425K));
        if (Build.VERSION.SDK_INT >= 27) {
            intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.f36426L));
        }
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfQURERUQ="));
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.f36422H));
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.f36424J));
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        com.sigmob.sdk.base.utils.h.a(context, this.f36545a, intentFilter);
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        if (this.f36546b == g.RUNNING) {
            b(com.sigmob.sdk.b.e());
            this.f36546b = g.STOP;
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(o oVar, Context context) {
        int i2;
        List<String> listS = oVar.S();
        if (com.sigmob.sdk.base.utils.f.a(listS)) {
            return;
        }
        for (String str : listS) {
            boolean zB = false;
            if (oVar.J()) {
                zB = com.sigmob.sdk.base.utils.h.a(context, str);
                i2 = 0;
            } else if (oVar.K()) {
                zB = com.sigmob.sdk.base.utils.h.b(context, str);
                i2 = 1;
            } else {
                i2 = 0;
            }
            ad.a(str, zB, i2);
        }
        c();
    }

    public static void b() {
        try {
            j();
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    private static boolean c(Context context) {
        return y.a(context, f36544c, n.f36439b, "").equals(Constants.sdf.format(new Date()));
    }

    public static void d() {
        final Context contextE = com.sigmob.sdk.b.e();
        boolean zI = com.sigmob.sdk.base.i.a().i();
        if (contextE == null || !zI) {
            return;
        }
        final o oVarA = o.a();
        if (a() || !oVarA.L().booleanValue()) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.j
            @Override // java.lang.Runnable
            public final void run() {
                b.a(oVarA, contextE);
            }
        });
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        g gVar = this.f36546b;
        g gVar2 = g.RUNNING;
        if (gVar == gVar2) {
            return false;
        }
        a(com.sigmob.sdk.b.e());
        this.f36546b = gVar2;
        return true;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return this.f36546b;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static boolean a() {
        return y.a(com.sigmob.sdk.b.e(), f36544c, n.f36440c, "").equals(Constants.sdf.format(new Date()));
    }

    public void b(Context context) {
        context.unregisterReceiver(this.f36545a);
    }
}
