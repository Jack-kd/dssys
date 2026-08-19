package com.byazt.sf;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.internal.aw;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.ym.ATSKeep;
import com.byazt.ymw.u;
import com.byazt.zn.hp;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, 54})
@ATSKeep
/* loaded from: classes3.dex */
public class a implements jx, hp.l, Function {
    public static final int INIT_FAIL = -1;
    public static final int INIT_SUCCESS = 0;
    public Function<SparseArray<Object>, Object> jx;
    public AtomicBoolean hp = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public AtomicBoolean f25445l = new AtomicBoolean(false);

    private void jx() {
        if (this.jx == null) {
            this.jx = new s() { // from class: com.byazt.sf.a.3
                @Override // com.byazt.sf.s, com.byazt.hde.j
                public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) throws JSONException {
                    JSONObject jSONObject;
                    try {
                        JSONObject jSONObjectHp = e.hp(pluginValueSet, 10);
                        if (jSONObjectHp == null) {
                            com.byazt.wi.l lVar = new com.byazt.wi.l((SparseArray) pluginValueSet.objectValue(-99999979, SparseArray.class));
                            if (lVar.j() != null) {
                                jSONObjectHp = e.hp(lVar.j(), 10);
                            }
                        }
                        if (jSONObjectHp == null) {
                            return (T) com.byazt.wi.j.hp().hp(37, new JSONObject()).l();
                        }
                        switch (i2) {
                            case 1:
                                hp.hp().hp(jSONObjectHp.optString(bv.f48904e), jSONObjectHp.optString(f.a.f3242b), jSONObjectHp.optString(f.a.f3244d), com.byazt.el.hp.j());
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put(cb.f11292o, true);
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject2).l();
                            case 2:
                                String strOptString = jSONObjectHp.optString(bv.f48904e);
                                String strOptString2 = jSONObjectHp.optString(f.a.f3242b);
                                String strHp = hp.hp().hp(strOptString, strOptString2, com.byazt.el.hp.j());
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject3.put(strOptString2, strHp);
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject3).l();
                            case 3:
                                hp.hp().hp(jSONObjectHp.optString(bv.f48904e), jSONObjectHp.optString(f.a.f3242b), "-1", com.byazt.el.hp.j());
                                JSONObject jSONObject4 = new JSONObject();
                                jSONObject4.put(cb.f11292o, true);
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject4).l();
                            case 4:
                                String strOptString3 = jSONObjectHp.optString(bv.f48904e, jSONObjectHp.optString("table"));
                                String strOptString4 = jSONObjectHp.optString(f.a.f3242b);
                                String strHp2 = hp.hp().hp(strOptString3, strOptString4, com.byazt.el.hp.j());
                                JSONObject jSONObject5 = new JSONObject();
                                jSONObject5.put(strOptString4, strHp2);
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject5).l();
                            case 5:
                                String strOptString5 = jSONObjectHp.optString(bv.f48904e, jSONObjectHp.optString("table"));
                                String strOptString6 = jSONObjectHp.optString(f.a.f3242b);
                                String strOptString7 = jSONObjectHp.optString(f.a.f3244d);
                                if (TextUtils.isEmpty(strOptString5) || TextUtils.isEmpty(strOptString6)) {
                                    jSONObject = new JSONObject();
                                    jSONObject.put(cb.f11292o, false);
                                } else {
                                    hp.hp().hp(strOptString5, strOptString6, strOptString7, com.byazt.el.hp.j());
                                    jSONObject = new JSONObject();
                                    jSONObject.put(cb.f11292o, true);
                                }
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject).l();
                            case 6:
                                hp.hp().hp(jSONObjectHp.optString(bv.f48904e, jSONObjectHp.optString("table")), jSONObjectHp.optString(f.a.f3242b), "-1", com.byazt.el.hp.j());
                                JSONObject jSONObject6 = new JSONObject();
                                jSONObject6.put(cb.f11292o, true);
                                return (T) com.byazt.wi.j.hp().hp(37, jSONObject6).l();
                            default:
                                return (T) super.applyFunction(i2, pluginValueSet, cls);
                        }
                    } catch (JSONException unused) {
                        return (T) com.byazt.wi.j.hp().hp(37, new JSONObject()).l();
                    }
                }
            };
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) throws JSONException {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                init((Context) sparseArray.get(1), (Function) sparseArray.get(2));
                return null;
            case 2:
                return Boolean.valueOf(isPitayaEnvAvailable());
            case 3:
                return Boolean.valueOf(isPitayaInitSuccess());
            case 4:
                runTask((String) sparseArray.get(1), (JSONObject) sparseArray.get(2), (Function) sparseArray.get(3));
                return null;
            case 5:
                onAppLogEvent((String) sparseArray.get(1), (JSONObject) sparseArray.get(2));
                return null;
            case 6:
                queryPackage((String) sparseArray.get(1), (Function) sparseArray.get(2));
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.sf.jx
    public void init(Context context, final Function<SparseArray<Object>, Object> function) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Function<SparseArray<Object>, Object> functionHp = sz.hp(10003);
        if (functionHp == null) {
            if (function != null) {
                function.apply(com.byazt.wi.j.hp().hp(-1).hp(Void.class).l());
                return;
            }
            return;
        }
        if (isPitayaInitSuccess()) {
            if (function != null) {
                function.apply(com.byazt.wi.j.hp().hp(0).hp(Void.class).l());
                return;
            }
            return;
        }
        try {
            if (this.hp.compareAndSet(false, true)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("aid", "1371");
                jSONObject.put("channel", d.f21859s);
                jSONObject.put("core_api_version", d.f21860w);
                jSONObject.put("core_plugin_version", "7.6.4.3");
                jSONObject.put(aw.f11060a, false);
                jSONObject.put(n.f36454q, true);
                jSONObject.put("download_concurrency", 2);
                jSONObject.put("py_concurrency", 2);
                jSONObject.put("provide_applog", true);
                jSONObject.put("sdk_session_id", com.byazt.lf.l.hp);
                jx();
                functionHp.apply(com.byazt.wi.j.hp(com.byazt.xi.hp.hp().hp(21, jSONObject).hp(22, context).hp(38, this.jx).hp(1, new s() { // from class: com.byazt.sf.a.2
                    @Override // com.byazt.sf.s
                    public PluginValueSet hp(int i2, w wVar) {
                        a.this.f25445l.set(wVar.hp());
                        if (wVar.hp()) {
                            Function function2 = function;
                            if (function2 != null) {
                                function2.apply(com.byazt.wi.j.hp().hp(0).hp(Void.class).l());
                            }
                            a.this.hp();
                        } else {
                            if (wVar.l() != null) {
                                u.l("pitaya_ext_plugin", "pit error:" + wVar.l().toString());
                            }
                            Function function3 = function;
                            if (function3 != null) {
                                function3.apply(com.byazt.wi.j.hp().hp(-1).hp(Void.class).l());
                            }
                        }
                        a.this.hp(System.currentTimeMillis() - jCurrentTimeMillis, wVar);
                        return super.hp(i2, wVar);
                    }
                }).hp(13, com.byazt.uid.w.hp()).l().sparseArray()).hp(1001).hp(Void.class).l());
            }
        } catch (Throwable th) {
            u.l("pitaya_ext_plugin", "pit#initPit:" + th.getMessage());
            if (function != null) {
                function.apply(com.byazt.wi.j.hp().hp(-1).hp(Void.class).l());
            }
        }
    }

    public boolean isColorOS() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }

    @Override // com.byazt.sf.jx
    public boolean isPitayaEnvAvailable() {
        int i2;
        if (!d.hp() || (i2 = Build.VERSION.SDK_INT) < 28) {
            return false;
        }
        if (isColorOS() && i2 == 29) {
            return false;
        }
        return com.byazt.rl.l.l(sz.l().rz());
    }

    @Override // com.byazt.sf.jx
    public boolean isPitayaInitSuccess() {
        return this.f25445l.get();
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() {
        Function<SparseArray<Object>, Object> functionL;
        try {
            if (com.byazt.jz.s.u().nu() || (functionL = l()) == null) {
                return;
            }
            functionL.apply(com.byazt.wi.j.hp().hp(PointerIconCompat.TYPE_TEXT).hp(Void.class).hp(36, 1).l());
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
        Function<SparseArray<Object>, Object> functionL;
        try {
            if (com.byazt.jz.s.u().nu() || (functionL = l()) == null) {
                return;
            }
            functionL.apply(com.byazt.wi.j.hp().hp(PointerIconCompat.TYPE_TEXT).hp(Void.class).hp(36, 0).l());
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.sf.jx
    public void onAppLogEvent(final String str, final JSONObject jSONObject) {
        final Function<SparseArray<Object>, Object> functionL;
        if (jSONObject != null && hp(str) && (functionL = l()) != null && isPitayaInitSuccess()) {
            com.byazt.dnb.s.hp(new com.byazt.uid.eb("csj-pita-log") { // from class: com.byazt.sf.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        functionL.apply(com.byazt.wi.j.hp().hp(1002).hp(Void.class).hp(23, str).hp(24, jSONObject.toString()).l());
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    @Override // com.byazt.sf.jx
    public void queryPackage(String str, Function<SparseArray<Object>, Object> function) {
        Function<SparseArray<Object>, Object> functionHp = sz.hp(10003);
        if (functionHp != null) {
            com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
            hpVarHp.hp(1, function);
            hpVarHp.hp(25, str);
            functionHp.apply(com.byazt.wi.j.hp(hpVarHp.l().sparseArray()).hp(1004).hp(Void.class).l());
        }
    }

    @Override // com.byazt.sf.jx
    public void runTask(String str, JSONObject jSONObject, Function<SparseArray<Object>, Object> function) throws JSONException {
        Function<SparseArray<Object>, Object> functionHp = sz.hp(10003);
        if (functionHp != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("run_package_start", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            functionHp.apply(com.byazt.wi.j.hp().hp(1003).hp(Void.class).hp(25, str).hp(26, jSONObject).hp(1, function).hp(37, jSONObject2).l());
        } else if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8).hp(Void.class).hp(-99999979, com.byazt.wi.w.hp().hp(-6).hp(false).hp("predict bridge is null").hp(com.byazt.wi.j.hp().hp(5, str).l()).l()).l());
        }
    }

    private Function<SparseArray<Object>, Object> l() {
        Function<SparseArray<Object>, Object> functionHp = sz.hp(10003);
        if (functionHp != null && isPitayaInitSuccess()) {
            return functionHp;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, w wVar) {
        k.hp().hp(j2, wVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx != null) {
            hpVarJx.hp(this);
        }
    }

    private boolean hp(String str) {
        JSONArray jSONArrayZ;
        if (!TextUtils.isEmpty(str) && (jSONArrayZ = sz.l().z()) != null && jSONArrayZ.length() != 0) {
            for (int i2 = 0; i2 < jSONArrayZ.length(); i2++) {
                String strOptString = jSONArrayZ.optString(i2);
                if (!TextUtils.isEmpty(strOptString) && strOptString.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
