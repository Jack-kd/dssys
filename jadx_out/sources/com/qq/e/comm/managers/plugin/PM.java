package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class PM {
    public static final int CALL_START_BY_DEV = 1;

    /* renamed from: t, reason: collision with root package name */
    private static final Map<Class<?>, String> f35334t = new b();

    /* renamed from: b, reason: collision with root package name */
    private final Context f35336b;

    /* renamed from: c, reason: collision with root package name */
    private String f35337c;

    /* renamed from: d, reason: collision with root package name */
    private File f35338d;

    /* renamed from: e, reason: collision with root package name */
    private volatile int f35339e;

    /* renamed from: f, reason: collision with root package name */
    private DexClassLoader f35340f;

    /* renamed from: g, reason: collision with root package name */
    private RandomAccessFile f35341g;

    /* renamed from: h, reason: collision with root package name */
    private FileLock f35342h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f35343i;

    /* renamed from: j, reason: collision with root package name */
    private volatile POFactory f35344j;

    /* renamed from: k, reason: collision with root package name */
    private int f35345k;

    /* renamed from: l, reason: collision with root package name */
    private int f35346l;

    /* renamed from: m, reason: collision with root package name */
    private Future<Boolean> f35347m;

    /* renamed from: o, reason: collision with root package name */
    private boolean f35349o;

    /* renamed from: p, reason: collision with root package name */
    private String f35350p;

    /* renamed from: q, reason: collision with root package name */
    private JSONObject f35351q;

    /* renamed from: s, reason: collision with root package name */
    private int f35353s;

    /* renamed from: a, reason: collision with root package name */
    final ExecutorService f35335a = Executors.newSingleThreadExecutor();

    /* renamed from: n, reason: collision with root package name */
    private boolean f35348n = false;

    /* renamed from: r, reason: collision with root package name */
    private final com.qq.e.comm.util.b f35352r = new com.qq.e.comm.util.b();

    public class a implements Callable<Boolean> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            long jCurrentTimeMillis = System.currentTimeMillis();
            PM.this.f35352r.c();
            h.b(PM.this.f35336b);
            PM.this.f35352r.b();
            PM.this.i();
            PM.this.f35352r.b();
            if (!PM.this.f35343i) {
                PM pm = PM.this;
                pm.f35343i = pm.tryLockUpdate();
            }
            PM.this.f35352r.b();
            if (PM.this.h()) {
                PM.this.f35346l = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                PM.this.e();
            }
            PM.this.f35352r.a();
            PM.this.f35345k = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
            return Boolean.TRUE;
        }
    }

    public class b extends HashMap<Class<?>, String> {
        public b() {
            put(POFactory.class, "com.qq.e.comm.plugin.POFactoryImpl");
        }
    }

    public PM(Context context, f fVar) {
        this.f35336b = context.getApplicationContext();
        i.a(context);
        g();
    }

    private void b() {
    }

    private void g() {
        this.f35348n = false;
        this.f35347m = this.f35335a.submit(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        try {
            System.currentTimeMillis();
            boolean zF = f();
            this.f35352r.b();
            if (zF) {
                this.f35352r.b();
                System.currentTimeMillis();
                return true;
            }
            boolean zD = d();
            this.f35352r.b();
            return zD;
        } catch (Throwable th) {
            try {
                GDTLogger.e("插件加载出现异常", th);
                com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
                System.currentTimeMillis();
                return false;
            } finally {
                System.currentTimeMillis();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        SharedPreferences sharedPreferences = this.f35336b.getSharedPreferences("start_crash", 0);
        if (sharedPreferences.getInt("crash_count", 0) >= 2) {
            this.f35349o = true;
            sharedPreferences.edit().remove("crash_count").commit();
            GDTLogger.e("加载本地插件");
        }
    }

    private void j() {
    }

    private void k() throws ExecutionException, InterruptedException {
        Future<Boolean> future = this.f35347m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    public <T> T getFactory(Class<T> cls) throws ExecutionException, InterruptedException, e {
        k();
        Objects.toString(cls);
        ClassLoader classLoaderC = c();
        getClass().getClassLoader();
        if (classLoaderC == null) {
            throw new e("Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:" + cls);
        }
        try {
            String str = f35334t.get(cls);
            if (TextUtils.isEmpty(str)) {
                throw new e("factory  implemention name is not specified for interface:" + cls.getName());
            }
            Class<?> clsLoadClass = classLoaderC.loadClass(str);
            T tCast = cls.cast(clsLoadClass.getDeclaredMethod("getInstance", Context.class, JSONObject.class).invoke(clsLoadClass, this.f35336b, a()));
            Objects.toString(tCast);
            return tCast;
        } catch (Throwable th) {
            throw new e("Fail to getfactory implement instance for interface:" + cls.getName(), th);
        }
    }

    public POFactory getPOFactory() throws e {
        return getPOFactory(true, false);
    }

    public int getPluginVersion() throws ExecutionException, InterruptedException {
        k();
        return this.f35339e;
    }

    public JSONObject getStartCaller(int i2) throws JSONException {
        if (this.f35351q == null) {
            this.f35351q = new JSONObject();
        }
        try {
            this.f35351q.put("scr", i2);
        } catch (JSONException unused) {
        }
        return this.f35351q;
    }

    public boolean tryLockUpdate() {
        try {
            File fileD = h.d(this.f35336b);
            if (!fileD.exists()) {
                fileD.createNewFile();
                h.a("lock", fileD);
            }
            if (!fileD.exists()) {
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileD, "rw");
            this.f35341g = randomAccessFile;
            FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
            this.f35342h = fileLockTryLock;
            if (fileLockTryLock == null) {
                return false;
            }
            this.f35341g.writeByte(37);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private ClassLoader c() {
        return Sig.ASSET_PLUGIN_SIG == null ? getClass().getClassLoader() : this.f35340f;
    }

    private boolean d() {
        if (!this.f35343i) {
            return false;
        }
        try {
            this.f35353s = 1;
            Context context = this.f35336b;
            com.qq.e.comm.managers.plugin.b.a(context, h.h(context), h.i(this.f35336b));
            this.f35337c = Sig.ASSET_PLUGIN_SIG;
            this.f35338d = h.h(this.f35336b);
            this.f35339e = SDKStatus.getBuildInPluginVersion();
            return true;
        } catch (Throwable th) {
            GDTLogger.e("插件初始化失败 ");
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        File file = this.f35338d;
        if (file != null) {
            file.getAbsolutePath();
        }
        if (this.f35337c == null || this.f35338d == null) {
            this.f35340f = null;
            return;
        }
        try {
            this.f35340f = new DexClassLoader(this.f35338d.getAbsolutePath(), h.c(this.f35336b).getAbsolutePath(), null, getClass().getClassLoader());
            j();
        } catch (Throwable th) {
            GDTLogger.e("插件ClassLoader构造发生异常", th);
            b();
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
        }
    }

    private boolean f() {
        if (this.f35349o) {
            return false;
        }
        if (this.f35343i) {
            g gVar = new g(h.e(this.f35336b), h.f(this.f35336b));
            if (gVar.a(this.f35336b, false)) {
                this.f35353s = 3;
                h.a(this.f35336b);
                gVar.a(h.h(this.f35336b), h.i(this.f35336b), this.f35336b);
            }
        }
        g gVar2 = new g(h.h(this.f35336b), h.i(this.f35336b));
        if (!gVar2.a(this.f35336b, true)) {
            return false;
        }
        if (gVar2.b() < SDKStatus.getBuildInPluginVersion()) {
            SDKStatus.getBuildInPluginVersion();
            return false;
        }
        if (this.f35353s == 0) {
            this.f35353s = 2;
        }
        this.f35337c = gVar2.a();
        this.f35339e = gVar2.b();
        this.f35338d = h.h(this.f35336b);
        this.f35350p = gVar2.c();
        this.f35348n = true;
        return true;
    }

    public POFactory getPOFactory(boolean z2, boolean z3) throws e {
        if (this.f35344j == null) {
            synchronized (this) {
                if (this.f35344j == null) {
                    try {
                        this.f35344j = (POFactory) getFactory(POFactory.class);
                    } catch (e e2) {
                        if (!this.f35348n) {
                            throw e2;
                        }
                        GDTLogger.e("插件加载错误，回退到内置版本");
                        this.f35349o = true;
                        g();
                        this.f35344j = (POFactory) getFactory(POFactory.class);
                    }
                }
            }
        }
        if (z2 && this.f35344j != null) {
            this.f35344j.start(getStartCaller(z3 ? 0 : 2));
        }
        return this.f35344j;
    }

    private JSONObject a() throws ExecutionException, JSONException, InterruptedException {
        JSONObject jSONObject = new JSONObject();
        try {
            int pluginVersion = getPluginVersion();
            if (pluginVersion > 10000) {
                jSONObject.put("vas", this.f35350p);
            }
            jSONObject.put(com.umeng.analytics.pro.g.f49333T, pluginVersion);
            jSONObject.put("sig", this.f35337c);
            jSONObject.put("appId", com.qq.e.comm.managers.a.b().a());
            jSONObject.put("pn", i.a(this.f35336b));
            jSONObject.put("ict", this.f35345k);
            jSONObject.put("mup", this.f35343i);
            jSONObject.put("ifg", this.f35353s);
            jSONObject.put("pct", this.f35346l);
            jSONObject.put("tcr", this.f35352r.toString());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
