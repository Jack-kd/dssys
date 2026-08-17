package com.byazt.zn;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Window;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 28})
/* loaded from: classes3.dex */
public class hp implements Application.ActivityLifecycleCallbacks {
    public static boolean hp = false;
    public static long jx;

    /* renamed from: l, reason: collision with root package name */
    public static long f28502l;

    /* renamed from: a, reason: collision with root package name */
    public volatile l f28503a;

    /* renamed from: j, reason: collision with root package name */
    public volatile InterfaceC0436hp f28505j;

    /* renamed from: u, reason: collision with root package name */
    public Handler f28509u;

    /* renamed from: v, reason: collision with root package name */
    public volatile WeakReference<Activity> f28510v;

    /* renamed from: w, reason: collision with root package name */
    public volatile Application.ActivityLifecycleCallbacks f28511w;
    public volatile WeakReference<Activity> xs;
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f28508s = new AtomicBoolean(false);

    /* renamed from: q, reason: collision with root package name */
    public final HashSet<Integer> f28507q = new HashSet<>();

    /* renamed from: e, reason: collision with root package name */
    public volatile CopyOnWriteArrayList<WeakReference<com.byazt.wkx.hp>> f28504e = new CopyOnWriteArrayList<>();
    public volatile CopyOnWriteArrayList<l> gu = new CopyOnWriteArrayList<>();
    public volatile CopyOnWriteArrayList<InterfaceC0436hp> jl = new CopyOnWriteArrayList<>();
    public final ArrayList<String> zy = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    public SparseArray<Set<Runnable>> f28506k = new SparseArray<>();

