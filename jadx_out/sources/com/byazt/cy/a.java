package com.byazt.cy;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.cy.jx;
import com.byazt.cy.l;
import com.byazt.fu.DownloadInfo;
import com.byazt.rc.q;
import com.byazt.yk.SqlDownloadCacheService;
import com.byazt.yk.jx;
import com.byazt.yk.sz;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1052, 54})
/* loaded from: classes2.dex */
public class a implements ServiceConnection, sz {

    /* renamed from: j, reason: collision with root package name */
    public static long f19024j;
    public static int jx;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f19025l;
    public jx.hp.InterfaceC0421hp eb;

    @Nullable
    public jx hp;

    /* renamed from: q, reason: collision with root package name */
    public Future<?> f19028q;

    /* renamed from: w, reason: collision with root package name */
    public Handler f19030w = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    public l f19026a = null;

    /* renamed from: s, reason: collision with root package name */
    public Runnable f19029s = new Runnable() { // from class: com.byazt.cy.a.1
        @Override // java.lang.Runnable
        public void run() {
            if (a.f19025l || a.this.eb == null) {
                return;
            }
            a.this.eb.hp();
        }
    };

    /* renamed from: e, reason: collision with root package name */
    public CountDownLatch f19027e = new CountDownLatch(1);

    public a() {
        SqlDownloadCacheService.hp(com.byazt.yk.jx.mp(), this);
    }

