package com.byazt.mg;

import android.os.Process;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.mg.a;
import com.byazt.mg.l;
import com.byazt.ymw.u;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 790, 30})
/* loaded from: classes3.dex */
public final class jx {

    /* renamed from: w, reason: collision with root package name */
    public static volatile jx f22988w;

    /* renamed from: a, reason: collision with root package name */
    public volatile com.byazt.zt.jx f22989a;

    /* renamed from: e, reason: collision with root package name */
    public final l.InterfaceC0309l f22990e;
    public volatile com.byazt.ya.jx eb;
    public volatile String gu;
    public volatile int hp = 163840;

    /* renamed from: j, reason: collision with root package name */
    public final ExecutorService f22991j;
    public volatile boolean jl;
    public final l<Runnable> jx;

    /* renamed from: l, reason: collision with root package name */
    public final SparseArray<Map<String, com.byazt.mg.l>> f22992l;

    /* renamed from: q, reason: collision with root package name */
    public final HashSet<hp> f22993q;

    /* renamed from: s, reason: collision with root package name */
    public volatile com.byazt.ya.l f22994s;

    @com.byazt.kj.hp(hp = {0, 1, 790, 219})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f22997a;
        public final boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f22998j;
        public final int jx;

        /* renamed from: l, reason: collision with root package name */
        public final boolean f22999l;

        /* renamed from: w, reason: collision with root package name */
        public final Map<String, String> f23000w;

