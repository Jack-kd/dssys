package com.byazt.uhd;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 935, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26165a;
    public boolean eb;
    public com.byazt.xzd.l jx;

    /* renamed from: j, reason: collision with root package name */
    public static final com.byazt.xzd.hp f26162j = new com.byazt.xzd.hp();

    /* renamed from: w, reason: collision with root package name */
    public static Map<String, Pair<Boolean, String>> f26164w = new ConcurrentHashMap();

    /* renamed from: s, reason: collision with root package name */
    public static final Map<String, Boolean> f26163s = new ConcurrentHashMap();
    public final AtomicBoolean hp = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f26166l = new AtomicBoolean(false);

    public static void hp(String str, Pair<Boolean, String> pair) {
        f26164w.put(str, pair);
    }

    public static com.byazt.xzd.hp j() {
        return f26162j;
    }

    public static synchronized void jx() {
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.uhd.hp.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 start ---------------------");
                for (Map.Entry entry : hp.f26164w.entrySet()) {
                    if (entry.getValue() != null) {
                        if (!((Boolean) ((Pair) entry.getValue()).first).booleanValue()) {
                            com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 初始化失败 " + ((String) ((Pair) entry.getValue()).second));
                        } else if (com.byazt.di.l.l().jx((String) entry.getKey())) {
                            com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 自定义ADN调用初始化方法成功，请开发者确保接入的自定义ADN初始化结果");
                        } else {
                            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 初始化成功");
                        }
                    }
                }
                com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 end ---------------------");
            }
        });
    }

    public static hp l() {
        return new hp();
    }

    public void a() {
        if (!this.f26165a && this.eb && this.hp.get() && this.f26166l.get()) {
            com.byazt.fct.hp.hp();
            jx();
        }
    }

    public void w() {
        if (!com.byazt.di.l.l().jx()) {
            com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.uhd.hp.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.xzd.l lVar = hp.this.jx;
                    if (lVar != null) {
                        lVar.hp();
                    }
                }
            });
            return;
        }
        com.byazt.xzd.l lVar = this.jx;
        if (lVar != null) {
            lVar.hp();
        }
    }

    public static int hp() {
        return f26164w.size();
    }

    public static Map<String, Object> l(Map<String, Object> map, String str) {
        return f26162j.l(com.byazt.di.l.getContext(), map, str);
    }

    public static String hp(Map<String, Object> map, String str) {
        return f26162j.hp(com.byazt.di.l.getContext(), map, str);
    }

    public static final synchronized boolean jx(String str, boolean z2) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (z2) {
                    str = str + "_pl";
                }
                Boolean bool = f26163s.get(str);
                if (bool != null) {
                    return bool.booleanValue();
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void l(Map<String, com.byazt.tgw.hp> map) {
        if (map == null) {
            return;
        }
        com.byazt.tgw.hp hpVarRemove = map.remove(MediationConstant.ADN_MINTEGRAL);
        final ArrayList arrayList = new ArrayList();
        if (hpVarRemove != null) {
            arrayList.add(hpVarRemove);
        }
        Runnable runnable = new Runnable() { // from class: com.byazt.uhd.hp.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    new com.byazt.vop.hp((com.byazt.tgw.hp) it.next()).j();
                }
                hp.this.hp.set(true);
                hp.this.a();
            }
        };
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            com.byazt.aw.w.jx(runnable);
        }
    }

    public static com.byazt.qyg.hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f26162j.hp(str);
    }

    public void hp(Map<String, com.byazt.tgw.hp> map) {
        com.byazt.tgw.hp hpVarRemove;
        if (map == null || (hpVarRemove = map.remove(MediationConstant.ADN_GDT)) == null) {
            return;
        }
        new com.byazt.vop.hp(hpVarRemove).j();
    }

    public void hp(final Context context, Map<String, com.byazt.tgw.hp> map) {
        if (map == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        Iterator<Map.Entry<String, com.byazt.tgw.hp>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            com.byazt.tgw.hp value = it.next().getValue();
            if (value != null) {
                if (value.w()) {
                    arrayList.add(value);
                } else {
                    arrayList2.add(value);
                }
            }
        }
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.uhd.hp.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    new com.byazt.vop.hp((com.byazt.tgw.hp) it2.next()).j();
                }
                com.byazt.fct.l.hp(context, (List<com.byazt.tgw.hp>) arrayList);
                hp.this.f26166l.set(true);
                hp.this.a();
            }
        });
    }

    public static final synchronized void l(String str, boolean z2) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (z2) {
                    str = str + "_pl";
                }
                f26163s.put(str, Boolean.TRUE);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void hp(Context context, boolean z2, boolean z3, JSONObject jSONObject, com.byazt.xzd.l lVar) {
        this.jx = lVar;
        this.hp.set(false);
        this.f26166l.set(false);
        this.f26165a = z2;
        this.eb = z3;
        hp(context, jSONObject);
    }

    public void hp(Context context, JSONObject jSONObject) throws JSONException {
        Map<String, com.byazt.tgw.hp> mapJx = com.byazt.dl.jx.hp().jx();
        if (com.byazt.di.l.l().jx()) {
            w();
            hp(mapJx);
            com.byazt.owd.a.hp(jSONObject, "s-gdt");
        } else {
            hp(mapJx);
            com.byazt.owd.a.hp(jSONObject, "s-gdt");
            w();
        }
        l(mapJx);
        hp(context, mapJx);
    }

    public static void hp(String str, boolean z2) throws ExecutionException, InterruptedException {
        com.byazt.tgw.hp hpVarHp;
        if (TextUtils.isEmpty(str) || TextUtils.equals(MediationConstant.ADN_PANGLE, str) || jx(str, z2) || (hpVarHp = com.byazt.di.l.l().hp(str)) == null) {
            return;
        }
        final com.byazt.vop.hp hpVar = new com.byazt.vop.hp(hpVarHp);
        if ((TextUtils.equals(MediationConstant.ADN_MINTEGRAL, str) || TextUtils.equals(MediationConstant.ADN_KLEVIN, str)) && !com.byazt.aw.w.w()) {
            com.byazt.aw.w.l(new Runnable() { // from class: com.byazt.uhd.hp.5
                @Override // java.lang.Runnable
                public void run() {
                    hpVar.j();
                }
            });
        } else {
            hpVar.j();
        }
    }
}