    /* renamed from: com.byazt.zn.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0436hp {
        void hp();

        void hp(String str, Window window);

        void l(String str, Window window);
    }

    @com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public static abstract class jx implements InterfaceC0436hp {
        @Override // com.byazt.zn.hp.InterfaceC0436hp
        public void hp() {
        }

        @Override // com.byazt.zn.hp.InterfaceC0436hp
        public void l(String str, Window window) {
        }

        @Override // com.byazt.zn.hp.InterfaceC0436hp
        public void hp(String str, Window window) {
        }
    }

    public interface l {
        void onAppBackground();

        void onAppExit();

        void onAppForeground();

        void onAppStart();
    }

    private boolean a() {
        Function<SparseArray<Object>, Object> functionY = com.byazt.jz.s.u().y();
        if (functionY != null) {
            try {
                Object objApply = functionY.apply(com.byazt.wi.j.hp().hp(2).hp(Boolean.class).l());
                if (objApply != null) {
                    return ((Boolean) objApply).booleanValue();
                }
                return false;
            } catch (Exception unused) {
            }
        }
        return this.eb.get();
    }

    private void eb() {
        if (!com.byazt.jz.s.u().nu() && l()) {
            com.byazt.uid.w.jx(new com.byazt.uid.eb("reportSdkUseTime") { // from class: com.byazt.zn.hp.6
                @Override // java.lang.Runnable
                public void run() {
                    hp.hp = false;
                    hp.jx = System.currentTimeMillis();
                    com.byazt.lf.k.hp().hp(hp.f28502l / 1000, hp.jx / 1000, !com.byazt.jz.vv.f21995l.get() ? 1 : 0);
                    com.byazt.jz.vv.f21995l.set(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@ForbidWrapParam Activity activity) {
        if (activity != null) {
            this.f28507q.remove(Integer.valueOf(activity.hashCode()));
            if (this.f28507q.size() == 0) {
                this.f28508s.set(true);
                jx(false);
            }
        }
        if (this.f28511w != null) {
            this.f28511w.onActivityDestroyed(activity);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (this.f28504e != null && this.f28504e.size() > 0) {
            Iterator<WeakReference<com.byazt.wkx.hp>> it2 = this.f28504e.iterator();
            while (it2.hasNext()) {
                WeakReference<com.byazt.wkx.hp> next = it2.next();
                if (next != null && next.get() != null) {
                    try {
                        next.get().hp(activity);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (this.f28510v != null && this.f28510v.get() == activity) {
            this.f28510v = null;
        }
        try {
            com.byazt.ktd.eb.j(activity);
        } catch (Throwable unused2) {
        }
        if (activity != null) {
            int iHashCode = activity.hashCode();
            synchronized (this.f28506k) {
                try {
                    Set<Runnable> set = this.f28506k.get(iHashCode);
                    if (set != null) {
                        for (Runnable runnable : set) {
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                        this.f28506k.remove(iHashCode);
                    }
                } finally {
                }
            }
        }
    }

    private void s() {
        mp mpVarHp;
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        long j2 = jxVarHp.get("save_jump_success_time", 0L);
        if (j2 <= 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        String str = jxVarHp.get("save_jump_success_ad_tag", "");
        String str2 = jxVarHp.get("save_dpl_success_materialmeta", "");
        String str3 = jxVarHp.get("save_download_open_app_success_meta", "");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            jxVarHp.remove("save_download_open_app_success_meta");
            hp(str3, jCurrentTimeMillis);
            return;
        }
        jxVarHp.remove("save_dpl_success_materialmeta");
        try {
            mpVarHp = com.byazt.jz.hp.hp(new JSONObject(str2));
        } catch (JSONException unused) {
            mpVarHp = null;
        }
        if (mpVarHp != null) {
            hp(jCurrentTimeMillis, mpVarHp);
            hp(jCurrentTimeMillis, mpVarHp, str);
        }
    }

    private Handler w() {
        if (this.f28509u == null) {
            if (com.byazt.jz.sz.l().rp()) {
                this.f28509u = com.byazt.ymw.e.jx();
            } else {
                this.f28509u = com.byazt.ymw.e.l();
            }
        }
        return this.f28509u;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
        if (this.f28511w != null) {
            this.f28511w.onActivityCreated(activity, bundle);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            it.next();
        }
        try {
            com.byazt.ktd.eb.hp(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam final Activity activity) {
        w().post(new Runnable() { // from class: com.byazt.zn.hp.5
            @Override // java.lang.Runnable
            public void run() {
                hp.this.j(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam final Activity activity) {
        w().post(new Runnable() { // from class: com.byazt.zn.hp.3
            @Override // java.lang.Runnable
            public void run() {
                hp.this.jx(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@ForbidWrapParam final Activity activity) {
        w().post(new Runnable() { // from class: com.byazt.zn.hp.2
            @Override // java.lang.Runnable
            public void run() {
                hp.this.l(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam final Activity activity) {
        final String name = activity.getClass().getName();
        final Window window = activity.getWindow();
        com.byazt.ymw.e.l().post(new Runnable() { // from class: com.byazt.zn.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.hp(activity, name, window);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam final Activity activity) {
        final String name = activity.getClass().getName();
        final Window window = activity.getWindow();
        w().post(new Runnable() { // from class: com.byazt.zn.hp.4
            @Override // java.lang.Runnable
            public void run() {
                hp.this.l(activity, name, window);
            }
        });
    }

    private void jx(boolean z2) {
        try {
            if (z2) {
                if (this.f28503a != null) {
                    this.f28503a.onAppStart();
                }
                Iterator<l> it = this.gu.iterator();
                while (it.hasNext()) {
                    l next = it.next();
                    if (next != null) {
                        next.onAppStart();
                    }
                }
                return;
            }
            if (this.f28503a != null) {
                this.f28503a.onAppExit();
            }
            Iterator<l> it2 = this.gu.iterator();
            while (it2.hasNext()) {
                l next2 = it2.next();
                if (next2 != null) {
                    next2.onAppExit();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void l(boolean z2) {
        try {
            if (z2) {
                if (this.f28503a != null) {
                    this.f28503a.onAppForeground();
                }
                Iterator<l> it = this.gu.iterator();
                while (it.hasNext()) {
                    l next = it.next();
                    if (next != null) {
                        next.onAppForeground();
                    }
                }
                return;
            }
            if (this.f28503a != null) {
                this.f28503a.onAppBackground();
            }
            Iterator<l> it2 = this.gu.iterator();
            while (it2.hasNext()) {
                l next2 = it2.next();
                if (next2 != null) {
                    next2.onAppBackground();
                }
            }
        } catch (Exception unused) {
        }
    }

    public WeakReference<Activity> hp() {
        return this.f28510v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(@ForbidWrapParam Activity activity, String str, Window window) {
        if (this.f28508s.get()) {
            jx(true);
        }
        if (this.eb.get()) {
            l(true);
        }
        if (!this.zy.contains(activity.toString())) {
            this.zy.add(activity.toString());
            this.eb.set(false);
            com.byazt.eq.l.w();
        }
        if (this.xs != null && this.xs.get() != null && this.xs.get() == activity) {
            s();
        }
        if (this.f28505j != null) {
            this.f28505j.hp(str, window);
        }
        if (this.f28511w != null) {
            this.f28511w.onActivityStarted(activity);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            InterfaceC0436hp next = it.next();
            if (next != null) {
                next.hp(str, window);
            }
        }
        xh.w(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(@ForbidWrapParam Activity activity) {
        if (this.f28511w != null) {
            this.f28511w.onActivityPaused(activity);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (!com.byazt.jz.s.u().nu() && activity != null && activity.getComponentName() != null) {
            com.byazt.zn.l.hp().jx(activity.getComponentName().getClassName());
        }
        try {
            com.byazt.ktd.eb.jx(activity);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@ForbidWrapParam Activity activity) {
        if (activity != null && this.f28507q.add(Integer.valueOf(activity.hashCode()))) {
            this.f28508s.set(false);
        }
        if (this.f28505j != null) {
            this.f28505j.hp();
        }
        if (this.f28511w != null) {
            this.f28511w.onActivityResumed(activity);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            InterfaceC0436hp next = it.next();
            if (next != null) {
                next.hp();
            }
        }
        com.byazt.aq.hp.hp(com.byazt.jz.sz.getContext(), Integer.parseInt("1371"));
        if (!hp) {
            f28502l = System.currentTimeMillis();
            hp = true;
        }
        this.f28510v = new WeakReference<>(activity);
        if (!com.byazt.jz.s.u().nu()) {
            if (activity != null && activity.getComponentName() != null) {
                com.byazt.zn.l.hp().hp(activity.getComponentName().getClassName());
            }
            if (activity != null && activity.getIntent() != null) {
                jl.hp().hp(activity.getIntent());
            }
        }
        try {
            com.byazt.ktd.eb.l(activity);
        } catch (Throwable unused) {
        }
    }

    public void jx(l lVar) {
        this.f28503a = lVar;
    }

    public void jx() {
        if (this.f28505j != null) {
            this.f28505j = null;
        }
    }

    public boolean hp(boolean z2) {
        Activity activity;
        Window window;
        WeakReference<Activity> weakReference = this.f28510v;
        return (weakReference == null || (activity = weakReference.get()) == null || (window = activity.getWindow()) == null) ? z2 : window.getDecorView().hasWindowFocus();
    }

    public void j() {
        com.byazt.zn.l.hp().l();
    }

    public boolean hp(@ForbidWrapParam Activity activity) {
        return activity != null && this.f28507q.contains(Integer.valueOf(activity.hashCode()));
    }

    private void hp(String str, long j2) {
        mp mpVarHp;
        try {
            mpVarHp = com.byazt.jz.hp.hp(new JSONObject(str));
        } catch (JSONException unused) {
            mpVarHp = null;
        }
        if (mpVarHp != null) {
            hp(j2, mpVarHp);
        }
    }

    private void hp(long j2, mp mpVar) {
        if (!mpVar.hl() || mpVar.ba() < 0) {
            return;
        }
        boolean z2 = j2 >= ((long) mpVar.ba()) * 1000;
        com.byazt.gu.l lVar = (com.byazt.gu.l) com.byazt.jz.n.hp(mpVar.n(), com.byazt.gu.l.class);
        if (lVar != null) {
            lVar.hp(z2 ? 5 : 6, null);
        }
        if (z2) {
            com.byazt.jdb.j.hp(mpVar, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@ForbidWrapParam Activity activity, String str, Window window) {
        if (this.zy.contains(activity.toString())) {
            this.zy.remove(activity.toString());
            if (this.zy.size() == 0) {
                this.eb.set(true);
                com.byazt.eq.l.j();
                l(false);
            }
        }
        this.xs = new WeakReference<>(activity);
        if (this.f28505j != null) {
            this.f28505j.l(str, window);
        }
        if (this.f28511w != null) {
            this.f28511w.onActivityStopped(activity);
        }
        Iterator<InterfaceC0436hp> it = this.jl.iterator();
        while (it.hasNext()) {
            InterfaceC0436hp next = it.next();
            if (next != null) {
                next.l(str, window);
            }
        }
        eb();
        ((com.byazt.pg.u) com.byazt.ym.j.getService("kv_store_factory")).store();
    }

    private void hp(final long j2, final mp mpVar, final String str) {
        if (com.byazt.jz.s.u().nu()) {
            return;
        }
        com.byazt.dnb.s.l(new Runnable() { // from class: com.byazt.zn.hp.7
            @Override // java.lang.Runnable
            public void run() {
                long j3 = j2;
                if (j3 >= 86400000 || j3 <= 0) {
                    return;
                }
                com.byazt.jdb.j.hp(j3, str, mpVar);
            }
        });
    }

    public void hp(InterfaceC0436hp interfaceC0436hp) {
        this.f28505j = interfaceC0436hp;
    }

    public void hp(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f28511w = activityLifecycleCallbacks;
    }

    public void hp(com.byazt.wkx.hp hpVar) {
        this.f28504e.add(new WeakReference<>(hpVar));
    }

    public void hp(l lVar) {
        if (this.gu.contains(lVar)) {
            return;
        }
        this.gu.add(lVar);
    }

    public boolean hp(Activity activity, Runnable runnable) {
        boolean zAdd;
        if (activity == null) {
            return false;
        }
        int iHashCode = activity.hashCode();
        synchronized (this.f28506k) {
            try {
                Set<Runnable> hashSet = this.f28506k.get(iHashCode);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    this.f28506k.put(iHashCode, hashSet);
                }
                zAdd = hashSet.add(runnable);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zAdd;
    }

    public boolean l() {
        return a();
    }

    public boolean l(com.byazt.wkx.hp hpVar) {
        return this.f28504e.remove(new WeakReference(hpVar));
    }

    public void l(InterfaceC0436hp interfaceC0436hp) {
        if (this.jl.contains(interfaceC0436hp)) {
            return;
        }
        this.jl.add(interfaceC0436hp);
    }

    public void l(l lVar) {
        if (lVar != null) {
            this.gu.remove(lVar);
        }
    }
}
