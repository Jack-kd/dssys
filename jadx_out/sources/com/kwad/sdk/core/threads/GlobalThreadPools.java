package com.kwad.sdk.core.threads;

import android.util.Log;
import androidx.annotation.NonNull;
import com.sigmob.sdk.base.mta.PointCategory;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public final class GlobalThreadPools {
    private static String TAG;
    private static final int aYr;
    private static final int aYs;
    private static final int aYt;
    private static Map<String, WeakReference<ExecutorService>> aYu;
    private static Map<String, Integer> aYv;
    private static boolean aYw;

    /* renamed from: com.kwad.sdk.core.threads.GlobalThreadPools$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] aYx;

        static {
            int[] iArr = new int[ParamType.values().length];
            aYx = iArr;
            try {
                iArr[ParamType.CORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aYx[ParamType.MAX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                aYx[ParamType.KEEP_ALIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ParamType {
        CORE,
        MAX,
        KEEP_ALIVE
    }

    public interface a {
        @NonNull
        ExecutorService Oo();
    }

    public static class b implements a {
        private b() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("httpIO", ParamType.CORE, GlobalThreadPools.aYs), GlobalThreadPools.a("httpIO", ParamType.MAX, GlobalThreadPools.aYt), GlobalThreadPools.a("httpIO", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "diskAndHttp"));
        }

        public /* synthetic */ b(byte b3) {
            this();
        }
    }

    public static class c implements a {
        private c() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            int i2 = 5;
            f fVar = new f(5, "ForCore");
            try {
                int iA = GlobalThreadPools.a("httpIOForCoreV1", ParamType.CORE, 5);
                int iA2 = GlobalThreadPools.a("httpIOForCoreV1", ParamType.MAX, 5);
                if (iA < 0) {
                    iA = 5;
                }
                if (iA2 < 0) {
                    iA2 = 5;
                }
                if (iA2 < iA) {
                    iA2 = 5;
                } else {
                    i2 = iA;
                }
                com.kwad.sdk.core.d.c.d(GlobalThreadPools.TAG, "HttpIOCreatorForCore create, coreSize:" + i2 + ", maxSize:" + iA2);
                return new com.kwad.sdk.core.threads.a.b(i2, iA2, GlobalThreadPools.a("httpIOForCoreV1", r1, GlobalThreadPools.a("httpIOForCoreV1", ParamType.KEEP_ALIVE, 60) >= 0 ? r5 : 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), fVar);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.e(GlobalThreadPools.TAG, Log.getStackTraceString(e2));
                return new com.kwad.sdk.core.threads.a.b(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), fVar);
            }
        }

        public /* synthetic */ c(byte b3) {
            this();
        }
    }

    public static class d implements a {
        private d() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("httpIOForCoreExtraV1", ParamType.CORE, 0), GlobalThreadPools.a("httpIOForCoreExtraV1", ParamType.MAX, 3), GlobalThreadPools.a("httpIOForCoreExtraV1", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new SynchronousQueue(), new f(5, "ForCoreExtra"), new ThreadPoolExecutor.DiscardPolicy());
        }

        public /* synthetic */ d(byte b3) {
            this();
        }
    }

    public static class e implements a {
        private e() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("imageLoaderDistributor", ParamType.CORE, 0), GlobalThreadPools.a("imageLoaderDistributor", ParamType.MAX, 10), GlobalThreadPools.a("imageLoaderDistributor", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new SynchronousQueue(), new f(5, "uil-pool-d-"), new ThreadPoolExecutor.DiscardPolicy());
        }

        public /* synthetic */ e(byte b3) {
            this();
        }
    }

    public static class f implements ThreadFactory {
        private static final AtomicInteger poolNumber = new AtomicInteger(1);
        private final String namePrefix;
        private final int threadPriority;
        private final AtomicInteger threadNumber = new AtomicInteger(1);
        private final ThreadGroup group = Thread.currentThread().getThreadGroup();

        public f(int i2, String str) {
            this.threadPriority = i2;
            this.namePrefix = "ksad-" + str + poolNumber.getAndIncrement() + "-thread-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.group, runnable, this.namePrefix + this.threadNumber.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            thread.setPriority(this.threadPriority);
            return thread;
        }
    }

    public static class g implements a {
        private g() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("ksImageLoaderTask", ParamType.CORE, 3), GlobalThreadPools.a("ksImageLoaderTask", ParamType.MAX, 3), GlobalThreadPools.a("ksImageLoaderTask", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "uil-pool-"));
        }

        public /* synthetic */ g(byte b3) {
            this();
        }
    }

    public static class h implements a {
        private h() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("lruDiskCache", ParamType.CORE, 0), GlobalThreadPools.a("lruDiskCache", ParamType.MAX, 1), GlobalThreadPools.a("lruDiskCache", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "lruDiskCache"));
        }

        public /* synthetic */ h(byte b3) {
            this();
        }
    }

    public static class i implements a {
        private i() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a(PointCategory.REPORT, ParamType.CORE, 1), GlobalThreadPools.a(PointCategory.REPORT, ParamType.MAX, 1), GlobalThreadPools.a(PointCategory.REPORT, ParamType.KEEP_ALIVE, 0), TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(3, "report-"));
        }

        public /* synthetic */ i(byte b3) {
            this();
        }
    }

    public static class j implements a {
        private j() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "sdk_core"));
        }

        public /* synthetic */ j(byte b3) {
            this();
        }
    }

    public static class k implements a {
        private k() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "backSingle"));
        }

        public /* synthetic */ k(byte b3) {
            this();
        }
    }

    public static class l implements a {
        private l() {
        }

        @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
        @NonNull
        public final ExecutorService Oo() {
            return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("videoCache", ParamType.CORE, 3), GlobalThreadPools.a("videoCache", ParamType.MAX, 3), GlobalThreadPools.a("videoCache", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), new f(5, "videoCache"));
        }

        public /* synthetic */ l(byte b3) {
            this();
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        aYr = iAvailableProcessors;
        if (iAvailableProcessors <= 0) {
            iAvailableProcessors = 9;
        }
        aYs = iAvailableProcessors;
        aYt = iAvailableProcessors;
        TAG = "GlobalThreadPools";
        aYu = new ConcurrentHashMap();
        aYv = new ConcurrentHashMap();
        aYw = true;
    }

    public static void NS() {
    }

    public static boolean NT() {
        return aYw;
    }

    public static void NU() {
        for (String str : aYu.keySet()) {
            if (aYu.get(str).get() instanceof ThreadPoolExecutor) {
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) aYu.get(str).get();
                int corePoolSize = threadPoolExecutor.getCorePoolSize();
                int maximumPoolSize = threadPoolExecutor.getMaximumPoolSize();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                int keepAliveTime = (int) threadPoolExecutor.getKeepAliveTime(timeUnit);
                int iA = a(str, ParamType.CORE, corePoolSize);
                int iA2 = a(str, ParamType.MAX, maximumPoolSize);
                try {
                    threadPoolExecutor.setKeepAliveTime(a(str, ParamType.KEEP_ALIVE, keepAliveTime), timeUnit);
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                }
                if (corePoolSize != iA || maximumPoolSize != iA2) {
                    if (corePoolSize <= iA2) {
                        threadPoolExecutor.setMaximumPoolSize(iA2);
                        threadPoolExecutor.setCorePoolSize(iA);
                    } else if (iA <= maximumPoolSize) {
                        threadPoolExecutor.setCorePoolSize(iA);
                        threadPoolExecutor.setMaximumPoolSize(iA2);
                    }
                }
            }
        }
    }

    public static ExecutorService NV() {
        return NT() ? Oi() : a("lruDiskCache", new h((byte) 0));
    }

    public static ExecutorService NW() {
        return new j((byte) 0).Oo();
    }

    public static ExecutorService NX() {
        return a("backSingle", new k((byte) 0));
    }

    public static synchronized ExecutorService NY() {
        com.kwad.sdk.core.d.c.d(TAG, "forKsImageLoaderTask");
        return a("ksImageLoaderTask", new g((byte) 0));
    }

    public static synchronized ExecutorService NZ() {
        com.kwad.sdk.core.d.c.d(TAG, "forKsImageLoaderCachedImages");
        return a("ksImageLoaderTask", new g((byte) 0));
    }

    public static ExecutorService Oa() {
        com.kwad.sdk.core.d.c.d(TAG, "forKsImageLoaderTaskDistributor");
        return a("imageLoaderDistributor", new e((byte) 0));
    }

    public static synchronized ExecutorService Ob() {
        com.kwad.sdk.core.d.c.d(TAG, "forBaseBatchReporter");
        if (NT()) {
            return Oi();
        }
        return a(PointCategory.REPORT, new i((byte) 0));
    }

    public static synchronized ExecutorService Oc() {
        com.kwad.sdk.core.d.c.d(TAG, "forAdReportManager");
        if (NT()) {
            return Oi();
        }
        return a(PointCategory.REPORT, new i((byte) 0));
    }

    public static ExecutorService Od() {
        com.kwad.sdk.core.d.c.d(TAG, "forBaseNetwork");
        return NT() ? Oi() : a("httpIO", new b((byte) 0));
    }

    public static ExecutorService Oe() {
        com.kwad.sdk.core.d.c.d(TAG, "forCoreNetwork");
        return NT() ? Of() : Od();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ExecutorService Of() {
        com.kwad.sdk.core.d.c.d(TAG, "getCoreExecutor");
        ExecutorService executorServiceA = a("httpIOForCoreV1", new c(0 == true ? 1 : 0));
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorServiceA;
        int poolSize = threadPoolExecutor.getPoolSize();
        int iA = a("httpIOForCoreV1", ParamType.CORE, 5);
        int iA2 = a("httpIOForCoreExtraV1", ParamType.MAX, 3);
        ExecutorService executorServiceA2 = a("httpIOForCoreExtraV1", new d(0 == true ? 1 : 0));
        ThreadPoolExecutor threadPoolExecutor2 = (ThreadPoolExecutor) executorServiceA2;
        int poolSize2 = threadPoolExecutor2.getPoolSize();
        int activeCount = threadPoolExecutor.getActiveCount();
        int activeCount2 = threadPoolExecutor2.getActiveCount();
        com.kwad.sdk.core.d.c.d(TAG, "getCoreExecutor currentPoolSize:" + poolSize + " configSize:" + iA);
        com.kwad.sdk.core.d.c.d(TAG, "getCoreExecutor extraPoolSize:" + poolSize2 + " extraConfigSize:" + iA2);
        int size = threadPoolExecutor.getQueue() == null ? 0 : threadPoolExecutor.getQueue().size();
        int size2 = threadPoolExecutor2.getQueue() != null ? threadPoolExecutor2.getQueue().size() : 0;
        com.kwad.sdk.core.d.c.e(TAG, "getCoreExecutor queueSize:" + size + " extraQueueSize:" + size2);
        if (poolSize < iA) {
            com.kwad.sdk.core.d.c.d(TAG, "getCoreExecutor currentPoolSize < configSize");
            return executorServiceA;
        }
        if (activeCount < iA) {
            com.kwad.sdk.core.d.c.e(TAG, "activeCount < configSize");
            return executorServiceA;
        }
        if (activeCount2 == iA2) {
            com.kwad.sdk.core.d.c.e(TAG, "extraActiveCount == extraConfigSize");
            return executorServiceA;
        }
        com.kwad.sdk.core.d.c.e(TAG, "use extra");
        return executorServiceA2;
    }

    public static ExecutorService Og() {
        com.kwad.sdk.core.d.c.d(TAG, "forHttpCacheServer");
        return NT() ? Oi() : a("videoCache", new l((byte) 0));
    }

    public static ExecutorService Oh() {
        com.kwad.sdk.core.d.c.d(TAG, "forAppStatusHelper");
        return NT() ? Oi() : new com.kwad.sdk.core.threads.a.b(a("lruDiskCache", ParamType.CORE, 1), a("lruDiskCache", ParamType.MAX, 1), a("lruDiskCache", ParamType.KEEP_ALIVE, 0), TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.kwad.sdk.core.threads.GlobalThreadPools.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "ksad-ashelper");
                thread.setPriority(3);
                return thread;
            }
        });
    }

    public static ExecutorService Oi() {
        com.kwad.sdk.core.d.c.d(TAG, "forAsync");
        return a("async", new a() { // from class: com.kwad.sdk.core.threads.GlobalThreadPools.2
            @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
            @NonNull
            public final ExecutorService Oo() {
                f fVar = new f(5, "async");
                int i2 = GlobalThreadPools.NT() ? 5 : 3;
                return new com.kwad.sdk.core.threads.a.b(GlobalThreadPools.a("async", ParamType.CORE, i2), GlobalThreadPools.a("async", ParamType.MAX, i2), GlobalThreadPools.a("async", ParamType.KEEP_ALIVE, 60), TimeUnit.SECONDS, new LinkedBlockingQueue(), fVar);
            }
        });
    }

    public static ScheduledExecutorService Oj() {
        com.kwad.sdk.core.d.c.d(TAG, "forAsyncSchedule");
        ExecutorService executorServiceA = a("async-schedule", new a() { // from class: com.kwad.sdk.core.threads.GlobalThreadPools.3
            @Override // com.kwad.sdk.core.threads.GlobalThreadPools.a
            @NonNull
            public final ExecutorService Oo() {
                return new com.kwad.sdk.core.threads.a.a(1, new f(5, "async-schedule"));
            }
        });
        return executorServiceA instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorServiceA : new com.kwad.sdk.core.threads.a.a(1, new f(5, "async-schedule"));
    }

    public static Set<String> Ok() {
        return aYu.keySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:0|2|(2:4|(3:6|(1:9)|18)(1:10))(1:11)|20|12|(2:16|17)|18) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.String r1, com.kwad.sdk.core.threads.GlobalThreadPools.ParamType r2, int r3) {
        /*
            int[] r0 = com.kwad.sdk.core.threads.GlobalThreadPools.AnonymousClass4.aYx
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            if (r2 == r0) goto L36
            r0 = 2
            if (r2 == r0) goto L24
            r0 = 3
            if (r2 == r0) goto L12
            goto L64
        L12:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "_keep_alive"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            goto L47
        L24:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "_max"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            goto L47
        L36:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "_core"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
        L47:
            java.util.Map<java.lang.String, java.lang.Integer> r2 = com.kwad.sdk.core.threads.GlobalThreadPools.aYv     // Catch: java.lang.Exception -> L64
            boolean r2 = r2.containsKey(r1)     // Catch: java.lang.Exception -> L64
            if (r2 == 0) goto L64
            java.util.Map<java.lang.String, java.lang.Integer> r2 = com.kwad.sdk.core.threads.GlobalThreadPools.aYv     // Catch: java.lang.Exception -> L64
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> L64
            if (r2 == 0) goto L64
            java.util.Map<java.lang.String, java.lang.Integer> r2 = com.kwad.sdk.core.threads.GlobalThreadPools.aYv     // Catch: java.lang.Exception -> L64
            java.lang.Object r1 = r2.get(r1)     // Catch: java.lang.Exception -> L64
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Exception -> L64
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> L64
            return r1
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.threads.GlobalThreadPools.a(java.lang.String, com.kwad.sdk.core.threads.GlobalThreadPools$ParamType, int):int");
    }

    public static ExecutorService fq(String str) {
        if (!aYu.containsKey(str) || aYu.get(str) == null) {
            return null;
        }
        return aYu.get(str).get();
    }

    public static void r(String str, int i2) {
        aYv.put(str, Integer.valueOf(i2));
    }

    @NonNull
    private static ExecutorService a(String str, @NonNull a aVar) {
        WeakReference<ExecutorService> weakReference = aYu.get(str);
        if (weakReference != null && weakReference.get() != null) {
            return weakReference.get();
        }
        ExecutorService executorServiceOo = aVar.Oo();
        aYu.put(str, new WeakReference<>(executorServiceOo));
        return executorServiceOo;
    }
}