    @Override // com.byazt.yk.e
    public DownloadInfo e(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.e(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public ArrayList<q> k(int i2) {
        return null;
    }

    @Override // com.byazt.yk.e
    public Map<Long, q> jl(int i2) {
        return null;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        f19025l = true;
        this.f19030w.removeCallbacks(this.f19029s);
        try {
            this.hp = jx.hp.hp(iBinder);
        } catch (Throwable unused) {
        }
        this.f19028q = com.byazt.yk.jx.jl().submit(new Runnable() { // from class: com.byazt.cy.a.2
            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinder2;
                IBinder.DeathRecipient deathRecipient;
                synchronized (this) {
                    try {
                        try {
                            if (a.this.f19026a != null && a.this.hp != null) {
                                a.this.hp.hp(a.this.f19026a);
                            }
                            iBinder2 = iBinder;
                            deathRecipient = new IBinder.DeathRecipient() { // from class: com.byazt.cy.a.2.1
                                @Override // android.os.IBinder.DeathRecipient
                                public void binderDied() {
                                    boolean unused2 = a.f19025l = false;
                                    if (a.this.eb() || a.this.eb == null) {
                                        return;
                                    }
                                    a.this.f19030w.postDelayed(a.this.f19029s, 2000L);
                                }
                            };
                        } catch (Throwable th) {
                            try {
                                com.byazt.nu.hp.l("SqlDownloadCacheAidlWra", "onServiceConnected fail", th);
                                if (a.this.eb != null) {
                                    a.this.eb.hp();
                                }
                                a.this.f19027e.countDown();
                                iBinder2 = iBinder;
                                deathRecipient = new IBinder.DeathRecipient() { // from class: com.byazt.cy.a.2.1
                                    @Override // android.os.IBinder.DeathRecipient
                                    public void binderDied() {
                                        boolean unused2 = a.f19025l = false;
                                        if (a.this.eb() || a.this.eb == null) {
                                            return;
                                        }
                                        a.this.f19030w.postDelayed(a.this.f19029s, 2000L);
                                    }
                                };
                            } finally {
                                a.this.f19027e.countDown();
                                try {
                                    iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.byazt.cy.a.2.1
                                        @Override // android.os.IBinder.DeathRecipient
                                        public void binderDied() {
                                            boolean unused2 = a.f19025l = false;
                                            if (a.this.eb() || a.this.eb == null) {
                                                return;
                                            }
                                            a.this.f19030w.postDelayed(a.this.f19029s, 2000L);
                                        }
                                    }, 0);
                                } catch (Throwable unused2) {
                                }
                            }
                        }
                        iBinder2.linkToDeath(deathRecipient, 0);
                    } catch (Throwable unused3) {
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.hp = null;
        f19025l = false;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo q(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.q(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public void zy(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean eb() {
        if (Build.VERSION.SDK_INT >= 26 || f19025l) {
            return false;
        }
        if (jx > 5) {
            com.byazt.nu.hp.j("SqlDownloadCacheAidlWra", "bindMainProcess: bind too many times!!! ");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f19024j < 15000) {
            com.byazt.nu.hp.j("SqlDownloadCacheAidlWra", "bindMainProcess: time too short since last bind!!! ");
            return false;
        }
        jx++;
        f19024j = jCurrentTimeMillis;
        this.f19030w.postDelayed(new Runnable() { // from class: com.byazt.cy.a.3
            @Override // java.lang.Runnable
            public void run() {
                SqlDownloadCacheService.hp(com.byazt.yk.jx.mp(), a.this);
            }
        }, 1000L);
        return true;
    }

    @Override // com.byazt.yk.e
    public boolean hp(int i2, Map<Long, q> map) {
        return false;
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> j(String str) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.j(str);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> jx(String str) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.jx(str);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo l(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.l(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo s(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.s(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public boolean w(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.w(i2);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.e
    public boolean a(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.a(i2);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.e
    public void j(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.j(i2);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public List<com.byazt.fu.l> jx(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.jx(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> l(String str) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.l(str);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public boolean w() {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.w();
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void hp(jx.hp.InterfaceC0421hp interfaceC0421hp) {
        this.eb = interfaceC0421hp;
    }

    @Override // com.byazt.yk.sz
    public void hp(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.byazt.fu.l>> sparseArray2, final j jVar) {
        com.byazt.yk.jx.jl().submit(new Runnable() { // from class: com.byazt.cy.a.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z2;
                j jVar2;
                Future future;
                a.this.hp(new l.hp() { // from class: com.byazt.cy.a.4.1
                    @Override // com.byazt.cy.l
                    public void hp(Map map, Map map2) {
                        com.byazt.xq.a.hp(sparseArray, map);
                        com.byazt.xq.a.hp(sparseArray2, map2);
                        jVar.hp();
                        a.this.hp((l) null);
                    }
                });
                try {
                    z2 = !a.this.f19027e.await(5000L, TimeUnit.MILLISECONDS);
                } catch (Throwable unused) {
                    z2 = false;
                }
                if (z2 && (future = a.this.f19028q) != null) {
                    future.cancel(true);
                }
                a.this.hp();
                if (!z2 || (jVar2 = jVar) == null) {
                    return;
                }
                jVar2.hp();
            }
        });
    }

    @Override // com.byazt.yk.e
    public DownloadInfo j(int i2, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.j(i2, j2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public void jx() {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.jx();
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> l() {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.l();
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void hp(l lVar) {
        synchronized (this) {
            jx jxVar = this.hp;
            if (jxVar != null) {
                try {
                    jxVar.hp(lVar);
                } catch (RemoteException unused) {
                }
            } else {
                this.f19026a = lVar;
            }
        }
    }

    @Override // com.byazt.yk.e
    public boolean j() {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.j();
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo jx(int i2, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.jx(i2, j2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public void l(com.byazt.fu.l lVar) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.l(lVar);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo l(int i2, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.l(i2, j2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo eb(int i2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.eb(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void hp() {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp();
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void l(DownloadInfo downloadInfo) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.l(downloadInfo);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> hp(String str) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.hp(str);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public void l(int i2, List<com.byazt.fu.l> list) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.l(i2, list);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void hp(com.byazt.fu.l lVar) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp(lVar);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp(i2, i3, j2);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, int i4, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp(i2, i3, i4, j2);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, int i4, int i5) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp(i2, i3, i4, i5);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, int i3) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.hp(i2, i3);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public boolean hp(DownloadInfo downloadInfo) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.hp(downloadInfo);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2, String str, String str2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.hp(i2, j2, str, str2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                return jxVar.hp(i2, j2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, List<com.byazt.fu.l> list) {
        try {
            jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.hp(i2, list);
            }
        } catch (RemoteException unused) {
        }
    }
}