        public hp(boolean z2, boolean z3, int i2, String str, Map<String, String> map, String[] strArr) {
            this.hp = z2;
            this.f22999l = z3;
            this.jx = i2;
            this.f22998j = str;
            this.f23000w = map;
            this.f22997a = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || hp.class != obj.getClass()) {
                return false;
            }
            hp hpVar = (hp) obj;
            if (this.hp == hpVar.hp && this.f22999l == hpVar.f22999l && this.jx == hpVar.jx) {
                return this.f22998j.equals(hpVar.f22998j);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.hp ? 1 : 0) * 31) + (this.f22999l ? 1 : 0)) * 31) + this.jx) * 31) + this.f22998j.hashCode();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 790, 224})
    public static final class l<T> extends LinkedBlockingDeque<T> {
        public ThreadPoolExecutor hp;

        private l() {
        }

        public void hp(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                try {
                    if (this.hp != null) {
                        throw new IllegalStateException("You can only call setExecutor() once!");
                    }
                    if (threadPoolExecutor == null) {
                        throw new NullPointerException("executor argument can't be null!");
                    }
                    this.hp = threadPoolExecutor;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t2) {
            synchronized (this) {
                try {
                    int poolSize = this.hp.getPoolSize();
                    int activeCount = this.hp.getActiveCount();
                    int maximumPoolSize = this.hp.getMaximumPoolSize();
                    if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                        return offerFirst(t2);
                    }
                    com.byazt.ya.l lVar = j.hp;
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private jx() {
        SparseArray<Map<String, com.byazt.mg.l>> sparseArray = new SparseArray<>(2);
        this.f22992l = sparseArray;
        this.f22993q = new HashSet<>();
        this.f22990e = new l.InterfaceC0309l() { // from class: com.byazt.mg.jx.1
            @Override // com.byazt.mg.l.InterfaceC0309l
            public void hp(com.byazt.mg.l lVar) {
                int iW = lVar.w();
                synchronized (jx.this.f22992l) {
                    try {
                        Map map = (Map) jx.this.f22992l.get(iW);
                        if (map != null) {
                            map.remove(lVar.f22979s);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                com.byazt.ya.l lVar2 = j.hp;
            }
        };
        l<Runnable> lVar = new l<>();
        this.jx = lVar;
        ExecutorService executorServiceHp = hp(lVar);
        this.f22991j = executorServiceHp;
        lVar.hp((ThreadPoolExecutor) executorServiceHp);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    public void hp(com.byazt.ya.jx jxVar) {
        this.eb = jxVar;
    }

    public void l() {
        com.byazt.vk.hp.hp(new Runnable() { // from class: com.byazt.mg.jx.3
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                ArrayList arrayList = new ArrayList();
                synchronized (jx.this.f22992l) {
                    try {
                        int size = jx.this.f22992l.size();
                        i2 = 0;
                        for (int i3 = 0; i3 < size; i3++) {
                            Map map = (Map) jx.this.f22992l.get(jx.this.f22992l.keyAt(i3));
                            if (map != null) {
                                arrayList.addAll(map.values());
                                map.clear();
                            }
                        }
                        jx.this.jx.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int size2 = arrayList.size();
                while (i2 < size2) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((com.byazt.mg.l) obj).hp();
                    com.byazt.ya.l lVar = j.hp;
                }
            }
        });
    }

    public void hp(com.byazt.zt.jx jxVar) {
        this.f22989a = jxVar;
    }

    public void hp(int i2) {
        if (i2 > 0) {
            this.hp = i2;
        }
        com.byazt.ya.l lVar = j.hp;
    }

    public static jx hp() {
        if (f22988w == null) {
            synchronized (jx.class) {
                try {
                    if (f22988w == null) {
                        f22988w = new jx();
                    }
                } finally {
                }
            }
        }
        return f22988w;
    }

    public void hp(boolean z2, boolean z3, int i2, String str, String... strArr) {
        hp(z2, z3, i2, str, null, strArr);
    }

    public void hp(boolean z2, boolean z3, int i2, String str, Map<String, String> map, String... strArr) {
        ArrayList arrayList;
        com.byazt.ya.l lVar = j.hp;
        com.byazt.ya.hp hpVar = z2 ? this.f22994s : this.eb;
        com.byazt.zt.jx jxVar = this.f22989a;
        if (hpVar != null && jxVar != null) {
            if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
                return;
            }
            int i3 = i2 <= 0 ? this.hp : i2;
            String strHp = z3 ? str : com.byazt.qm.hp.hp(str);
            File fileJ = hpVar.j(strHp);
            if (fileJ != null && fileJ.length() >= i3) {
                if (j.f22987w) {
                    fileJ.length();
                    return;
                }
                return;
            }
            synchronized (this.f22992l) {
                try {
                    Map<String, com.byazt.mg.l> map2 = this.f22992l.get(z2 ? 1 : 0);
                    if (map2.containsKey(strHp)) {
                        return;
                    }
                    hp hpVar2 = new hp(z2, z3, i3, str, map, strArr);
                    String str2 = this.gu;
                    if (str2 != null) {
                        int i4 = j.jx;
                        if (i4 == 3) {
                            synchronized (this.f22993q) {
                                this.f22993q.add(hpVar2);
                            }
                            return;
                        } else {
                            if (i4 == 2) {
                                return;
                            }
                            if (i4 == 1 && this.jl == z2 && str2.equals(strHp)) {
                                return;
                            }
                        }
                    }
                    List<a.l> listHp = com.byazt.vk.hp.hp(com.byazt.vk.hp.hp(map));
                    if (listHp != null) {
                        arrayList = new ArrayList(listHp.size());
                        int size = listHp.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            a.l lVar2 = listHp.get(i5);
                            if (lVar2 != null) {
                                arrayList.add(new a.l(lVar2.hp, lVar2.f22972l));
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    com.byazt.mg.l lVarHp = new l.hp().hp(hpVar).hp(jxVar).hp(str).l(strHp).hp(new s(com.byazt.vk.hp.hp(strArr))).hp((List<a.l>) arrayList).hp(i3).hp(this.f22990e).hp(hpVar2).hp();
                    map2.put(strHp, lVarHp);
                    this.f22991j.execute(lVarHp);
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (j.f22987w) {
            u.l("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
        }
    }

    public void hp(String str) {
        hp(false, false, str);
    }

    public void hp(final boolean z2, final boolean z3, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.vk.hp.hp(new Runnable() { // from class: com.byazt.mg.jx.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mg.l lVar;
                synchronized (jx.this.f22992l) {
                    try {
                        Map map = (Map) jx.this.f22992l.get(com.byazt.zt.l.hp(z2));
                        if (map != null) {
                            lVar = (com.byazt.mg.l) map.remove(z3 ? str : com.byazt.qm.hp.hp(str));
                        } else {
                            lVar = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (lVar != null) {
                    lVar.hp();
                }
            }
        });
    }

    private static ExecutorService hp(final l<Runnable> lVar) {
        int i2;
        int iHp = com.byazt.vk.hp.hp();
        if (iHp > 0) {
            if (iHp > 4) {
                i2 = 4;
            }
            return new com.byazt.shx.j(0, i2, 60L, TimeUnit.SECONDS, lVar, new ThreadFactory() { // from class: com.byazt.mg.jx.4
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    com.byazt.shx.jx jxVar = new com.byazt.shx.jx(runnable) { // from class: com.byazt.mg.jx.4.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Process.setThreadPriority(10);
                            } catch (Throwable unused) {
                            }
                            super.run();
                        }
                    };
                    jxVar.setName("csj_video_preload_" + jxVar.getId());
                    jxVar.setDaemon(true);
                    if (j.f22987w) {
                        jxVar.getName();
                    }
                    return jxVar;
                }
            }, new RejectedExecutionHandler() { // from class: com.byazt.mg.jx.5
                @Override // java.util.concurrent.RejectedExecutionHandler
                public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                    try {
                        lVar.offerFirst(runnable);
                        com.byazt.ya.l lVar2 = j.hp;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
        iHp = 1;
        i2 = iHp;
        return new com.byazt.shx.j(0, i2, 60L, TimeUnit.SECONDS, lVar, new ThreadFactory() { // from class: com.byazt.mg.jx.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.byazt.shx.jx jxVar = new com.byazt.shx.jx(runnable) { // from class: com.byazt.mg.jx.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable unused) {
                        }
                        super.run();
                    }
                };
                jxVar.setName("csj_video_preload_" + jxVar.getId());
                jxVar.setDaemon(true);
                if (j.f22987w) {
                    jxVar.getName();
                }
                return jxVar;
            }
        }, new RejectedExecutionHandler() { // from class: com.byazt.mg.jx.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    lVar.offerFirst(runnable);
                    com.byazt.ya.l lVar2 = j.hp;
                } catch (Throwable unused) {
                }
            }
        });
    }
}
