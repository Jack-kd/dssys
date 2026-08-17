package com.byazt.yk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.WorkRequest;
import com.byazt.au.DownloadHandleService;
import com.byazt.fn.d;
import com.byazt.fn.ky;
import com.byazt.fn.nu;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.byazt.ip.IDownloadHttpService;
import com.byazt.yk.n;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.Dispatcher;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 90, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public static volatile com.byazt.au.hp f27994a;
    public static final int as;

    /* renamed from: b, reason: collision with root package name */
    public static volatile eb f27995b;
    public static volatile ScheduledExecutorService cx;

    /* renamed from: d, reason: collision with root package name */
    public static volatile xs f27996d;
    public static volatile DownloadReceiver di;

    /* renamed from: e, reason: collision with root package name */
    public static volatile IDownloadHttpService f27997e;
    public static com.byazt.no.jx ea;
    public static volatile v eb;
    public static volatile ExecutorService ec;

    /* renamed from: f, reason: collision with root package name */
    public static int f27998f;
    public static volatile com.byazt.ip.s gu;
    public static int hd;
    public static volatile Context hp;
    public static volatile d hq;

    /* renamed from: j, reason: collision with root package name */
    public static volatile s f27999j;
    public static volatile IDownloadHttpService jl;
    public static volatile gu jx;

    /* renamed from: k, reason: collision with root package name */
    public static volatile jl f28000k;
    public static final int kg;

    /* renamed from: l, reason: collision with root package name */
    public static volatile e f28001l;
    public static volatile com.byazt.ip.a lv;

    /* renamed from: m, reason: collision with root package name */
    public static final int f28002m;
    public static final int mp;

    /* renamed from: ms, reason: collision with root package name */
    public static int f28003ms;

    /* renamed from: n, reason: collision with root package name */
    public static volatile ExecutorService f28004n;
    public static final List<Object> nd;
    public static volatile ExecutorService ns;

    /* renamed from: o, reason: collision with root package name */
    public static volatile ec f28005o;
    public static volatile n pu;

    /* renamed from: q, reason: collision with root package name */
    public static volatile hp f28006q;

    /* renamed from: r, reason: collision with root package name */
    public static volatile com.byazt.ip.a f28007r;
    public static final List<com.byazt.fn.gu> rz;

    /* renamed from: s, reason: collision with root package name */
    public static volatile v f28008s;
    public static volatile boolean su;
    public static volatile ExecutorService sz;

    /* renamed from: u, reason: collision with root package name */
    public static volatile ExecutorService f28009u;

    /* renamed from: v, reason: collision with root package name */
    public static volatile ExecutorService f28010v;
    public static vv vq;
    public static volatile ExecutorService vv;

    /* renamed from: w, reason: collision with root package name */
    public static volatile nu f28011w;
    public static volatile com.byazt.no.l wv;
    public static volatile ExecutorService xs;

    /* renamed from: y, reason: collision with root package name */
    public static boolean f28012y;
    public static boolean yr;
    public static boolean zx;
    public static volatile com.byazt.ip.s zy;
    public static volatile List<ky> ud = new ArrayList();
    public static volatile boolean nu = false;
    public static volatile OkHttpClient dy = null;
    public static final List<com.byazt.fn.zy> ky = new ArrayList();
    public static boolean xh = false;

    public interface hp {

        /* renamed from: com.byazt.yk.jx$hp$hp, reason: collision with other inner class name */
        public interface InterfaceC0421hp {
            void hp();
        }

        sz hp(InterfaceC0421hp interfaceC0421hp);

        v hp();

        zy l();
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        as = iAvailableProcessors;
        kg = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        mp = iAvailableProcessors;
        f28002m = iAvailableProcessors;
        f27998f = 8192;
        rz = new ArrayList();
        nd = new ArrayList();
        zx = true;
        f28012y = false;
        su = false;
    }

    private jx() {
    }

    public static com.byazt.ip.s a() {
        return gu;
    }

    public static ec as() {
        if (f28005o == null) {
            synchronized (jx.class) {
                try {
                    if (f28005o == null) {
                        f28005o = new com.byazt.au.e();
                    }
                } finally {
                }
            }
        }
        return f28005o;
    }

    public static synchronized jl b() {
        return f28000k;
    }

    public static com.byazt.ip.a cx() {
        if (f28007r == null) {
            synchronized (jx.class) {
                try {
                    if (f28007r == null) {
                        f28007r = new com.byazt.ip.a() { // from class: com.byazt.yk.jx.2
                            @Override // com.byazt.ip.a
                            public List<InetAddress> hp(String str) throws UnknownHostException {
                                return Dns.SYSTEM.lookup(str);
                            }
                        };
                    }
                } finally {
                }
            }
        }
        return f28007r;
    }

    public static v d() {
        if (f28008s == null) {
            synchronized (jx.class) {
                try {
                    if (f28008s == null) {
                        f28008s = f28006q.hp();
                    }
                } finally {
                }
            }
        }
        return f28008s;
    }

    public static e di() {
        if (f28001l == null) {
            synchronized (jx.class) {
                try {
                    if (f28001l == null) {
                        f28001l = new com.byazt.au.j();
                    }
                } finally {
                }
            }
        }
        return f28001l;
    }

    @NonNull
    public static JSONObject dy() {
        return (hq == null || hq.hp() == null) ? com.byazt.oy.w.f24278q : hq.hp();
    }

    public static boolean e() {
        return com.byazt.jb.hp.jx().hp("switch_not_auto_boot_service", f28012y ? 1 : 0) > 0;
    }

    public static com.byazt.no.l eb() {
        return wv;
    }

    public static OkHttpClient ec() {
        if (dy == null) {
            synchronized (jx.class) {
                try {
                    if (dy == null) {
                        dy = n().build();
                    }
                } finally {
                }
            }
        }
        return dy;
    }

    @NonNull
    public static com.byazt.no.jx f() {
        if (ea == null) {
            ea = new com.byazt.no.jx() { // from class: com.byazt.yk.jx.3
                @Override // com.byazt.no.jx
                public void hp(int i2, String str, JSONObject jSONObject) {
                }

                @Override // com.byazt.no.jx
                public void l(int i2, String str, JSONObject jSONObject) {
                }
            };
        }
        return ea;
    }

    public static synchronized xs gu() {
        return f27996d;
    }

    public static hp hd() {
        return f28006q;
    }

    public static void hp(vv vvVar) {
    }

    public static gu hq() {
        if (jx == null) {
            synchronized (jx.class) {
                try {
                    if (jx == null) {
                        jx = new com.byazt.au.q();
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public static IDownloadHttpService j() {
        return f27997e;
    }

    public static ExecutorService jl() {
        if (f28010v == null) {
            synchronized (jx.class) {
                try {
                    if (f28010v == null) {
                        int i2 = as;
                        com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.ez.hp("DownloadThreadPool-cpu-fixed", true));
                        try {
                            jVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                        f28010v = jVar;
                    }
                } finally {
                }
            }
        }
        return f28010v;
    }

    private static void jx(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder != null) {
            if (downloaderBuilder.getContext() != null) {
                hp(downloaderBuilder.getContext());
            }
            if (downloaderBuilder.getDownloadCache() != null) {
                hp(downloaderBuilder.getDownloadCache());
            }
            if (downloaderBuilder.getIdGenerator() != null) {
                hp(downloaderBuilder.getIdGenerator());
            }
            if (downloaderBuilder.getChunkCntCalculator() != null) {
                hp(downloaderBuilder.getChunkCntCalculator());
            }
            if (downloaderBuilder.getNotificationClickCallback() != null) {
                hp(downloaderBuilder.getNotificationClickCallback());
            }
            if (downloaderBuilder.getMaxDownloadPoolSize() != 0) {
                l(downloaderBuilder.getMaxDownloadPoolSize());
            }
            if (downloaderBuilder.getHttpService() != null) {
                hp(downloaderBuilder.getHttpService());
            }
            if (downloaderBuilder.getHeadHttpService() != null) {
                hp(downloaderBuilder.getHeadHttpService());
            }
            if (downloaderBuilder.getDownloadLaunchHandler() != null) {
                hp(downloaderBuilder.getDownloadLaunchHandler());
            }
            if (downloaderBuilder.getCPUThreadExecutor() != null) {
                jx(downloaderBuilder.getCPUThreadExecutor());
            }
            if (downloaderBuilder.getIOThreadExecutor() != null) {
                j(downloaderBuilder.getIOThreadExecutor());
            }
            if (downloaderBuilder.getMixDefaultDownloadExecutor() != null) {
                w(downloaderBuilder.getMixDefaultDownloadExecutor());
            }
            if (downloaderBuilder.getMixFrequentDownloadExecutor() != null) {
                a(downloaderBuilder.getMixFrequentDownloadExecutor());
            }
            if (downloaderBuilder.getMixApkDownloadExecutor() != null) {
                eb(downloaderBuilder.getMixApkDownloadExecutor());
            }
            if (downloaderBuilder.getDBThreadExecutor() != null) {
                s(downloaderBuilder.getDBThreadExecutor());
            }
            if (downloaderBuilder.getChunkThreadExecutor() != null) {
                hp(downloaderBuilder.getChunkThreadExecutor());
            }
            if (downloaderBuilder.getOkHttpDispatcherExecutor() != null) {
                l(downloaderBuilder.getOkHttpDispatcherExecutor());
            }
            if (!downloaderBuilder.getDownloadCompleteHandlers().isEmpty()) {
                hp(downloaderBuilder.getDownloadCompleteHandlers());
            }
            if (downloaderBuilder.getMonitorConfig() != null) {
                f27996d = downloaderBuilder.getMonitorConfig();
            }
            if (downloaderBuilder.getWriteBufferSize() > 1024) {
                f27998f = downloaderBuilder.getWriteBufferSize();
            }
            if (downloaderBuilder.getChunkAdjustCalculator() != null) {
                hp(downloaderBuilder.getChunkAdjustCalculator());
            }
            if (downloaderBuilder.isDownloadInMultiProcess()) {
                nu = true;
            }
            if (downloaderBuilder.getDownloadExpSwitch() != 0) {
                hd = downloaderBuilder.getDownloadExpSwitch();
            }
            if (downloaderBuilder.getDownloadSetting() != null) {
                hp(downloaderBuilder.getDownloadSetting());
            }
            if (downloaderBuilder.getDownloadDns() != null) {
                lv = downloaderBuilder.getDownloadDns();
            }
            if (downloaderBuilder.getTTNetHandler() != null) {
                n tTNetHandler = downloaderBuilder.getTTNetHandler();
                pu = tTNetHandler;
                if (tTNetHandler.hp()) {
                    hp(pu.l());
                    hp(pu.jx());
                } else {
                    hp(s());
                    hp(q());
                }
            }
            l(downloaderBuilder.needAutoRefreshUnSuccessTask());
            if (downloaderBuilder.getDownloadMonitorListener() != null) {
                hp(downloaderBuilder.getDownloadMonitorListener());
            }
        }
    }

    public static ExecutorService k() {
        return vv != null ? vv : u();
    }

    public static n kg() {
        if (pu == null) {
            synchronized (jx.class) {
                try {
                    if (pu == null) {
                        pu = new n.hp();
                    }
                } finally {
                }
            }
        }
        return pu;
    }

    public static s ky() {
        if (f27999j == null) {
            synchronized (jx.class) {
                try {
                    if (f27999j == null) {
                        f27999j = new com.byazt.au.jx();
                    }
                } finally {
                }
            }
        }
        return f27999j;
    }

    public static synchronized void l(DownloaderBuilder downloaderBuilder) {
        jx(downloaderBuilder);
    }

    public static void lv() {
        if (TextUtils.isEmpty(com.byazt.oy.w.jx)) {
            com.byazt.oy.w.jx = "oppo";
            com.byazt.oy.w.f24277l = "oppo".toUpperCase();
        }
    }

    public static synchronized boolean m() {
        return yr;
    }

    public static synchronized Context mp() {
        return hp;
    }

    public static eb ms() {
        if (f27995b == null) {
            synchronized (jx.class) {
                try {
                    if (f27995b == null) {
                        f27995b = new com.byazt.au.l();
                    }
                } finally {
                }
            }
        }
        return f27995b;
    }

    public static OkHttpClient.Builder n() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, timeUnit).readTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, timeUnit).writeTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, timeUnit).retryOnConnectionFailure(true).followRedirects(true).protocols(Collections.singletonList(Protocol.HTTP_1_1));
        if (ns != null) {
            builder.dispatcher(new Dispatcher(ns));
        }
        return builder;
    }

    public static boolean nd() {
        StringBuilder sb = new StringBuilder("supportMultiProc::=");
        sb.append(f28006q != null);
        com.byazt.nu.hp.hp("wjd", sb.toString());
        return f28006q != null;
    }

    public static com.byazt.ip.a ns() {
        return lv;
    }

    public static int nu() {
        return hd;
    }

    public static v o() {
        if (eb == null) {
            synchronized (jx.class) {
                try {
                    if (eb == null) {
                        eb = new com.byazt.au.s();
                    }
                } finally {
                }
            }
        }
        return eb;
    }

    public static synchronized int pu() {
        return f27998f;
    }

    public static com.byazt.ip.s q() {
        if (zy == null) {
            synchronized (jx.class) {
                try {
                    if (zy == null) {
                        zy = new com.byazt.au.a();
                    }
                } finally {
                }
            }
        }
        return zy;
    }

    public static boolean r() {
        return zx;
    }

    public static boolean rz() {
        return su;
    }

    public static IDownloadHttpService s() {
        if (jl == null) {
            synchronized (jx.class) {
                try {
                    if (jl == null) {
                        jl = new com.byazt.au.eb();
                    }
                } finally {
                }
            }
        }
        return jl;
    }

    public static ScheduledExecutorService sz() {
        if (cx == null) {
            synchronized (jx.class) {
                try {
                    if (cx == null) {
                        cx = new com.byazt.shx.w(1, new com.byazt.ez.hp("DownloadThreadPool-Schedule", true));
                    }
                } finally {
                }
            }
        }
        return cx;
    }

    public static ExecutorService u() {
        if (xs == null) {
            synchronized (jx.class) {
                try {
                    if (xs == null) {
                        int i2 = mp;
                        com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.ez.hp("DownloadThreadPool-mix-fixed", true));
                        try {
                            jVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                        xs = jVar;
                    }
                } finally {
                }
            }
        }
        return xs;
    }

    public static com.byazt.au.hp ud() {
        if (f27994a == null) {
            synchronized (jx.class) {
                try {
                    if (f27994a == null) {
                        f27994a = new com.byazt.au.w();
                    }
                } finally {
                }
            }
        }
        return f27994a;
    }

    public static ExecutorService v() {
        return ec != null ? ec : u();
    }

    public static ExecutorService vv() {
        if (sz == null) {
            synchronized (jx.class) {
                try {
                    if (sz == null) {
                        int i2 = f28002m;
                        com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.ez.hp("DownloadThreadPool-db-fixed", true));
                        try {
                            jVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                        sz = jVar;
                    }
                } finally {
                }
            }
        }
        return sz;
    }

    public static List<ky> w() {
        List<ky> list;
        synchronized (ud) {
            list = ud;
        }
        return list;
    }

    public static List<com.byazt.fn.zy> wv() {
        return ky;
    }

    public static nu xh() {
        return f28011w;
    }

    public static ExecutorService xs() {
        if (f28004n == null) {
            synchronized (jx.class) {
                try {
                    if (f28004n == null) {
                        int i2 = kg;
                        com.byazt.shx.j jVar = new com.byazt.shx.j(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.byazt.ez.hp("DownloadThreadPool-chunk-fixed", true));
                        try {
                            jVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                        f28004n = jVar;
                    }
                } finally {
                }
            }
        }
        return f28004n;
    }

    public static vv yr() {
        return vq;
    }

    private static void zx() {
        if (di == null) {
            di = new DownloadReceiver();
        }
        if (xh) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            hp.registerReceiver(di, intentFilter);
            xh = true;
        } catch (Throwable unused) {
        }
    }

    public static ExecutorService zy() {
        return f28009u != null ? f28009u : jl();
    }

    private static void a(ExecutorService executorService) {
        if (executorService != null) {
            vv = executorService;
        }
    }

    private static void eb(ExecutorService executorService) {
        if (executorService != null) {
            ec = executorService;
        }
    }

    public static synchronized void hp(DownloaderBuilder downloaderBuilder) {
        if (su) {
            com.byazt.nu.hp.w("DownloadComponentManager", "component has init");
            return;
        }
        boolean z2 = nu;
        jx(downloaderBuilder);
        if (f28001l == null) {
            f28001l = new com.byazt.au.j();
        }
        if (eb == null) {
            eb = new com.byazt.au.s();
        }
        if (f28008s == null && f28006q != null) {
            f28008s = f28006q.hp();
        }
        if (jx == null) {
            jx = new com.byazt.au.q();
        }
        if (f27994a == null) {
            f27994a = new com.byazt.au.w();
        }
        if (f27999j == null) {
            f27999j = new com.byazt.au.jx();
        }
        if (f27995b == null) {
            f27995b = new com.byazt.au.l();
        }
        if (f28005o == null) {
            f28005o = new com.byazt.au.e();
        }
        int i2 = f28003ms;
        if (i2 <= 0 || i2 > as) {
            f28003ms = as;
        }
        zx();
        if (nu && !z2 && !com.byazt.xq.a.jx()) {
            com.byazt.au.jl.hp(true).startService();
        } else if (com.byazt.xq.a.j()) {
            ExecutorService executorServiceZy = zy();
            if (executorServiceZy != null) {
                executorServiceZy.execute(new Runnable() { // from class: com.byazt.yk.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context contextMp = jx.mp();
                        if (contextMp != null) {
                            com.byazt.xq.a.j(contextMp);
                        }
                    }
                });
            }
        } else {
            Context contextMp = mp();
            if (contextMp != null) {
                com.byazt.xq.a.j(contextMp);
            }
        }
        lv();
        su = true;
    }

    private static void j(ExecutorService executorService) {
        if (executorService != null) {
            f28009u = executorService;
        }
    }

    public static synchronized void l() {
        if (nu) {
            return;
        }
        nu = true;
        try {
            Intent intent = new Intent(mp(), (Class<?>) DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY");
            mp().startService(intent);
            if (!com.byazt.xq.a.jx()) {
                com.byazt.au.jl.hp(true).startService();
            }
        } catch (Throwable unused) {
            nu = false;
        }
    }

    private static void w(ExecutorService executorService) {
        if (executorService != null) {
            xs = executorService;
        }
    }

    private static void s(ExecutorService executorService) {
        if (executorService != null) {
            sz = executorService;
        }
    }

    public static void l(com.byazt.fn.gu guVar) {
        List<com.byazt.fn.gu> list = rz;
        synchronized (list) {
            if (guVar != null) {
                try {
                    if (list.contains(guVar)) {
                        list.remove(guVar);
                    }
                } finally {
                }
            }
        }
    }

    public static void l(DownloadTask downloadTask, int i2) {
        List<Object> list = nd;
        synchronized (list) {
            try {
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static com.byazt.ip.eb l(String str, List<com.byazt.fu.jx> list, int i2, boolean z2, DownloadInfo downloadInfo) throws Throwable {
        Throwable th;
        IOException iOException;
        com.byazt.ip.s sVarA = i2 == 1 ? a() : q();
        if (sVarA != null) {
            long jCurrentTimeMillis = 0;
            try {
                if (z2) {
                    try {
                        jCurrentTimeMillis = System.currentTimeMillis();
                    } catch (IOException e2) {
                        throw e2;
                    }
                }
                try {
                    com.byazt.ip.eb ebVarHp = sVarA.hp(str, list);
                    if (z2) {
                        com.byazt.no.hp.hp(ebVarHp, str, null, System.currentTimeMillis() - jCurrentTimeMillis, "head", i2, null, downloadInfo);
                    }
                    return ebVarHp;
                } catch (Throwable th2) {
                    th = th2;
                    iOException = null;
                    if (!z2) {
                        throw th;
                    }
                    com.byazt.no.hp.hp(null, str, null, System.currentTimeMillis() - jCurrentTimeMillis, "head", i2, iOException, downloadInfo);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                iOException = null;
            }
        } else {
            throw new BaseException(1022, new IOException("httpService not exist, netLib = " + i2));
        }
    }

    public static void l(ExecutorService executorService) {
        if (executorService != null) {
            ns = executorService;
        }
    }

    public static void l(Runnable runnable) {
        l(runnable, false);
    }

    public static void l(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (z2 && !com.byazt.xq.a.j()) {
            runnable.run();
        } else {
            zy().execute(runnable);
        }
    }

    public static synchronized void hp() {
        try {
            if (xh && di != null && hp != null) {
                hp.unregisterReceiver(di);
                xh = false;
            }
        } catch (Exception unused) {
        }
    }

    private static void l(int i2) {
        if (i2 > 0) {
            f28003ms = i2;
        }
    }

    private static void l(boolean z2) {
        zx = z2;
    }

    public static void hp(ky kyVar) {
        if (kyVar == null) {
            return;
        }
        synchronized (ud) {
            ud.add(kyVar);
        }
    }

    public static void hp(com.byazt.fn.gu guVar) {
        List<com.byazt.fn.gu> list = rz;
        synchronized (list) {
            if (guVar != null) {
                try {
                    if (!list.contains(guVar)) {
                        list.add(guVar);
                    }
                } finally {
                }
            }
        }
    }

    public static void hp(com.byazt.oy.j jVar) {
        List<com.byazt.fn.gu> list = rz;
        synchronized (list) {
            try {
                for (com.byazt.fn.gu guVar : list) {
                    if (guVar != null && jVar != com.byazt.oy.j.SYNC_START && jVar == com.byazt.oy.j.SYNC_SUCCESS) {
                        guVar.hp();
                    }
                }
                if (jVar == com.byazt.oy.j.SYNC_SUCCESS) {
                    rz.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(DownloadTask downloadTask, int i2) {
        List<Object> list = nd;
        synchronized (list) {
            try {
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized boolean jx() {
        return nu;
    }

    private static void jx(ExecutorService executorService) {
        if (executorService != null) {
            f28010v = executorService;
        }
    }

    public static void jx(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!com.byazt.xq.a.j()) {
            runnable.run();
        } else {
            vv().execute(runnable);
        }
    }

    public static com.byazt.ip.q hp(boolean z2, int i2, String str, List<com.byazt.fu.jx> list) throws Exception {
        return hp(z2, i2, str, null, list, 0, false, null);
    }

    public static com.byazt.ip.q hp(boolean z2, int i2, String str, String str2, List<com.byazt.fu.jx> list, int i3, boolean z3, DownloadInfo downloadInfo) throws Exception {
        List<com.byazt.fu.jx> list2;
        int i4;
        com.byazt.ip.q qVarHp;
        if (!TextUtils.isEmpty(str2)) {
            List<com.byazt.fu.jx> arrayList = list == null ? new ArrayList<>() : list;
            arrayList.add(new com.byazt.fu.jx("ss_d_request_host_ip_114", str2));
            list2 = arrayList;
            i4 = 1;
        } else if (z2) {
            list2 = list;
            i4 = i3;
        } else {
            i4 = 2;
            list2 = list;
        }
        Exception e2 = null;
        for (int i5 : hp(i4)) {
            try {
                qVarHp = hp(i2, str, str2, list2, i5, z3, downloadInfo);
            } catch (Exception e3) {
                e2 = e3;
                if (downloadInfo.isExpiredRedownload() && com.byazt.xq.a.eb(e2)) {
                    if (com.byazt.xq.a.jx(list2)) {
                        com.byazt.nu.hp.hp("dcach::http exception 304, throw excepiton, not retry " + e2);
                        throw e2;
                    }
                } else {
                    continue;
                }
            }
            if (qVarHp != null) {
                return qVarHp;
            }
        }
        if (e2 == null) {
            return null;
        }
        throw e2;
    }

    private static com.byazt.ip.q hp(int i2, String str, String str2, List<com.byazt.fu.jx> list, int i3, boolean z2, DownloadInfo downloadInfo) throws Throwable {
        Throwable th;
        IOException iOException;
        IDownloadHttpService iDownloadHttpServiceJ = i3 == 1 ? j() : s();
        if (iDownloadHttpServiceJ != null) {
            long jCurrentTimeMillis = 0;
            try {
                if (z2) {
                    try {
                        jCurrentTimeMillis = System.currentTimeMillis();
                    } catch (IOException e2) {
                        throw e2;
                    }
                }
                iOException = null;
                try {
                    com.byazt.ip.q qVarDownloadWithConnection = iDownloadHttpServiceJ.downloadWithConnection(i2, str, list);
                    if (z2) {
                        com.byazt.no.hp.hp(qVarDownloadWithConnection, str, str2, System.currentTimeMillis() - jCurrentTimeMillis, "get", i3, null, downloadInfo);
                    }
                    return qVarDownloadWithConnection;
                } catch (Throwable th2) {
                    th = th2;
                    if (!z2) {
                        throw th;
                    }
                    com.byazt.no.hp.hp(null, str, str2, System.currentTimeMillis() - jCurrentTimeMillis, "get", i3, iOException, downloadInfo);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                iOException = null;
            }
        } else {
            throw new BaseException(1022, new IOException("httpService not exist, netLib = " + i3));
        }
    }

    public static com.byazt.ip.eb hp(String str, List<com.byazt.fu.jx> list) throws Exception {
        return hp(str, list, 0, false, null);
    }

    public static com.byazt.ip.eb hp(String str, List<com.byazt.fu.jx> list, int i2, boolean z2, DownloadInfo downloadInfo) throws Exception {
        com.byazt.ip.eb ebVarL;
        Exception e2 = null;
        for (int i3 : hp(i2)) {
            try {
                ebVarL = l(str, list, i3, z2, downloadInfo);
            } catch (Exception e3) {
                e2 = e3;
            }
            if (ebVarL != null) {
                return ebVarL;
            }
        }
        if (e2 == null) {
            return null;
        }
        throw e2;
    }

    private static int[] hp(int i2) {
        if (i2 == 1) {
            return new int[]{0};
        }
        if (i2 == 2) {
            return new int[]{1};
        }
        if (i2 != 3) {
            return new int[]{1, 0};
        }
        return new int[]{0, 1};
    }

    public static synchronized void hp(jl jlVar) {
        if (jlVar != null) {
            f28000k = jlVar;
            if (f28001l instanceof com.byazt.au.j) {
                ((com.byazt.au.j) f28001l).s();
            }
        }
    }

    public static void hp(ExecutorService executorService) {
        if (executorService != null) {
            f28004n = executorService;
        }
    }

    private static void hp(List<com.byazt.fn.zy> list) {
        List<com.byazt.fn.zy> list2 = ky;
        if (list2.isEmpty()) {
            synchronized (list2) {
                list2.addAll(list);
            }
        }
    }

    public static void hp(boolean z2) {
        f28012y = z2;
    }

    public static void hp(Runnable runnable) {
        hp(runnable, false);
    }

    public static void hp(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (z2 && !com.byazt.xq.a.j()) {
            runnable.run();
        } else {
            jl().execute(runnable);
        }
    }

    public static Future hp(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (runnable == null) {
            return null;
        }
        return sz().schedule(runnable, j2, timeUnit);
    }

    public static void hp(IDownloadHttpService iDownloadHttpService) {
        if (iDownloadHttpService != null) {
            f27997e = iDownloadHttpService;
        }
        yr = f27997e != null;
    }

    public static void hp(com.byazt.ip.s sVar) {
        if (sVar != null) {
            gu = sVar;
        }
    }

    private static void hp(e eVar) {
        if (eVar != null) {
            f28001l = eVar;
        }
    }

    private static void hp(gu guVar) {
        if (guVar != null) {
            jx = guVar;
        }
    }

    private static void hp(com.byazt.no.l lVar) {
        if (lVar != null) {
            wv = lVar;
        }
    }

    public static void hp(d dVar) {
        hq = dVar;
        com.byazt.jb.hp.hp();
    }

    private static void hp(s sVar) {
        if (sVar != null) {
            f27999j = sVar;
        }
    }

    public static void hp(nu nuVar) {
        if (nuVar != null) {
            f28011w = nuVar;
        }
    }

    private static void hp(eb ebVar) {
        if (ebVar != null) {
            f27995b = ebVar;
        }
    }

    public static synchronized void hp(Context context) {
        if (context != null) {
            if (hp == null) {
                hp = context.getApplicationContext();
                com.byazt.ei.hp.hp().hp(hp);
            }
        }
    }

    public static int hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0;
        }
        String taskKey = downloadInfo.getTaskKey();
        if (TextUtils.isEmpty(taskKey)) {
            taskKey = downloadInfo.getUrl();
        }
        return hp(taskKey, downloadInfo.getSavePath());
    }

    public static int hp(String str, String str2) {
        gu guVarHq = hq();
        if (guVarHq == null) {
            return 0;
        }
        return guVarHq.hp(str, str2);
    }

    public static void hp(com.byazt.no.jx jxVar) {
        ea = jxVar;
    }

    public static void hp(hp hpVar) {
        com.byazt.nu.hp.hp("wjd", "setIndependentServiceCreator::creator=" + hpVar);
        f28006q = hpVar;
    }
}
