package com.byazt.jz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 40, 65})
/* loaded from: classes.dex */
public class vv {

    /* renamed from: a, reason: collision with root package name */
    public static volatile Handler f21993a = null;
    public static volatile boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f21995l = new AtomicBoolean(false);
    public static AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public static AtomicBoolean f21994j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static final long f21996w = SystemClock.elapsedRealtime();

    @com.byazt.kj.hp(hp = {0, 1, 40, 1544})
    public static final class hp implements com.byazt.nke.ns {
        private hp() {
        }

        @Override // com.byazt.nke.ns
        public void clearAllCache() {
            com.byazt.ws.l.l().clearAllCache();
        }

        @Override // com.byazt.nke.ns
        public void clearCache(double d2) {
            com.byazt.ws.l.l().clearCache(d2);
        }

        @Override // com.byazt.nke.ns
        public void clearDiskCache(double d2) {
            com.byazt.ws.l.l().clearDiskCache(d2);
        }

        @Override // com.byazt.nke.ns
        public void clearMemoryCache(double d2) {
            com.byazt.ws.l.l().clearMemoryCache(d2);
        }

        @Override // com.byazt.nke.ns
        public com.byazt.nke.k from(String str) {
            return com.byazt.ws.l.l().from(str);
        }

        @Override // com.byazt.nke.ns
        public InputStream getCacheStream(String str, String str2) {
            return com.byazt.ws.l.l().getCacheStream(str, str2);
        }

        @Override // com.byazt.nke.ns
        public InputStream getDiskCacheStream(String str, String str2, String str3) {
            return com.byazt.ws.l.l().getDiskCacheStream(str, str2, str3);
        }

        @Override // com.byazt.nke.ns
        public boolean hasDiskCache(String str, String str2, String str3) {
            return com.byazt.ws.l.l().hasDiskCache(str, str2, str3);
        }
    }

