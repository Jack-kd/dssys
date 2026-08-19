package com.byazt.jz;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.byazt.rz.PluginConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 546})
/* loaded from: classes.dex */
public class nu {

    /* renamed from: s, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f21931s;

    /* renamed from: j, reason: collision with root package name */
    public static final nu f21927j = new nu();
    public static int eb = -1;

    /* renamed from: q, reason: collision with root package name */
    public static String f21928q = "ext_plugin";
    public volatile Function<SparseArray<Object>, Object> hp = null;

    /* renamed from: l, reason: collision with root package name */
    public volatile Function<SparseArray<Object>, Object> f21930l = null;
    public volatile Function<SparseArray<Object>, Object> jx = null;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f21932w = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21929a = new AtomicBoolean(false);

    private nu() {
    }

    private Integer a() {
        Function<SparseArray<Object>, Object> functionQ = q();
        if (functionQ != null) {
            Object objApply = functionQ.apply(com.byazt.wi.j.hp().hp(1004).hp(Integer.class).l());
            if (objApply instanceof Integer) {
                return (Integer) objApply;
            }
        }
        return -1;
    }

    private Function<SparseArray<Object>, Object> eb() {
        com.byazt.sf.jx jxVar = (com.byazt.sf.jx) com.byazt.ym.j.getService("pitaya");
        if (jxVar == null || !jxVar.isPitayaEnvAvailable()) {
            com.byazt.ymw.u.l(f21928q, "can use pitaya false");
            return null;
        }
        if (!j() || a().intValue() < 1100) {
            return null;
        }
        if (this.jx == null) {
            synchronized (nu.class) {
                try {
                    if (this.jx == null) {
                        Function<SparseArray<Object>, Object> functionQ = q();
                        if (functionQ != null) {
                            Object objApply = functionQ.apply(com.byazt.wi.j.hp().hp(10003).hp(Function.class).l());
                            if (objApply instanceof Function) {
                                this.jx = (Function) objApply;
                            }
                        }
                    }
                } catch (Throwable th) {
                    com.byazt.ymw.u.l(f21928q, "getBridge:" + th.getMessage());
                } finally {
                }
            }
        }
        return this.jx;
    }

    public static nu hp() {
        return f21927j;
    }

    public static void jx() {
        if (!sz.l().xh()) {
            JSONObject jSONObjectPu = s.u().pu();
            if (jSONObjectPu != null) {
                jSONObjectPu.remove("com.byted.csj.ext");
                return;
            }
            return;
        }
        Bundle bundle = new Bundle();
        Bundle bundleHp = hp(s.u().ns());
        if (bundleHp != null) {
            bundle.putBundle("com.byted.csj.ext", bundleHp);
        }
        s.u().hp(bundle);
    }

    public static int l() {
        if (eb == -1) {
            eb = hp().a().intValue();
        }
        return eb;
    }

    private Function<SparseArray<Object>, Object> q() {
        ClassLoader classLoader;
        try {
            if (this.f21931s == null && (classLoader = (ClassLoader) s.u().y().apply(com.byazt.wi.j.hp().hp(4).hp(ClassLoader.class).hp(0, "com.byted.csj.ext").l())) != null) {
                this.f21931s = (Function) classLoader.loadClass("com.byted.csj.ext_impl.ServiceManager").getConstructor(null).newInstance(null);
            }
            return this.f21931s;
        } catch (Throwable th) {
            com.byazt.ymw.u.l(f21928q, "getServiceManager:" + th.getMessage());
            return null;
        }
    }

    private static String s() {
        return (String) s.u().y().apply(com.byazt.wi.j.hp().hp(8).hp(String.class).hp(0, "com.byted.csj.ext").l());
    }

    public boolean j() {
        try {
        } catch (Throwable th) {
            com.byazt.ymw.u.l(f21928q, "pit_ext_error:" + th.getMessage());
        }
        if (!sz.l().xh()) {
            return false;
        }
        if (this.f21932w.get()) {
            return true;
        }
        if (this.f21929a.compareAndSet(false, true)) {
            final Function<SparseArray<Object>, Object> functionY = s.u().y();
            Object objApply = functionY.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, "com.byted.csj.ext").l());
            if (objApply != null ? ((Boolean) objApply).booleanValue() : false) {
                Object objApply2 = functionY.apply(com.byazt.wi.j.hp().hp(7).hp(Boolean.class).hp(0, "com.byted.csj.ext").l());
                if (objApply2 != null ? ((Boolean) objApply2).booleanValue() : false) {
                    this.f21932w.set(true);
                    this.f21929a.set(false);
                    return true;
                }
                com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.jz.nu.1
                    @Override // java.lang.Runnable
                    public void run() {
                        nu.this.hp(functionY, true);
                    }
                });
            } else {
                this.f21929a.set(false);
            }
        }
        return false;
    }

    public com.byazt.c.hp w() {
        if (com.byazt.rl.l.hp(sz.l().rz()) && j()) {
            return (com.byazt.c.hp) com.byazt.ym.j.getService("alog");
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> hp(int i2) {
        try {
            if (d.hp() && i2 == 10003) {
                return eb();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static Bundle hp(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", str);
            String strS = s();
            if (TextUtils.isEmpty(strS)) {
                return null;
            }
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, strS);
            bundle.putString("sdk_version", l(d.f21854a));
            return bundle;
        } catch (Throwable th) {
            com.byazt.ymw.u.l(f21928q, "error:" + th.getMessage());
            return null;
        }
    }

    public static String l(int i2) {
        char[] charArray = String.valueOf(i2).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < charArray.length; i3++) {
            sb.append(charArray[i3]);
            if (i3 < charArray.length - 1) {
                sb.append(i.f2495E);
            }
        }
        String string = sb.toString();
        if (i2 < 100 || i2 >= 1000) {
            return string;
        }
        return "0." + string;
    }

    public boolean hp(Function<SparseArray<Object>, Object> function, boolean z2) {
        try {
            if (this.f21932w.get()) {
                return true;
            }
            if (!z2) {
                this.f21929a.set(true);
            }
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(5).hp(Boolean.class).hp(0, "com.byted.csj.ext").l());
            boolean zBooleanValue = objApply != null ? ((Boolean) objApply).booleanValue() : false;
            this.f21932w.set(zBooleanValue);
            this.f21929a.set(false);
            return zBooleanValue;
        } catch (Throwable th) {
            com.byazt.ymw.u.l(f21928q, ":" + th.getMessage());
            return false;
        }
    }
}
