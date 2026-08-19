package com.byazt.ktd;

import android.R;
import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.byazt.jz.sz;
import com.byazt.ktd.w;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.component.sdk.annotation.MainThread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 94})
/* loaded from: classes.dex */
public final class eb {

    /* renamed from: a, reason: collision with root package name */
    public static int f22126a;

    /* renamed from: e, reason: collision with root package name */
    public static final Set<String> f22127e;
    public static String eb;
    public static volatile int gu;
    public static final Set<String> hp;

    /* renamed from: j, reason: collision with root package name */
    public static String f22128j;
    public static final Map<String, Boolean> jl;
    public static List<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public static final Map<String, Boolean> f22129l;

    /* renamed from: q, reason: collision with root package name */
    public static final WeakHashMap<Activity, hp> f22130q;

    /* renamed from: s, reason: collision with root package name */
    public static WeakReference<Activity> f22131s;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22132w;

    @com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 131})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f22137a;

        /* renamed from: e, reason: collision with root package name */
        public Runnable f22138e;
        public int eb;
        public Runnable gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public long f22139j;
        public Runnable jl;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public long f22140l;

        /* renamed from: q, reason: collision with root package name */
        public long f22141q;

        /* renamed from: s, reason: collision with root package name */
        public boolean f22142s;

        /* renamed from: w, reason: collision with root package name */
        public long f22143w;

        public hp(String str) {
            this.hp = str;
        }
    }

    static {
        ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
        hp = keySetViewNewKeySet;
        keySetViewNewKeySet.addAll(Arrays.asList("d22096b358acef645e49e08ad7de4bb6", "ff4b9977c134ab22a2d3618b51a36045", "7e2d432c1679374070821b28b7145c19", "b9304799be85d7222baa15927a7e3cd1", "6edca895469b266a9e12387b11115808", "8d432dfb8327eab8ced7b97f00221d4f", "2e934727248ee0cd7787256613245ba6", "07c1627688f39f4b050d7180bab92f34", "149a05b3da0f19e3ce840afe6f6c67f3", "529bd4093e440a920d7c99c8ba781a4d", "cbd09814ff5652055c2af0bb0f9d4314"));
        f22129l = new ConcurrentHashMap();
        jx = null;
        f22130q = new WeakHashMap<>();
        f22127e = Collections.newSetFromMap(new ConcurrentHashMap());
        gu = -1;
        jl = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static boolean e(Activity activity) {
        String strL = l();
        return (TextUtils.isEmpty(strL) || strL.equals(ec(activity))) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ec(Activity activity) {
        if (activity == null) {
            return "";
        }
        try {
            Object objHp = gu.hp(activity);
            return objHp == null ? activity.getClass().getName() : objHp.getClass().getName();
        } catch (Throwable unused) {
            return activity.getClass().getName();
        }
    }

    @MainThread
    private static boolean gu(Activity activity) {
        String strL = l();
        return !TextUtils.isEmpty(strL) && strL.equals(ec(activity));
    }

    private static Iterable<String> j() {
        Set<String> setKe;
        com.byazt.jkd.gu guVarL = sz.l();
        if (guVarL != null && (setKe = guVarL.ke()) != null && !setKe.isEmpty()) {
            return setKe;
        }
        if (jx == null) {
            ArrayList arrayList = new ArrayList();
            jx = arrayList;
            arrayList.add(hp(new byte[]{com.sigmob.sdk.archives.tar.e.f35452R, 117, 113, 102, com.sigmob.sdk.archives.tar.e.f35452R, 109}));
            jx.add(hp(new byte[]{108, 122, 110, 105, 106}));
            jx.add(hp(new byte[]{124, 106, 113, 104, 116, 114, 106}));
            jx.add(hp(new byte[]{110, 115, 121, 106, 119, com.sigmob.sdk.archives.tar.e.f35452R, 121, 110, 121, 110, 102, 113}));
            jx.add(hp(new byte[]{119, 116, 122, 121, 106, 119}));
            jx.add(hp(new byte[]{119, 116, 122, 121, 106}));
            jx.add(hp(new byte[]{121, 119, 102, 115, com.sigmob.sdk.archives.tar.e.f35452R, 110, 121, 110, 116, 115}));
            jx.add(hp(new byte[]{119, 106, 124, 102, 119, 105}));
        }
        return jx;
    }

    @MainThread
    private static boolean jl(Activity activity) {
        return activity != null && f22132w && activity.hashCode() == f22126a && ec(activity).equals(eb);
    }

    @MainThread
    public static void jx(Activity activity) {
        hp hpVar;
        if (activity == null) {
            return;
        }
        n(activity);
        if (vv(activity)) {
            if (gu(activity)) {
                j.w();
            }
            if (jx(activity, 6, false) || (hpVar = f22130q.get(activity)) == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            hpVar.f22139j = jCurrentTimeMillis;
            long j2 = hpVar.jx;
            if (j2 <= 0 || jCurrentTimeMillis - j2 >= 1200) {
                activity.hashCode();
            } else {
                activity.hashCode();
                xs(activity);
            }
        }
    }

    private static boolean k(Activity activity) {
        if (activity == null) {
            return false;
        }
        try {
            if (activity.getResources() != null && activity.getResources().getConfiguration() != null) {
                if (activity.getResources().getConfiguration().orientation == 2) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            if (activity.getWindow() != null && activity.getWindow().getAttributes() != null) {
                if ((activity.getWindow().getAttributes().flags & 1024) != 0) {
                    return true;
                }
            }
        } catch (Throwable unused2) {
        }
        return false;
    }

    @MainThread
    public static void l(Activity activity) {
        if (activity != null && vv(activity)) {
            String strEc = ec(activity);
            if (l(activity, strEc)) {
                return;
            }
            if (gu(activity)) {
                j.j();
            }
            if (jx(activity, 2, true)) {
                return;
            }
            if (a(strEc)) {
                xs(activity);
                return;
            }
            hp hpVarJx = jx(activity, strEc);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (hpVarJx.f22140l == 0) {
                hpVarJx.f22140l = jCurrentTimeMillis;
            }
            hpVarJx.jx = jCurrentTimeMillis;
            hpVarJx.f22137a = activity.isTaskRoot();
            activity.hashCode();
            w();
            if (!j(strEc) || (!activity.isTaskRoot() && !w())) {
                s(activity);
                return;
            }
            activity.isTaskRoot();
            w();
            l(activity, 3, true);
        }
    }

    private static void n(Activity activity) {
        hp hpVar = f22130q.get(activity);
        if (hpVar == null) {
            return;
        }
        View viewSz = sz(activity);
        if (viewSz != null) {
            Runnable runnable = hpVar.f22138e;
            if (runnable != null) {
                viewSz.removeCallbacks(runnable);
            }
            Runnable runnable2 = hpVar.gu;
            if (runnable2 != null) {
                viewSz.removeCallbacks(runnable2);
            }
            Runnable runnable3 = hpVar.jl;
            if (runnable3 != null) {
                viewSz.removeCallbacks(runnable3);
            }
        }
        hpVar.f22138e = null;
        hpVar.gu = null;
        hpVar.jl = null;
        hpVar.f22142s = false;
    }

    @MainThread
    private static void q(final Activity activity) {
        if (activity == null) {
            return;
        }
        final hp hpVarJx = jx(activity, ec(activity));
        int i2 = hpVarJx.eb + 1;
        if (i2 > 2) {
            activity.hashCode();
            if (u(activity)) {
                hp(activity, hpVarJx.hp);
                return;
            }
            return;
        }
        hpVarJx.eb = i2;
        long j2 = i2 * 3000;
        activity.hashCode();
        final WeakReference weakReference = new WeakReference(activity);
        Runnable runnable = new Runnable() { // from class: com.byazt.ktd.eb.3
            @Override // java.lang.Runnable
            public void run() {
                hpVarJx.gu = null;
                Activity activity2 = (Activity) weakReference.get();
                if (activity2 == null || activity2.isFinishing()) {
                    activity.hashCode();
                } else if (eb.vv(activity) && !eb.a(eb.ec(activity2))) {
                    activity.hashCode();
                    eb.l(activity2, 5, true);
                }
            }
        };
        hpVarJx.gu = runnable;
        View viewSz = sz(activity);
        if (viewSz != null) {
            viewSz.postDelayed(runnable, j2);
        } else {
            activity.hashCode();
            hpVarJx.gu = null;
        }
    }

    @MainThread
    private static void s(final Activity activity) {
        if (activity == null) {
            return;
        }
        final hp hpVarJx = jx(activity, ec(activity));
        if (hpVarJx.f22142s) {
            activity.hashCode();
            return;
        }
        hpVarJx.f22142s = true;
        activity.hashCode();
        final WeakReference weakReference = new WeakReference(activity);
        Runnable runnable = new Runnable() { // from class: com.byazt.ktd.eb.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hpVarJx.jl = null;
                    Activity activity2 = (Activity) weakReference.get();
                    if (activity2 != null && !activity2.isFinishing()) {
                        if (eb.vv(activity)) {
                            if (eb.e(activity2)) {
                                eb.ec(activity2);
                                eb.l();
                                return;
                            }
                            if (eb.a(eb.ec(activity2))) {
                                eb.ec(activity2);
                                return;
                            }
                            hp hpVar = hpVarJx;
                            long j2 = hpVar.jx;
                            long j3 = hpVar.f22139j;
                            long j4 = hpVar.f22143w;
                            if (j2 > 0 && j3 < j2 && j4 <= 0) {
                                if (System.currentTimeMillis() - j2 >= 3000) {
                                    eb.l(activity2, 4, true);
                                }
                                return;
                            }
                            hpVar.f22142s = false;
                            hpVar.jl = null;
                            return;
                        }
                        return;
                    }
                    activity.hashCode();
                } finally {
                    hp hpVar2 = hpVarJx;
                    hpVar2.f22142s = false;
                    hpVar2.jl = null;
                }
            }
        };
        hpVarJx.jl = runnable;
        View viewSz = sz(activity);
        if (viewSz != null) {
            viewSz.postDelayed(runnable, 4500L);
            return;
        }
        activity.hashCode();
        hpVarJx.f22142s = false;
        hpVarJx.jl = null;
    }

    private static View sz(Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            if (activity.getWindow() != null) {
                return activity.getWindow().getDecorView();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static boolean u(Activity activity) {
        View decorView;
        if (activity == null) {
            return false;
        }
        try {
            Window window = activity.getWindow();
            if (window != null && (decorView = window.getDecorView()) != null && decorView.getWidth() != 0 && decorView.getHeight() != 0) {
                View viewFindViewById = decorView.findViewById(R.id.content);
                if (viewFindViewById instanceof ViewGroup) {
                    return ((ViewGroup) viewFindViewById).getChildCount() > 0;
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean v(Activity activity) {
        if (activity == null) {
            return false;
        }
        String name = activity.getClass().getName();
        if (name.contains("UnityPlayerActivity") || name.contains("Cocos2dxActivity") || name.contains("NativeActivity") || name.contains("GameActivity")) {
            return true;
        }
        try {
            ApplicationInfo applicationInfo = activity.getApplicationInfo();
            if (applicationInfo != null) {
                if (Build.VERSION.SDK_INT >= 26 && applicationInfo.category == 0) {
                    return true;
                }
                if ((applicationInfo.flags & 33554432) != 0) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean vv(Activity activity) {
        if (jx.j() != 1) {
            return false;
        }
        if (gu == -1 && activity != null) {
            com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
            if (jxVarHp == null) {
                return true;
            }
            try {
                if (jxVarHp.get("no_tab_global", false)) {
                    long j2 = jxVarHp.get("no_tab_global_version", -1L);
                    long jZy = zy(activity);
                    if (jZy <= 0 || j2 <= 0 || j2 == jZy) {
                        gu = 0;
                    } else {
                        jxVarHp.put("no_tab_global", false);
                        jxVarHp.put("no_tab_global_class_count", 0);
                        gu = 1;
                    }
                } else {
                    gu = 1;
                }
            } catch (Throwable unused) {
                gu = 1;
            }
        }
        return gu != 0;
    }

    @MainThread
    private static void xs(Activity activity) {
        if (activity == null) {
            return;
        }
        f22130q.remove(activity);
    }

    private static long zy(Activity activity) {
        PackageInfo packageInfo;
        if (activity == null) {
            return -1L;
        }
        try {
            PackageManager packageManager = activity.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(activity.getPackageName(), 0)) == null) {
                return -1L;
            }
            return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(String str) {
        String next;
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        Iterator<String> it = j().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (lowerCase.contains(next)) {
                break;
            }
        }
        return next != null;
    }

    private static String eb(String str) {
        if (str == null) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf >= 0 ? str.substring(iLastIndexOf + 1) : str;
    }

    private static boolean w(String str) {
        try {
            String strHp = com.byazt.qkc.jx.hp(str.toLowerCase());
            if (strHp != null) {
                if (hp.contains(strHp)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static String hp(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = (byte) (bArr[i2] - 5);
        }
        return new String(bArr2);
    }

    private static boolean w() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        for (hp hpVar : f22130q.values()) {
            if (hpVar != null) {
                long j2 = hpVar.jx;
                if (j2 > 0 && hpVar.f22143w == 0 && hpVar.f22139j < j2 && jCurrentTimeMillis - j2 < 86400000) {
                    i2++;
                }
            }
        }
        return i2 <= 2;
    }

    @MainThread
    public static void hp(Activity activity) {
        if (activity != null && vv(activity)) {
            String strEc = ec(activity);
            if (l(activity, strEc) || jx(activity, 1, true) || a(strEc)) {
                return;
            }
            hp hpVarJx = jx(activity, strEc);
            hpVarJx.f22140l = System.currentTimeMillis();
            hpVarJx.f22137a = activity.isTaskRoot();
            activity.hashCode();
        }
    }

    @MainThread
    private static boolean jx(Activity activity, int i2, boolean z2) {
        String strL = l();
        if (TextUtils.isEmpty(strL)) {
            return false;
        }
        if (!strL.equals(ec(activity))) {
            return true;
        }
        if (!jl(activity)) {
            if (z2) {
                activity.hashCode();
                l(activity, i2, false);
            } else {
                activity.hashCode();
            }
            return true;
        }
        if (!w.hp()) {
            activity.hashCode();
            j.hp();
            f22132w = false;
            f22126a = -1;
            eb = "";
            l(activity, i2, false);
            return true;
        }
        activity.hashCode();
        return true;
    }

    @MainThread
    public static void j(Activity activity) {
        if (activity == null) {
            return;
        }
        n(activity);
        if (vv(activity)) {
            if (jl(activity)) {
                ec(activity);
                activity.hashCode();
                w.l();
                j.eb();
                f22132w = false;
                f22126a = -1;
                eb = "";
                f22131s = null;
                return;
            }
            if (jx(activity, 7, false)) {
                return;
            }
            hp hpVar = f22130q.get(activity);
            if (hpVar == null) {
                ec(activity);
                activity.hashCode();
                xs(activity);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            hpVar.f22143w = jCurrentTimeMillis;
            long j2 = hpVar.f22140l;
            if (j2 > 0 && jCurrentTimeMillis - j2 < 1200) {
                activity.hashCode();
                xs(activity);
            } else {
                activity.hashCode();
                xs(activity);
            }
        }
    }

    @MainThread
    public static Activity hp() {
        WeakReference<Activity> weakReference = f22131s;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private static void hp(Activity activity, String str) {
        if (activity == null || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, Boolean> map = jl;
        Boolean bool = Boolean.TRUE;
        map.put(str, bool);
        if (f22127e.add(str)) {
            try {
                com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
                if (jxVarHp == null) {
                    return;
                }
                long jZy = zy(activity);
                long j2 = jxVarHp.get("no_tab_fail_version_".concat(String.valueOf(str)), -1L);
                int i2 = jxVarHp.get("no_tab_fail_count_".concat(String.valueOf(str)), 0);
                if (jZy > 0 && j2 > 0 && j2 != jZy) {
                    i2 = 0;
                }
                int i3 = i2 + 1;
                if (i3 >= 3) {
                    jxVarHp.put("no_tab_arch_".concat(String.valueOf(str)), true);
                    jxVarHp.put("no_tab_app_version_".concat(String.valueOf(str)), jZy);
                    map.put(str, bool);
                    int i4 = jxVarHp.get("no_tab_global_class_count", 0) + 1;
                    jxVarHp.put("no_tab_global_class_count", i4);
                    if (j(str) || i4 >= 4) {
                        jxVarHp.put("no_tab_global", true);
                        jxVarHp.put("no_tab_global_version", jZy);
                        gu = 0;
                        return;
                    }
                    return;
                }
                jxVarHp.put("no_tab_fail_count_".concat(String.valueOf(str)), i3);
                jxVarHp.put("no_tab_fail_version_".concat(String.valueOf(str)), jZy);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void l(Activity activity, final int i2, boolean z2) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        String strEc = ec(activity);
        if (!k(activity) && !v(activity)) {
            if (l(activity, strEc)) {
                activity.hashCode();
                return;
            }
            if (jl(activity)) {
                activity.hashCode();
                return;
            }
            final hp hpVarJx = jx(activity, strEc);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!z2) {
                long j2 = hpVarJx.f22141q;
                if (j2 > 0 && jCurrentTimeMillis - j2 < 2000) {
                    return;
                }
            }
            hpVarJx.f22141q = jCurrentTimeMillis;
            activity.hashCode();
            final WeakReference weakReference = new WeakReference(activity);
            final int iHashCode = activity.hashCode();
            Runnable runnable = new Runnable() { // from class: com.byazt.ktd.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    hpVarJx.f22138e = null;
                    Activity activity2 = (Activity) weakReference.get();
                    if (activity2 == null || activity2.isFinishing()) {
                        return;
                    }
                    eb.l(activity2, eb.ec(activity2), activity2.hashCode(), i2);
                }
            };
            hpVarJx.f22138e = runnable;
            View viewSz = sz(activity);
            if (viewSz != null) {
                viewSz.post(runnable);
                return;
            } else {
                hpVarJx.f22138e = null;
                return;
            }
        }
        activity.hashCode();
    }

    public static int jx() {
        if (gu != -1) {
            return gu == 0 ? 0 : -1;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        if (jxVarHp == null) {
            return -1;
        }
        return jxVarHp.get("no_tab_global", false) ? 0 : -1;
    }

    private static void jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
            if (jxVarHp == null) {
                return;
            }
            jxVarHp.put("no_tab_arch_".concat(String.valueOf(str)), false);
            jxVarHp.put("no_tab_fail_count_".concat(String.valueOf(str)), 0);
            jxVarHp.put("no_tab_fail_version_".concat(String.valueOf(str)), 0L);
            jxVarHp.put("no_tab_app_version_".concat(String.valueOf(str)), 0L);
            jl.put(str, Boolean.FALSE);
            if (gu == 0 || jxVarHp.get("no_tab_global", false)) {
                jxVarHp.put("no_tab_global", false);
                jxVarHp.put("no_tab_global_class_count", 0);
                gu = 1;
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean j(String str) {
        Set<String> setYu;
        String strEb = eb(str);
        boolean zW = false;
        if (TextUtils.isEmpty(strEb)) {
            return false;
        }
        Map<String, Boolean> map = f22129l;
        Boolean bool = map.get(strEb);
        if (bool != null) {
            return bool.booleanValue();
        }
        com.byazt.jkd.gu guVarL = sz.l();
        if (guVarL != null && (setYu = guVarL.yu()) != null && setYu.contains(strEb)) {
            zW = true;
        }
        if (!zW) {
            zW = w(strEb);
        }
        map.put(strEb, Boolean.valueOf(zW));
        return zW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void l(Activity activity, String str, int i2, int i3) {
        List<w.C0299w> list;
        if (activity == null || activity.isFinishing() || jl(activity)) {
            return;
        }
        w.l lVarHp = w.hp(activity);
        if (lVarHp != null && (list = lVarHp.f22185j) != null && !list.isEmpty()) {
            jx(str);
            if (TextUtils.isEmpty(l())) {
                l(str);
            }
            f22132w = true;
            f22126a = i2;
            eb = str;
            f22131s = new WeakReference<>(activity);
            f22130q.clear();
            lVarHp.f22185j.size();
            return;
        }
        gu(activity);
        j(str);
        if (i3 == 2 || i3 == 1 || i3 == 4 || i3 == 3 || i3 == 5) {
            q(activity);
        }
    }

    @MainThread
    private static hp jx(Activity activity, String str) {
        WeakHashMap<Activity, hp> weakHashMap = f22130q;
        hp hpVar = weakHashMap.get(activity);
        if (hpVar == null) {
            hp hpVar2 = new hp(str);
            weakHashMap.put(activity, hpVar2);
            return hpVar2;
        }
        if (!TextUtils.isEmpty(str)) {
            hpVar.hp = str;
        }
        return hpVar;
    }

    @MainThread
    public static String l() {
        if (!TextUtils.isEmpty(f22128j)) {
            return f22128j;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        if (jxVarHp == null) {
            return "";
        }
        String str = jxVarHp.get("mc_c_name", "");
        long j2 = jxVarHp.get("mc_c_name_cache_time", 0L);
        if (!TextUtils.isEmpty(str) && System.currentTimeMillis() - j2 > 604800000) {
            jxVarHp.put("mc_c_name", "");
            jxVarHp.put("mc_c_name_cache_time", 0L);
            return "";
        }
        f22128j = str;
        return str;
    }

    @MainThread
    private static void l(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        f22128j = str;
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        if (jxVarHp != null) {
            jxVarHp.put("mc_c_name", str);
            jxVarHp.put("mc_c_name_cache_time", System.currentTimeMillis());
        }
    }

    private static boolean l(Activity activity, String str) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            Map<String, Boolean> map = jl;
            Boolean bool = map.get(str);
            if (bool != null) {
                return bool.booleanValue();
            }
            com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
            if (jxVarHp == null) {
                return false;
            }
            try {
                if (!jxVarHp.get("no_tab_arch_".concat(String.valueOf(str)), false)) {
                    map.put(str, Boolean.FALSE);
                    return false;
                }
                long j2 = jxVarHp.get("no_tab_app_version_".concat(String.valueOf(str)), -1L);
                long jZy = zy(activity);
                if (jZy > 0 && j2 > 0 && j2 != jZy) {
                    jx(str);
                    return false;
                }
                map.put(str, Boolean.TRUE);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