    public static Handler a() {
        if (f21993a == null) {
            synchronized (vv.class) {
                try {
                    if (f21993a == null) {
                        f21993a = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return f21993a;
    }

    private static void eb() {
        if (Build.VERSION.SDK_INT < 28) {
            return;
        }
        try {
            Class.forName("android.content.pm.PackageParser$Package").getDeclaredConstructor(String.class).setAccessible(true);
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objInvoke, true);
        } catch (Throwable unused) {
        }
    }

    public static void hp() {
        Context context;
        if (f21994j.get() || !sz.l().ea() || (context = sz.getContext()) == null) {
            return;
        }
        try {
            com.byazt.cm.w.hp().l().hp(context, true, (com.byazt.aq.l) new com.byazt.cm.j(context));
        } catch (Exception unused) {
        }
        f21994j.set(true);
    }

    public static void j() {
        com.byazt.ui.hp.hp().hp(new com.byazt.ui.jx() { // from class: com.byazt.jz.vv.2
            @Override // com.byazt.ui.jx
            public String a() {
                return s.u().ns();
            }

            @Override // com.byazt.ui.jx
            public int e() {
                return s.u().zx();
            }

            @Override // com.byazt.ui.jx
            public int eb() {
                return 0;
            }

            @Override // com.byazt.ui.jx
            public Context getContext() {
                return sz.getContext();
            }

            @Override // com.byazt.ui.jx
            public int gu() {
                return sz.l().cd();
            }

            @Override // com.byazt.ui.jx
            public int hp() {
                if (sz.l() == null) {
                    return 0;
                }
                return sz.l().lu();
            }

            @Override // com.byazt.ui.jx
            public com.byazt.ap.l j() {
                return com.byazt.cm.w.hp().l().j();
            }

            @Override // com.byazt.ui.jx
            public boolean jl() {
                return com.byazt.ton.l.hp();
            }

            @Override // com.byazt.ui.jx
            public com.byazt.gr.hp jx() {
                return sz.hp().hp(1);
            }

            @Override // com.byazt.ui.jx
            public ExecutorService k() {
                return null;
            }

            @Override // com.byazt.ui.jx
            public Handler l() {
                return vv.a();
            }

            @Override // com.byazt.ui.jx
            public int q() {
                return sz.l().ll();
            }

            @Override // com.byazt.ui.jx
            public int s() {
                return sz.l().cu();
            }

            @Override // com.byazt.ui.jx
            public int v() {
                return xh.j(sz.getContext());
            }

            @Override // com.byazt.ui.jx
            public com.byazt.ap.jx w() {
                return com.byazt.cm.w.hp().l().jx();
            }

            @Override // com.byazt.ui.jx
            public ExecutorService zy() {
                return null;
            }
        });
        com.byazt.ymw.v.hp(new v.hp() { // from class: com.byazt.jz.vv.3
            @Override // com.byazt.ymw.v.hp
            public String hp() {
                return com.byazt.ij.jx.hp("");
            }

            @Override // com.byazt.ymw.v.hp
            public String l() {
                return com.byazt.ij.w.hp().j();
            }
        });
    }

    public static void jx() {
        com.byazt.ctq.jx jxVarHp = l.hp();
        long jCurrentTimeMillis = jxVarHp.get("sdk_first_init_timestamp", 0L);
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
            jxVarHp.put("sdk_first_init_timestamp", jCurrentTimeMillis);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        String strL = ky.l(jCurrentTimeMillis, jCurrentTimeMillis2);
        long j2 = jxVarHp.get("sdk_init_timestamp", 0L);
        StringBuilder sb = new StringBuilder();
        sb.append(j2 != 0 ? (jCurrentTimeMillis2 - j2) / 1000 : 0L);
        com.byazt.lf.k.hp().hp(strL, sb.toString());
        jxVarHp.put("sdk_init_timestamp", System.currentTimeMillis());
    }

    public static void l() {
        sz.l().hp(1);
        if (!f21994j.get()) {
            hp();
        }
        Context context = sz.getContext();
        if (context == null) {
            return;
        }
        try {
            com.byazt.cm.w.hp().l().hp(context, com.byazt.ton.l.hp());
        } catch (Exception unused) {
        }
    }

    private static void s() {
        com.byazt.lca.j.hp().l(UUID.randomUUID().toString());
    }

    public static void w() {
        com.byazt.ui.hp.hp().hp(new com.byazt.ui.l() { // from class: com.byazt.jz.vv.4
            @Override // com.byazt.ui.l
            public int delete(String str, String str2, String[] strArr) {
                return com.byazt.jnq.hp.delete(sz.getContext(), str, str2, strArr);
            }

            @Override // com.byazt.ui.l
            public void insert(String str, ContentValues contentValues) {
                com.byazt.jnq.hp.insert(sz.getContext(), str, contentValues);
            }

            @Override // com.byazt.ui.l
            public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
                return com.byazt.jnq.hp.query(sz.getContext(), str, strArr, str2, strArr2, str3, str4, str5);
            }

            @Override // com.byazt.ui.l
            public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
                return com.byazt.jnq.hp.update(sz.getContext(), str, contentValues, str2, strArr);
            }
        });
        com.byazt.ui.hp.hp().hp(new com.byazt.ui.j() { // from class: com.byazt.jz.vv.5
            @Override // com.byazt.ui.j
            public void hp(final int i2) {
                com.byazt.lf.k.hp().w(new com.byazt.fq.hp() { // from class: com.byazt.jz.vv.5.1
                    @Override // com.byazt.fq.hp
                    public com.byazt.jlb.hp hp() throws Exception {
                        return com.byazt.jlb.l.l().l(i2).eb(eb.hp(i2));
                    }
                });
            }
        });
        com.byazt.ui.hp.hp().hp(new hp());
        com.byazt.ui.hp.hp().hp(new com.byazt.ui.w() { // from class: com.byazt.jz.vv.6
            @Override // com.byazt.ui.w
            public void delete(String str, String str2) {
                com.byazt.lca.l.hp().hp(str, str2);
            }

            @Override // com.byazt.ui.w
            public void update(String str, com.byazt.gr.jx jxVar) {
                com.byazt.lca.l.hp().hp(str, jxVar);
            }
        });
    }

    public static void hp(Context context) {
        f21995l.set(true);
        jx.set(true);
        eb();
        xh.hp(context);
        s();
        String strHp = com.byazt.zn.v.hp();
        if (!TextUtils.isEmpty(strHp)) {
            com.byazt.lf.l.hp(strHp);
        }
        if (com.byazt.lk.hp.hp() != null) {
            com.byazt.lk.hp.hp().hp(strHp);
        }
        com.byazt.ir.l.hp();
        new com.byazt.wu.l(256).hp(new Runnable() { // from class: com.byazt.jz.vv.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.eq.l.l();
            }
        });
    }
}
