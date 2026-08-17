package com.baidu.mobads.sdk.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.io.File;
import java.io.FileInputStream;
import java.lang.Thread;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class cb {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11278a = "ApkLoader";

    /* renamed from: b, reason: collision with root package name */
    protected static Thread.UncaughtExceptionHandler f11279b = null;

    /* renamed from: c, reason: collision with root package name */
    public static final String f11280c = "__badApkVersion__9.450";

    /* renamed from: d, reason: collision with root package name */
    public static final String f11281d = "previousProxyVersion";

    /* renamed from: e, reason: collision with root package name */
    protected static final String f11282e = "__xadsdk__remote__final__";

    /* renamed from: f, reason: collision with root package name */
    protected static final String f11283f = "bdxadsdk.jar";

    /* renamed from: g, reason: collision with root package name */
    protected static final String f11284g = "__xadsdk__remote__final__builtin__.jar";

    /* renamed from: h, reason: collision with root package name */
    protected static final String f11285h = "__xadsdk__remote__final__builtinversion__.jar";

    /* renamed from: i, reason: collision with root package name */
    protected static final String f11286i = "__xadsdk__remote__final__downloaded__.jar";

    /* renamed from: j, reason: collision with root package name */
    protected static final String f11287j = "__xadsdk__remote__final__running__.jar";

    /* renamed from: k, reason: collision with root package name */
    public static final String f11288k = "OK";

    /* renamed from: l, reason: collision with root package name */
    public static final String f11289l = "ERROR";

    /* renamed from: m, reason: collision with root package name */
    public static final String f11290m = "APK_INFO";

    /* renamed from: n, reason: collision with root package name */
    public static final String f11291n = "CODE";

    /* renamed from: o, reason: collision with root package name */
    public static final String f11292o = "success";

    /* renamed from: p, reason: collision with root package name */
    protected static volatile bp f11293p = null;

    /* renamed from: q, reason: collision with root package name */
    protected static volatile bp f11294q = null;

    /* renamed from: r, reason: collision with root package name */
    protected static volatile Class f11295r = null;

    /* renamed from: s, reason: collision with root package name */
    protected static String f11296s = null;

    /* renamed from: t, reason: collision with root package name */
    protected static final Handler f11297t = new cc(Looper.getMainLooper());

    /* renamed from: x, reason: collision with root package name */
    private static final String f11298x = "baidu_sdk_remote";

    /* renamed from: A, reason: collision with root package name */
    private boolean f11299A;

    /* renamed from: B, reason: collision with root package name */
    private CopyOnWriteArrayList<c> f11300B;

    /* renamed from: C, reason: collision with root package name */
    private c f11301C;

    /* renamed from: u, reason: collision with root package name */
    protected Handler f11302u;

    /* renamed from: v, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    protected final Handler f11303v;

    /* renamed from: w, reason: collision with root package name */
    private bz f11304w;

    /* renamed from: y, reason: collision with root package name */
    private final Context f11305y;

    /* renamed from: z, reason: collision with root package name */
    private bv f11306z;

    public static final class a extends Exception {

        /* renamed from: a, reason: collision with root package name */
        private static final long f11307a = 2978543166232984104L;

        public a(String str) {
            bv.a().c(str);
        }
    }

    public static final class b extends Exception {

        /* renamed from: a, reason: collision with root package name */
        private static final long f11308a = -7838296421993681751L;

        public b(String str) {
            bv.a().c(str);
        }
    }

    public interface c {
        void a(boolean z2);
    }

    public cb(Activity activity) {
        this(activity.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            File[] fileArrListFiles = this.f11305y.getFilesDir().listFiles();
            int i2 = 0;
            while (fileArrListFiles != null) {
                if (i2 >= fileArrListFiles.length) {
                    return;
                }
                if (fileArrListFiles[i2].getAbsolutePath().contains(f11282e) && fileArrListFiles[i2].getAbsolutePath().endsWith("dex")) {
                    fileArrListFiles[i2].delete();
                }
                i2++;
            }
        } catch (Exception e2) {
            bv.a().c(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedPreferences m() {
        return this.f11305y.getSharedPreferences(z.aN, 0);
    }

    private boolean n() {
        String string = m().getString(f11281d, null);
        return string == null || !string.equals(a());
    }

    private boolean o() {
        try {
            if (bt.a(c())) {
                return true;
            }
            return bt.a(f());
        } catch (Exception e2) {
            this.f11306z.a(e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p() throws a {
        bu buVar = new bu(f(), this.f11305y);
        if (!bt.a(buVar)) {
            return false;
        }
        try {
            if (n()) {
                throw new a("XAdApkLoader upgraded, drop stale downloaded file, use built-in instead");
            }
            synchronized (this) {
                try {
                    this.f11306z.a(f11278a, "loadDownloadedOrBuiltInApk len=" + buVar.length() + ", path=" + buVar.getAbsolutePath());
                    b(buVar);
                    double d2 = (double) m().getFloat(f11280c, -1.0f);
                    this.f11306z.a(f11278a, "downloadedApkFile.getApkVersion(): " + buVar.c() + ", badApkVersion: " + d2);
                    if (buVar.c() == d2) {
                        throw new a("downloaded file marked bad, drop it and use built-in");
                    }
                    this.f11306z.a(f11278a, "loaded: " + buVar.getPath());
                } finally {
                }
            }
            return true;
        } catch (a e2) {
            this.f11306z.a(f11278a, "load downloaded apk failed: " + e2.toString() + ", fallback to built-in");
            if (buVar.exists()) {
                buVar.delete();
            }
            k();
            return false;
        }
    }

    public int h() {
        return this.f11305y.getApplicationContext().getSharedPreferences("baidu_cloudControlConfig", 0).getInt("baidu_cloudConfig_pktype", 1);
    }

    public IXAdContainerFactory i() {
        return a(f11293p);
    }

    public IXAdContainerFactory j() {
        return a(f11294q);
    }

    public void k() {
        if (f11293p != null) {
            f11293p.b();
            f11293p = null;
        }
    }

    public cb(Context context) {
        this.f11306z = bv.a();
        this.f11299A = false;
        this.f11302u = f11297t;
        this.f11300B = new CopyOnWriteArrayList<>();
        this.f11303v = new cd(this, Looper.getMainLooper());
        this.f11305y = context;
        c(context);
        if (f11279b == null) {
            f11279b = cp.a(context);
            cp.a(context).a(new ce(this));
        }
        if (Thread.getDefaultUncaughtExceptionHandler() instanceof cp) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(f11279b);
    }

    public static String f() {
        if (TextUtils.isEmpty(f11296s)) {
            return "";
        }
        return f11296s + f11286i;
    }

    public void e() throws a, b {
        this.f11306z.a(f11278a, "start load assets file");
        d(this.f11305y);
        String strC = c();
        bu buVar = new bu(strC, this.f11305y);
        if (!bt.a(buVar)) {
            throw new b("loadBuiltInApk failed: " + strC);
        }
        this.f11306z.a(f11278a, "assets file can read ,will use it ");
        if (c(buVar)) {
            b(true);
        }
    }

    public void g() throws a {
        if (h() != 2 ? p() : false) {
            this.f11306z.a(f11278a, "load downloaded file success,use it");
            b(true);
            return;
        }
        this.f11306z.a(f11278a, "no downloaded file yet, use built-in apk file");
        try {
            e();
        } catch (b e2) {
            this.f11306z.a(f11278a, "loadBuiltInApk failed: " + e2.toString());
            throw new a("load built-in apk failed" + e2.toString());
        }
    }

    private static void c(Context context) {
        if (TextUtils.isEmpty(f11296s)) {
            f11296s = context.getDir(f11298x, 0).getAbsolutePath() + ServiceReference.DELIMITER;
        }
    }

    public static String d() {
        if (TextUtils.isEmpty(f11296s)) {
            return "";
        }
        return f11296s + f11285h;
    }

    public void b() {
        new File(f()).delete();
    }

    private void b(bu buVar) throws Throwable {
        this.f11306z.a(f11278a, "len=" + buVar.length() + ", path=" + buVar.getAbsolutePath());
        if (f11293p == null) {
            String strA = a(this.f11305y);
            bu buVar2 = new bu(strA, this.f11305y);
            if (buVar2.exists()) {
                buVar2.delete();
            }
            try {
                bt.a(new FileInputStream(buVar), strA);
            } catch (Exception e2) {
                this.f11306z.c(e2);
            }
            f11293p = new bp(buVar2.b(), this.f11305y);
            try {
                IXAdContainerFactory iXAdContainerFactoryA = f11293p.a();
                this.f11306z.a(f11278a, "preloaded apk.version=" + iXAdContainerFactoryA.getRemoteVersion());
                return;
            } catch (a e3) {
                this.f11306z.a(f11278a, "preload local apk " + buVar.getAbsolutePath() + " failed, msg:" + e3.getMessage() + ", v=" + f11293p.f11212b);
                a(e3.getMessage());
                throw e3;
            }
        }
        this.f11306z.a(f11278a, "mApkBuilder already initialized, version: " + f11293p.f11212b);
    }

    public static String c() {
        if (TextUtils.isEmpty(f11296s)) {
            return "";
        }
        return f11296s + f11284g;
    }

    private static synchronized void d(Context context) throws b {
        try {
            try {
                String strC = c();
                double dB = b(strC);
                bv.a().a(f11278a, "copy assets,compare version=" + Double.valueOf("9.450") + "remote=" + dB);
                if (Double.valueOf("9.450").doubleValue() != dB) {
                    bu buVar = new bu(strC, context);
                    if (buVar.exists()) {
                        buVar.delete();
                    }
                    bt.a(context, f11283f, strC);
                }
            } catch (Exception e2) {
                throw new b("loadBuiltInApk failed: " + e2.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String a() {
        return "9.450";
    }

    @TargetApi(9)
    public void a(String str) {
        if (f11293p != null) {
            SharedPreferences.Editor editorEdit = m().edit();
            editorEdit.putFloat(f11280c, (float) f11293p.f11212b);
            editorEdit.apply();
        }
    }

    private boolean c(bu buVar) throws a {
        synchronized (this) {
            b(buVar);
            this.f11306z.a(f11278a, "loaded: " + buVar.getPath());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2) {
        Message messageObtainMessage = this.f11302u.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putBoolean(f11292o, z2);
        messageObtainMessage.setData(bundle);
        messageObtainMessage.what = 0;
        this.f11302u.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z2) {
        double d2;
        if (z2) {
            try {
                d2 = f11293p.f11212b;
            } catch (Exception unused) {
                return;
            }
        } else {
            d2 = 0.0d;
        }
        ao.a(d2, new ch(this, d2), new ci(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(bu buVar) throws a {
        Class<?> clsB = buVar.b();
        synchronized (this) {
            f11294q = new bp(clsB, this.f11305y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z2, String str) {
        try {
            cp.a(this.f11305y).c();
            CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f11300B;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                for (int i2 = 0; i2 < this.f11300B.size(); i2++) {
                    c cVar = this.f11300B.get(i2);
                    if (cVar != null) {
                        cVar.a(z2);
                    }
                }
            }
            CopyOnWriteArrayList<c> copyOnWriteArrayList2 = this.f11300B;
            if (copyOnWriteArrayList2 != null) {
                copyOnWriteArrayList2.clear();
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z2) {
        if (!z2 && !o()) {
            this.f11299A = true;
        } else {
            a(z2, z2 ? "apk Successfully Loaded" : "apk Load Failed");
        }
        if (this.f11299A) {
            be.a().a((j) new cf(this, z2));
        } else {
            be.a().a(new cg(this, z2), 5L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c cVar, Handler handler) throws a, b {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f11300B;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.contains(cVar)) {
            this.f11300B.add(cVar);
        }
        this.f11302u = handler;
        if (f11293p == null) {
            g();
        } else {
            b(true);
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f11296s)) {
            f11296s = context.getDir(f11298x, 0).getAbsolutePath() + ServiceReference.DELIMITER;
        }
        if (TextUtils.isEmpty(f11296s)) {
            return "";
        }
        return f11296s + f11287j;
    }

    public static double b(Context context) throws Throwable {
        try {
            c(context);
            double dB = b(f());
            String strD = d();
            if (Double.valueOf("9.450").doubleValue() > b(strD)) {
                bu buVar = new bu(strD, context);
                if (buVar.exists()) {
                    buVar.delete();
                }
                bt.a(context, f11283f, strD);
            }
            return Math.max(dB, b(d()));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(bz bzVar) {
        if (bzVar.a().booleanValue()) {
            bx bxVarA = bx.a(this.f11305y, bzVar, f11296s, this.f11303v);
            if (!bxVarA.isAlive()) {
                this.f11306z.a(f11278a, "XApkDownloadThread starting ...");
                bxVarA.start();
            } else {
                this.f11306z.a(f11278a, "XApkDownloadThread already started");
                bxVarA.a(bzVar.c());
            }
        }
    }

    @TargetApi(9)
    public void a(c cVar, Handler handler) {
        be.a().a((j) new cj(this, cVar, handler));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0045 A[EXC_TOP_SPLITTER, PHI: r2
      0x0045: PHI (r2v2 java.util.jar.JarFile) = (r2v3 java.util.jar.JarFile), (r2v4 java.util.jar.JarFile) binds: [B:35:0x0064, B:22:0x0043] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double b(java.lang.String r5) throws java.lang.Throwable {
        /*
            r0 = 0
            r2 = 0
            java.lang.Boolean r3 = com.baidu.mobads.sdk.internal.co.f11353d     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            if (r3 == 0) goto L4e
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            boolean r5 = com.baidu.mobads.sdk.internal.bt.a(r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            if (r5 == 0) goto L43
            java.util.jar.JarFile r5 = new java.util.jar.JarFile     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            java.util.jar.Manifest r2 = r5.getManifest()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            java.util.jar.Attributes r2 = r2.getMainAttributes()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            java.lang.String r3 = "Implementation-Version"
            java.lang.String r2 = r2.getValue(r3)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            double r2 = java.lang.Double.parseDouble(r2)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 <= 0) goto L3a
            r5.close()     // Catch: java.lang.Exception -> L35
            return r2
        L35:
            r5 = move-exception
            r5.printStackTrace()
            return r2
        L3a:
            r2 = r5
            goto L43
        L3c:
            r0 = move-exception
            r2 = r5
            goto L59
        L3f:
            r2 = r5
            goto L64
        L41:
            r0 = move-exception
            goto L59
        L43:
            if (r2 == 0) goto L67
        L45:
            r2.close()     // Catch: java.lang.Exception -> L49
            goto L67
        L49:
            r5 = move-exception
            r5.printStackTrace()
            goto L67
        L4e:
            java.lang.String r5 = "9.450"
            java.lang.Double r5 = java.lang.Double.valueOf(r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            double r0 = r5.doubleValue()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L64
            return r0
        L59:
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.lang.Exception -> L5f
            goto L63
        L5f:
            r5 = move-exception
            r5.printStackTrace()
        L63:
            throw r0
        L64:
            if (r2 == 0) goto L67
            goto L45
        L67:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.cb.b(java.lang.String):double");
    }

    public void a(c cVar) {
        a(cVar, f11297t);
    }

    private IXAdContainerFactory a(bp bpVar) {
        if (bpVar != null) {
            try {
                return bpVar.a();
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
