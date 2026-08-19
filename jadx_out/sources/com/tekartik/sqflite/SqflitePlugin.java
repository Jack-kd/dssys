package com.tekartik.sqflite;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.tekartik.sqflite.SqflitePlugin;
import h1.AbstractC1433F;
import h1.C1444k;
import h1.p;
import h1.s;
import i1.AbstractC1448a;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
public class SqflitePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: i, reason: collision with root package name */
    public static String f45522i;

    /* renamed from: m, reason: collision with root package name */
    public static p f45526m;

    /* renamed from: b, reason: collision with root package name */
    public Context f45527b;

    /* renamed from: c, reason: collision with root package name */
    public MethodChannel f45528c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map f45517d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public static final Map f45518e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public static final Object f45519f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static final Object f45520g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public static int f45521h = 0;

    /* renamed from: j, reason: collision with root package name */
    public static int f45523j = 0;

    /* renamed from: k, reason: collision with root package name */
    public static int f45524k = 1;

    /* renamed from: l, reason: collision with root package name */
    public static int f45525l = 0;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ C1444k f45529b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MethodChannel.Result f45530c;

        public a(C1444k c1444k, MethodChannel.Result result) {
            this.f45529b = c1444k;
            this.f45530c = result;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (SqflitePlugin.f45520g) {
                SqflitePlugin.this.l(this.f45529b);
            }
            this.f45530c.success(null);
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ C1444k f45532b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f45533c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ MethodChannel.Result f45534d;

        public b(C1444k c1444k, String str, MethodChannel.Result result) {
            this.f45532b = c1444k;
            this.f45533c = str;
            this.f45534d = result;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (SqflitePlugin.f45520g) {
                C1444k c1444k = this.f45532b;
                if (c1444k != null) {
                    SqflitePlugin.this.l(c1444k);
                }
                try {
                    s.c(SqflitePlugin.f45521h);
                    C1444k.p(this.f45533c);
                } catch (Exception e2) {
                    Log.e("Sqflite", "error " + e2 + " while closing database " + SqflitePlugin.f45525l);
                }
            }
            this.f45534d.success(null);
        }
    }

    public SqflitePlugin() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[Catch: all -> 0x003e, Exception -> 0x004c, TryCatch #1 {Exception -> 0x004c, blocks: (B:16:0x0040, B:18:0x0048, B:21:0x004e), top: B:45:0x0040, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004e A[Catch: all -> 0x003e, Exception -> 0x004c, TRY_LEAVE, TryCatch #1 {Exception -> 0x004c, blocks: (B:16:0x0040, B:18:0x0048, B:21:0x004e), top: B:45:0x0040, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void d(boolean r2, java.lang.String r3, io.flutter.plugin.common.MethodChannel.Result r4, java.lang.Boolean r5, h1.C1444k r6, io.flutter.plugin.common.MethodCall r7, boolean r8, int r9) {
        /*
            java.lang.Object r0 = com.tekartik.sqflite.SqflitePlugin.f45520g
            monitor-enter(r0)
            if (r2 != 0) goto L40
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L3e
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L3e
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L3e
            java.lang.String r2 = r2.getParent()     // Catch: java.lang.Throwable -> L3e
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3e
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L3e
            if (r2 != 0) goto L40
            boolean r2 = r1.mkdirs()     // Catch: java.lang.Throwable -> L3e
            if (r2 != 0) goto L40
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L3e
            if (r2 != 0) goto L40
            java.lang.String r2 = "sqlite_error"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3e
            r5.<init>()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r6 = "open_failed "
            r5.append(r6)     // Catch: java.lang.Throwable -> L3e
            r5.append(r3)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L3e
            r5 = 0
            r4.error(r2, r3, r5)     // Catch: java.lang.Throwable -> L3e
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            return
        L3e:
            r2 = move-exception
            goto L8d
        L40:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L4c
            boolean r2 = r2.equals(r5)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L4c
            if (r2 == 0) goto L4e
            r6.M()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L4c
            goto L51
        L4c:
            r2 = move-exception
            goto L83
        L4e:
            r6.L()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L4c
        L51:
            java.lang.Object r2 = com.tekartik.sqflite.SqflitePlugin.f45519f     // Catch: java.lang.Throwable -> L3e
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L3e
            if (r8 == 0) goto L62
            java.util.Map r5 = com.tekartik.sqflite.SqflitePlugin.f45517d     // Catch: java.lang.Throwable -> L60
            java.lang.Integer r7 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L60
            r5.put(r3, r7)     // Catch: java.lang.Throwable -> L60
            goto L62
        L60:
            r3 = move-exception
            goto L81
        L62:
            java.util.Map r3 = com.tekartik.sqflite.SqflitePlugin.f45518e     // Catch: java.lang.Throwable -> L60
            java.lang.Integer r5 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L60
            r3.put(r5, r6)     // Catch: java.lang.Throwable -> L60
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L60
            int r2 = r6.f50754d     // Catch: java.lang.Throwable -> L3e
            boolean r2 = h1.s.b(r2)     // Catch: java.lang.Throwable -> L3e
            if (r2 == 0) goto L77
            r6.B()     // Catch: java.lang.Throwable -> L3e
        L77:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            r2 = 0
            java.util.Map r2 = p(r9, r2, r2)
            r4.success(r2)
            return
        L81:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L60
            throw r3     // Catch: java.lang.Throwable -> L3e
        L83:
            j1.d r3 = new j1.d     // Catch: java.lang.Throwable -> L3e
            r3.<init>(r7, r4)     // Catch: java.lang.Throwable -> L3e
            r6.E(r2, r3)     // Catch: java.lang.Throwable -> L3e
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            return
        L8d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tekartik.sqflite.SqflitePlugin.d(boolean, java.lang.String, io.flutter.plugin.common.MethodChannel$Result, java.lang.Boolean, h1.k, io.flutter.plugin.common.MethodCall, boolean, int):void");
    }

    public static /* synthetic */ void g(MethodCall methodCall, C1444k c1444k, MethodChannel.Result result) {
        try {
            c1444k.f50759i.setLocale(AbstractC1433F.e((String) methodCall.argument("locale")));
            result.success(null);
        } catch (Exception e2) {
            result.error("sqlite_error", "Error calling setLocale: " + e2.getMessage(), null);
        }
    }

    private Context getContext() {
        return this.f45527b;
    }

    public static boolean o(String str) {
        return str == null || str.equals(":memory:");
    }

    public static Map p(int i2, boolean z2, boolean z3) {
        HashMap map = new HashMap();
        map.put("id", Integer.valueOf(i2));
        if (z2) {
            map.put("recovered", Boolean.TRUE);
        }
        if (z3) {
            map.put("recoveredInTransaction", Boolean.TRUE);
        }
        return map;
    }

    public final void A(final MethodCall methodCall, final MethodChannel.Result result) {
        final int i2;
        C1444k c1444k;
        final String str = (String) methodCall.argument("path");
        final Boolean bool = (Boolean) methodCall.argument("readOnly");
        final boolean zO = o(str);
        boolean z2 = (Boolean.FALSE.equals(methodCall.argument("singleInstance")) || zO) ? false : true;
        if (z2) {
            synchronized (f45519f) {
                try {
                    if (s.c(f45521h)) {
                        Objects.toString(f45517d.keySet());
                    }
                    Integer num = (Integer) f45517d.get(str);
                    if (num != null && (c1444k = (C1444k) f45518e.get(num)) != null) {
                        if (c1444k.f50759i.isOpen()) {
                            if (s.c(f45521h)) {
                                c1444k.B();
                                c1444k.F();
                            }
                            result.success(p(num.intValue(), true, c1444k.F()));
                            return;
                        }
                        if (s.c(f45521h)) {
                            c1444k.B();
                        }
                    }
                } finally {
                }
            }
        }
        Object obj = f45519f;
        synchronized (obj) {
            i2 = f45525l + 1;
            f45525l = i2;
        }
        final C1444k c1444k2 = new C1444k(this.f45527b, str, i2, z2, f45521h);
        synchronized (obj) {
            try {
                if (f45526m == null) {
                    p pVarA = p.a("Sqflite", f45524k, f45523j);
                    f45526m = pVarA;
                    pVarA.start();
                    if (s.b(c1444k2.f50754d)) {
                        c1444k2.B();
                    }
                }
                c1444k2.f50758h = f45526m;
                if (s.b(c1444k2.f50754d)) {
                    c1444k2.B();
                }
                final boolean z3 = z2;
                f45526m.b(c1444k2, new Runnable() { // from class: h1.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        SqflitePlugin.d(zO, str, result, bool, c1444k2, methodCall, z3, i2);
                    }
                });
            } finally {
            }
        }
    }

    public void B(MethodCall methodCall, MethodChannel.Result result) {
        Object objArgument = methodCall.argument("androidThreadPriority");
        if (objArgument != null) {
            f45523j = ((Integer) objArgument).intValue();
        }
        Object objArgument2 = methodCall.argument("androidThreadCount");
        if (objArgument2 != null && !objArgument2.equals(Integer.valueOf(f45524k))) {
            f45524k = ((Integer) objArgument2).intValue();
            p pVar = f45526m;
            if (pVar != null) {
                pVar.d();
                f45526m = null;
            }
        }
        Integer numA = s.a(methodCall);
        if (numA != null) {
            f45521h = numA.intValue();
        }
        result.success(null);
    }

    public final void C(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.x
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.query(new j1.d(methodCall, result));
            }
        });
    }

    public final void D(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.v
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.N(new j1.d(methodCall, result));
            }
        });
    }

    public final void E(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.y
            @Override // java.lang.Runnable
            public final void run() {
                SqflitePlugin.g(methodCall, c1444kN, result);
            }
        });
    }

    public final void F(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.B
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.update(new j1.d(methodCall, result));
            }
        });
    }

    public final void l(C1444k c1444k) {
        try {
            if (s.b(c1444k.f50754d)) {
                c1444k.B();
            }
            c1444k.l();
        } catch (Exception e2) {
            Log.e("Sqflite", "error " + e2 + " while closing database " + f45525l);
        }
        synchronized (f45519f) {
            try {
                if (f45518e.isEmpty() && f45526m != null) {
                    if (s.b(c1444k.f50754d)) {
                        c1444k.B();
                    }
                    f45526m.d();
                    f45526m = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final C1444k m(int i2) {
        return (C1444k) f45518e.get(Integer.valueOf(i2));
    }

    public final C1444k n(MethodCall methodCall, MethodChannel.Result result) {
        int iIntValue = ((Integer) methodCall.argument("id")).intValue();
        C1444k c1444kM = m(iIntValue);
        if (c1444kM != null) {
            return c1444kM;
        }
        result.error("sqlite_error", "database_closed " + iIntValue, null);
        return null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        q(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f45527b = null;
        this.f45528c.setMethodCallHandler(null);
        this.f45528c = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        switch (str) {
            case "execute":
                x(methodCall, result);
                break;
            case "closeDatabase":
                s(methodCall, result);
                break;
            case "options":
                B(methodCall, result);
                break;
            case "insert":
                z(methodCall, result);
                break;
            case "update":
                F(methodCall, result);
                break;
            case "androidSetLocale":
                E(methodCall, result);
                break;
            case "deleteDatabase":
                w(methodCall, result);
                break;
            case "debugMode":
                v(methodCall, result);
                break;
            case "openDatabase":
                A(methodCall, result);
                break;
            case "batch":
                r(methodCall, result);
                break;
            case "debug":
                u(methodCall, result);
                break;
            case "query":
                C(methodCall, result);
                break;
            case "databaseExists":
                t(methodCall, result);
                break;
            case "queryCursorNext":
                D(methodCall, result);
                break;
            case "getPlatformVersion":
                result.success("Android " + Build.VERSION.RELEASE);
                break;
            case "getDatabasesPath":
                y(methodCall, result);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    public final void q(Context context, BinaryMessenger binaryMessenger) {
        this.f45527b = context;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "com.tekartik.sqflite", StandardMethodCodec.INSTANCE, binaryMessenger.makeBackgroundTaskQueue());
        this.f45528c = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    public final void r(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.C
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.h(methodCall, result);
            }
        });
    }

    public final void s(MethodCall methodCall, MethodChannel.Result result) {
        Integer num = (Integer) methodCall.argument("id");
        num.intValue();
        C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        if (s.b(c1444kN.f50754d)) {
            c1444kN.B();
        }
        String str = c1444kN.f50752b;
        synchronized (f45519f) {
            try {
                f45518e.remove(num);
                if (c1444kN.f50751a) {
                    f45517d.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f45526m.b(c1444kN, new a(c1444kN, result));
    }

    public final void t(MethodCall methodCall, MethodChannel.Result result) {
        result.success(Boolean.valueOf(C1444k.y((String) methodCall.argument("path"))));
    }

    public final void u(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("cmd");
        HashMap map = new HashMap();
        if ("get".equals(str)) {
            int i2 = f45521h;
            if (i2 > 0) {
                map.put("logLevel", Integer.valueOf(i2));
            }
            Map map2 = f45518e;
            if (!map2.isEmpty()) {
                HashMap map3 = new HashMap();
                for (Map.Entry entry : map2.entrySet()) {
                    C1444k c1444k = (C1444k) entry.getValue();
                    HashMap map4 = new HashMap();
                    map4.put("path", c1444k.f50752b);
                    map4.put("singleInstance", Boolean.valueOf(c1444k.f50751a));
                    int i3 = c1444k.f50754d;
                    if (i3 > 0) {
                        map4.put("logLevel", Integer.valueOf(i3));
                    }
                    map3.put(((Integer) entry.getKey()).toString(), map4);
                }
                map.put("databases", map3);
            }
        }
        result.success(map);
    }

    public final void v(MethodCall methodCall, MethodChannel.Result result) {
        AbstractC1448a.f50816a = Boolean.TRUE.equals(methodCall.arguments());
        AbstractC1448a.f50818c = AbstractC1448a.f50817b && AbstractC1448a.f50816a;
        if (!AbstractC1448a.f50816a) {
            f45521h = 0;
        } else if (AbstractC1448a.f50818c) {
            f45521h = 2;
        } else if (AbstractC1448a.f50816a) {
            f45521h = 1;
        }
        result.success(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(io.flutter.plugin.common.MethodCall r7, io.flutter.plugin.common.MethodChannel.Result r8) {
        /*
            r6 = this;
            java.lang.String r0 = "path"
            java.lang.Object r7 = r7.argument(r0)
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r0 = com.tekartik.sqflite.SqflitePlugin.f45519f
            monitor-enter(r0)
            int r1 = com.tekartik.sqflite.SqflitePlugin.f45521h     // Catch: java.lang.Throwable -> L1d
            boolean r1 = h1.s.c(r1)     // Catch: java.lang.Throwable -> L1d
            if (r1 == 0) goto L1f
            java.util.Map r1 = com.tekartik.sqflite.SqflitePlugin.f45517d     // Catch: java.lang.Throwable -> L1d
            java.util.Set r1 = r1.keySet()     // Catch: java.lang.Throwable -> L1d
            java.util.Objects.toString(r1)     // Catch: java.lang.Throwable -> L1d
            goto L1f
        L1d:
            r7 = move-exception
            goto L63
        L1f:
            java.util.Map r1 = com.tekartik.sqflite.SqflitePlugin.f45517d     // Catch: java.lang.Throwable -> L1d
            java.lang.Object r2 = r1.get(r7)     // Catch: java.lang.Throwable -> L1d
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: java.lang.Throwable -> L1d
            if (r2 == 0) goto L50
            java.util.Map r3 = com.tekartik.sqflite.SqflitePlugin.f45518e     // Catch: java.lang.Throwable -> L1d
            java.lang.Object r4 = r3.get(r2)     // Catch: java.lang.Throwable -> L1d
            h1.k r4 = (h1.C1444k) r4     // Catch: java.lang.Throwable -> L1d
            if (r4 == 0) goto L50
            android.database.sqlite.SQLiteDatabase r5 = r4.f50759i     // Catch: java.lang.Throwable -> L1d
            boolean r5 = r5.isOpen()     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto L50
            int r5 = com.tekartik.sqflite.SqflitePlugin.f45521h     // Catch: java.lang.Throwable -> L1d
            boolean r5 = h1.s.c(r5)     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto L49
            r4.B()     // Catch: java.lang.Throwable -> L1d
            r4.F()     // Catch: java.lang.Throwable -> L1d
        L49:
            r3.remove(r2)     // Catch: java.lang.Throwable -> L1d
            r1.remove(r7)     // Catch: java.lang.Throwable -> L1d
            goto L51
        L50:
            r4 = 0
        L51:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1d
            com.tekartik.sqflite.SqflitePlugin$b r0 = new com.tekartik.sqflite.SqflitePlugin$b
            r0.<init>(r4, r7, r8)
            h1.p r7 = com.tekartik.sqflite.SqflitePlugin.f45526m
            if (r7 == 0) goto L5f
            r7.b(r4, r0)
            return
        L5f:
            r0.run()
            return
        L63:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1d
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tekartik.sqflite.SqflitePlugin.w(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
    }

    public final void x(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.A
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.w(new j1.d(methodCall, result));
            }
        });
    }

    public void y(MethodCall methodCall, MethodChannel.Result result) {
        if (f45522i == null) {
            f45522i = this.f45527b.getDatabasePath("tekartik_sqflite.db").getParent();
        }
        result.success(f45522i);
    }

    public final void z(final MethodCall methodCall, final MethodChannel.Result result) {
        final C1444k c1444kN = n(methodCall, result);
        if (c1444kN == null) {
            return;
        }
        f45526m.b(c1444kN, new Runnable() { // from class: h1.w
            @Override // java.lang.Runnable
            public final void run() {
                c1444kN.insert(new j1.d(methodCall, result));
            }
        });
    }

    public SqflitePlugin(Context context) {
        this.f45527b = context.getApplicationContext();
    }
}
