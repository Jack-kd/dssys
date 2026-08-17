package com.byazt.kfd;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ex.a;
import com.byazt.jdb.q;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.kfd.w;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.xci.ux;
import com.byazt.ymw.hq;
import com.byazt.ymw.wv;
import com.byazt.yrp.e;
import com.byazt.zn.ky;
import com.byazt.zn.s;
import com.sigmob.sdk.base.n;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 686, 38})
/* loaded from: classes.dex */
public final class j {
    public static volatile j hp;
    public Object jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f22036l;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f22035j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public AtomicInteger f22037w = new AtomicInteger(3);

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f22034a = new AtomicBoolean(false);

    private j() {
        this.f22036l = false;
        try {
            Object obj = Class.forName("com.tencent.mm.opensdk.constants.Build").getDeclaredField("SDK_VERSION_NAME").get(null);
            if (obj instanceof String) {
                Locale locale = Locale.ROOT;
                this.f22036l = "android 5.3.1".toLowerCase(locale).compareTo(((String) obj).toLowerCase(locale)) <= 0;
            }
        } catch (Throwable unused) {
            this.f22036l = false;
        }
    }

    private boolean j() {
        if (sz.getContext() == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage("com.tencent.mm");
        if (s.hp(intent, 0).size() > 0) {
            return true;
        }
        if (ky.o()) {
            return false;
        }
        return ky.jx("com.tencent.mm");
    }

    public static j jx() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void w() {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.kfd.j.2
            @Override // java.lang.Runnable
            public void run() {
                hq.l(sz.getContext(), "跳转微信失败。", 1, 17, 0, 0);
            }
        });
    }

    public int l() {
        return this.f22036l ? 1 : 0;
    }

    public boolean hp() {
        return this.f22036l;
    }

    private void hp(String str) {
        Method methodHp;
        Method methodHp2;
        if (!this.f22035j.get() && this.f22037w.getAndDecrement() > 0) {
            if (TextUtils.isEmpty(str)) {
                hp("wc_init_fail", "error_appid");
                return;
            }
            if (!j()) {
                hp("wc_init_fail", "error_no_wechat");
                return;
            }
            if (!this.f22036l) {
                hp("wc_init_fail", "error_no_sdk");
                return;
            }
            try {
                Method methodHp3 = wv.hp("com.tencent.mm.opensdk.openapi.WXAPIFactory", "createWXAPI", Context.class, String.class);
                if (methodHp3 != null) {
                    Function<SparseArray<Object>, Object> functionY = com.byazt.jz.s.u().y();
                    Object objApply = functionY != null ? functionY.apply(com.byazt.wi.j.hp().hp(3).hp(Context.class).l()) : null;
                    if (objApply == null) {
                        objApply = sz.getContext();
                    }
                    boolean zEquals = "oppo".equals(d.f21859s);
                    if (!zEquals && objApply == null && (methodHp2 = wv.hp("com.bytedance.sdk.openadsdk.TTAppContextHolder", "getContext", new Class[0])) != null) {
                        objApply = methodHp2.invoke(null, null);
                    }
                    if (zEquals && objApply == null && (methodHp = wv.hp("com.bykv.vk.openvk.TTAppContextHolder", "getContext", new Class[0])) != null) {
                        objApply = methodHp.invoke(null, null);
                    }
                    if (objApply == null) {
                        hp("wc_init_fail", "error_sdk");
                        return;
                    }
                    this.jx = methodHp3.invoke(null, objApply, str);
                    hp("wc_init_suc", "");
                    this.f22035j.set(true);
                }
            } catch (Throwable th) {
                hp("wc_init_fail", "error_sdk_" + th.getMessage());
            }
        }
    }

    private void hp(String str, String str2) {
        try {
            final com.byazt.jlb.l<com.byazt.jlb.l> lVarL = com.byazt.jlb.l.l();
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("error_message", str2);
                lVarL.l(jSONObject.toString());
            }
            lVarL.hp(str);
            k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.kfd.j.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() {
                    return lVarL;
                }
            }, str);
        } catch (Throwable unused) {
        }
    }

    public void hp(e eVar, String str, String str2, final w.hp hpVar, String str3, boolean z2, Map<String, Object> map) {
        try {
            if (eVar == null) {
                hpVar.hp(a.f19537j);
                w();
                return;
            }
            ux uxVarA_ = eVar.A_();
            if (uxVarA_ == null) {
                hp("wc_init_fail", "wechat data is null");
                hpVar.hp(a.f19537j);
                w();
                return;
            }
            hp(uxVarA_.s());
            if (this.jx == null) {
                hpVar.hp(a.gu);
                w();
                return;
            }
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance = cls.newInstance();
            Field declaredField = cls.getDeclaredField("userName");
            declaredField.setAccessible(true);
            declaredField.set(objNewInstance, str);
            Field declaredField2 = cls.getDeclaredField("path");
            declaredField2.setAccessible(true);
            declaredField2.set(objNewInstance, str2);
            Field declaredField3 = cls.getDeclaredField("miniprogramType");
            declaredField3.setAccessible(true);
            try {
                declaredField3.set(objNewInstance, cls.getDeclaredField("MINIPTOGRAM_TYPE_RELEASE").get(null));
            } catch (Throwable unused) {
                declaredField3.set(objNewInstance, 0);
            }
            Method method = this.jx.getClass().getMethod("sendReq", cls.getSuperclass());
            uxVarA_.l(2);
            mp mpVarHp = com.byazt.rj.jx.hp(eVar, map);
            HashMap map2 = new HashMap();
            map2.put(n.f36449l, "WeChatOpenSdkProcessor");
            com.byazt.jdb.j.hp(mpVarHp, str3, (Map<String, Object>) map2, false);
            com.byazt.jdb.j.hp(mpVarHp, str3, (Throwable) null, false, true);
            com.byazt.jdb.s.hp().hp(mpVarHp, str3, z2, false, new q.hp() { // from class: com.byazt.kfd.j.3
                @Override // com.byazt.jdb.q.hp
                public void hp(String str4) {
                }

                @Override // com.byazt.jdb.q.hp
                public void hp(long j2) {
                    j.this.hp(false, hpVar);
                }

                @Override // com.byazt.jdb.q.hp
                public void hp(boolean z3) {
                    j.this.hp(true, hpVar);
                }
            });
            method.invoke(this.jx, objNewInstance);
        } catch (Throwable th) {
            hp("wc_init_fail", "invoke:" + th.getMessage());
            hpVar.hp(a.jl);
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final boolean z2, final w.hp hpVar) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.kfd.j.4
            @Override // java.lang.Runnable
            public void run() {
                if (z2) {
                    hpVar.hp();
                } else {
                    hpVar.hp(a.f19539s);
                }
            }
        });
    }
}
