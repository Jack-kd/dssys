package com.byazt.ktd;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.ktd.w;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 38})
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static WeakReference<View> f22151a;

    /* renamed from: s, reason: collision with root package name */
    public static Field f22157s;
    public static final Map<View, w.C0299w> hp = new WeakHashMap();

    /* renamed from: l, reason: collision with root package name */
    public static final Map<View, Boolean> f22155l = new WeakHashMap();
    public static int jx = -1;

    /* renamed from: j, reason: collision with root package name */
    public static long f22153j = 0;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22160w = false;
    public static final Rect eb = new Rect();

    /* renamed from: q, reason: collision with root package name */
    public static boolean f22156q = false;

    /* renamed from: e, reason: collision with root package name */
    public static long f22152e = 0;
    public static int gu = 0;
    public static volatile String jl = null;
    public static final Handler zy = new Handler(Looper.getMainLooper());

    /* renamed from: k, reason: collision with root package name */
    public static final AtomicBoolean f22154k = new AtomicBoolean(false);

    /* renamed from: v, reason: collision with root package name */
    public static final AtomicBoolean f22159v = new AtomicBoolean(false);

    /* renamed from: u, reason: collision with root package name */
    public static final Runnable f22158u = new Runnable() { // from class: com.byazt.ktd.j.1
        @Override // java.lang.Runnable
        public void run() {
            j.f22154k.set(false);
            try {
                j.k();
            } catch (Throwable unused) {
            }
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static final class hp extends View.AccessibilityDelegate {
        public final View.AccessibilityDelegate hp;

        /* renamed from: l, reason: collision with root package name */
        public boolean f22161l;

        public hp(View.AccessibilityDelegate accessibilityDelegate) {
            this.hp = accessibilityDelegate;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i2) {
            if (this.f22161l) {
                super.sendAccessibilityEvent(view, i2);
                return;
            }
            this.f22161l = true;
            try {
                View.AccessibilityDelegate accessibilityDelegate = this.hp;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.sendAccessibilityEvent(view, i2);
                } else {
                    super.sendAccessibilityEvent(view, i2);
                }
                this.f22161l = false;
                if (i2 == 1 || i2 == 4) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - j.f22153j < 300) {
                        return;
                    }
                    long unused = j.f22153j = jCurrentTimeMillis;
                    w.C0299w c0299w = (w.C0299w) j.hp.get(view);
                    if (c0299w != null) {
                        int unused2 = j.jx = c0299w.hp;
                        j.l(c0299w.hp());
                        int unused3 = j.jx;
                    }
                }
            } catch (Throwable th) {
                this.f22161l = false;
                throw th;
            }
        }
    }

    public static String a() {
        if (u()) {
            return k();
        }
        String str = jl;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ((str == null || jCurrentTimeMillis - f22152e >= 60000) && f22154k.compareAndSet(false, true)) {
            zy.post(f22158u);
        }
        return str != null ? str : " ";
    }

    @MainThread
    public static void eb() {
        jl = null;
        f22152e = 0L;
        gu = 0;
    }

    @MainThread
    public static void j() {
        f22160w = true;
    }

    @MainThread
    public static void jx() {
        hp.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static String k() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = jl;
        boolean z2 = str != null && str.startsWith("Tab_");
        boolean z3 = z2 && gu >= 3;
        if (str != null && ((!z2 || z3) && jCurrentTimeMillis - f22152e < 60000)) {
            return str;
        }
        s();
        if (jl == null && (w.jx() == null || w.jx().isEmpty())) {
            v();
        }
        String str2 = jl;
        if (str2 == null) {
            str2 = "";
        }
        if (!str2.startsWith("Tab_")) {
            gu = 0;
        } else if (z2) {
            gu++;
        } else {
            gu = 1;
        }
        jl = str2;
        f22152e = jCurrentTimeMillis;
        return str2;
    }

    @MainThread
    public static void s() {
        int iJ;
        if (f22160w && xs() && (iJ = w.j()) >= 0) {
            int i2 = jx;
            boolean z2 = iJ != i2;
            boolean z3 = i2 < 0;
            if (z2) {
                jx = iJ;
            } else if (!z3) {
                return;
            }
            l(jx(iJ));
        }
    }

    private static boolean u() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    @MainThread
    private static void v() {
        w.l lVarHp;
        List<w.C0299w> list;
        int i2;
        AtomicBoolean atomicBoolean = f22159v;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        try {
            Activity activityHp = eb.hp();
            if (activityHp == null || (lVarHp = w.hp(activityHp)) == null || (list = lVarHp.f22185j) == null || list.isEmpty() || (i2 = lVarHp.f22186l) < 0 || i2 >= lVarHp.f22185j.size()) {
                return;
            }
            f22160w = true;
            hp(lVarHp.f22186l);
        } catch (Throwable unused) {
        }
    }

    @MainThread
    public static void w() {
        f22160w = false;
    }

    @MainThread
    private static boolean xs() {
        View view;
        WeakReference<View> weakReference = f22151a;
        if (weakReference != null && (view = weakReference.get()) != null && view.isAttachedToWindow() && view.getVisibility() == 0 && view.getWidth() > 0 && view.getHeight() > 0) {
            return view.getGlobalVisibleRect(eb);
        }
        return false;
    }

    private static String jx(int i2) {
        String strConcat = "Tab_".concat(String.valueOf(i2));
        List<w.C0299w> listJx = w.jx();
        if (listJx != null && i2 >= 0 && i2 < listJx.size()) {
            String strHp = listJx.get(i2).hp();
            if (!TextUtils.isEmpty(strHp)) {
                return strHp;
            }
        }
        return strConcat;
    }

    @MainThread
    public static int l() {
        return jx;
    }

    @MainThread
    public static void hp() {
        jx = -1;
        f22160w = false;
        eb();
        f22159v.set(false);
        gu = 0;
        f22155l.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void l(String str) {
        if (str == null) {
            str = "";
        }
        jl = str;
        f22152e = System.currentTimeMillis();
    }

    @MainThread
    private static void l(View view) {
        Map<View, Boolean> map = f22155l;
        if (map.containsKey(view)) {
            return;
        }
        View.AccessibilityDelegate accessibilityDelegateJx = jx(view);
        if (accessibilityDelegateJx instanceof hp) {
            return;
        }
        view.setAccessibilityDelegate(new hp(accessibilityDelegateJx));
        map.put(view, Boolean.TRUE);
    }

    @MainThread
    private static View.AccessibilityDelegate jx(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (f22156q) {
            return null;
        }
        try {
            if (f22157s == null) {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f22157s = declaredField;
                declaredField.setAccessible(true);
            }
            Object obj = f22157s.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
        } catch (Throwable unused) {
            f22156q = true;
        }
        return null;
    }

    @MainThread
    public static void hp(int i2) {
        jx = i2;
        l(jx(i2));
    }

    @MainThread
    public static void hp(View view) {
        f22151a = view != null ? new WeakReference<>(view) : null;
    }

    @MainThread
    public static void hp(View view, w.C0299w c0299w) {
        if (view == null) {
            return;
        }
        hp.put(view, c0299w);
        l(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                hp(viewGroup.getChildAt(i2), c0299w);
            }
        }
    }
}
