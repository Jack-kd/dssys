package com.byazt.jx;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.gt.zy;
import com.byazt.lw.l;
import com.byazt.ub.eb;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 30, 28})
/* loaded from: classes.dex */
public class hp extends com.byazt.xz.hp {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f21752a;

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, com.byazt.jj.hp> f21753w;

    public hp(Context context, l lVar, com.byazt.id.hp hpVar) {
        super(context, lVar, hpVar);
        this.f21753w = new HashMap();
        this.f21752a = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        for (Map.Entry<String, com.byazt.jj.hp> entry : this.f21753w.entrySet()) {
            if (TextUtils.equals(entry.getKey(), "d_i0")) {
                JSONObject jSONObjectL = entry.getValue().l();
                eb ebVarA = zy.a();
                if (ebVarA != null && jSONObjectL != null) {
                    JSONObject jSONObjectOptJSONObject = jSONObjectL.optJSONObject("data");
                    ArrayList arrayList = new ArrayList();
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        arrayList.add(itKeys.next());
                    }
                    String[] strArr = (String[]) arrayList.toArray(new String[0]);
                    int[] iArr = new int[strArr.length];
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        iArr[i2] = jSONObjectOptJSONObject.optInt(strArr[i2]);
                    }
                    ebVarA.hp(strArr, iArr, false);
                    return;
                }
            }
        }
    }

    public void l() throws ExecutionException, InterruptedException {
        if (this.hp.size() <= 0) {
            com.byazt.fg.hp.hp("__kite", QueryStateVariableAction.OUTPUT_ARG_RETURN);
            return;
        }
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            try {
                com.byazt.jj.hp hpVar = this.hp.get(i2).get();
                this.f21753w.put(hpVar.hp(), hpVar);
                if (com.byazt.fg.hp.l()) {
                    com.byazt.fg.hp.hp("__kite", "result: ".concat(String.valueOf(hpVar)));
                }
            } catch (Exception e2) {
                com.byazt.fg.hp.j("__kite", "error " + e2.getMessage());
            }
        }
    }

    @Override // com.byazt.xz.hp
    public List<String> hp() {
        this.f21752a.add("d_i0");
        this.f21752a.add("d_a0");
        return this.f21752a;
    }

    public void hp(final JSONObject jSONObject, final String str) {
        com.byazt.fg.hp.hp("__kite", "doReport");
        com.byazt.mp.hp.hp().postDelayed(new Runnable() { // from class: com.byazt.jx.hp.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                com.byazt.fg.hp.hp("__kite", "run()");
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObjectHp = zy.hp(jSONObject, str);
                    String strHp = hp.this.jx.hp("d_data");
                    if (TextUtils.isEmpty(strHp)) {
                        JSONObject jSONObject3 = new JSONObject();
                        String strL = zy.l(jSONObjectHp);
                        jSONObject3.putOpt("header", strL);
                        if (com.byazt.fg.hp.l()) {
                            com.byazt.fg.hp.hp("__kite", "config 请求header进行sword加密：加密内容：".concat(String.valueOf(jSONObjectHp)));
                            com.byazt.fg.hp.hp("__kite", "config 请求header进行sword加密：加密结果：".concat(String.valueOf(strL)));
                        }
                        jSONObject3.putOpt("fetch_config", Boolean.TRUE);
                        jSONObject3.putOpt("client_time", Long.valueOf(System.currentTimeMillis() / 1000));
                        jSONObject2 = com.byazt.lt.hp.hp(hp.this.f27852l, jSONObject3, hp.this.hp(jSONObjectHp));
                        com.byazt.fg.hp.hp("__kite", "config from server.");
                    } else {
                        jSONObject2.putOpt("message", "ok");
                        jSONObject2.putOpt("data", strHp);
                        com.byazt.fg.hp.hp("__kite", "config from cache");
                    }
                    if (com.byazt.fg.hp.l()) {
                        com.byazt.fg.hp.hp("__kite", "config: ".concat(String.valueOf(jSONObject2)));
                    }
                    hp.this.f27851j.hp(jSONObject2);
                    hp.this.hp(5L);
                    hp.this.l();
                    hp.this.jx();
                    hp.this.l(jSONObjectHp);
                } catch (Exception e2) {
                    com.byazt.fg.hp.j("__kite", "error " + e2.getMessage());
                }
            }
        }, this.f27851j.jx());
    }

    public void hp(long j2) {
        Map<String, JSONObject> mapHp = this.f27851j.hp();
        if (mapHp.isEmpty()) {
            com.byazt.fg.hp.hp("__kite", "map is empty");
        } else {
            hp(mapHp, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final JSONObject jSONObject) throws JSONException {
        if (this.f21753w.size() <= 0) {
            return;
        }
        final JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<String, com.byazt.jj.hp> entry : this.f21753w.entrySet()) {
            try {
                JSONObject jSONObjectL = entry.getValue().l();
                jSONObject2.putOpt(entry.getKey(), zy.l(jSONObjectL));
                if (com.byazt.fg.hp.l()) {
                    com.byazt.fg.hp.hp("__kite", "report 请求data中的字段进行sword加密：加密内容：".concat(String.valueOf(jSONObjectL)));
                }
            } catch (JSONException e2) {
                com.byazt.fg.hp.j("__kite", "error " + e2.getMessage());
            }
        }
        com.byazt.mp.hp.hp(new Runnable() { // from class: com.byazt.jx.hp.2
            @Override // java.lang.Runnable
            public void run() throws JSONException, UnsupportedEncodingException {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject.putOpt(bv.ac, Build.MODEL);
                    jSONObject.putOpt("device_platform", "android");
                    jSONObject3.putOpt("header", zy.l(jSONObject));
                    if (com.byazt.fg.hp.l()) {
                        com.byazt.fg.hp.hp("__kite", "report 请求header进行sword加密：加密内容：" + jSONObject);
                    }
                    jSONObject3.putOpt("client_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    jSONObject3.putOpt("data", jSONObject2);
                    jSONObject3.putOpt(cl.f49059n, Integer.valueOf(hp.this.f27851j.l()));
                } catch (Exception e3) {
                    com.byazt.fg.hp.hp("__kite", "error: " + e3.getMessage());
                }
                JSONObject jSONObjectHp = com.byazt.lt.hp.hp(hp.this.f27852l, jSONObject3, hp.this.hp(jSONObject));
                if (com.byazt.fg.hp.l()) {
                    com.byazt.fg.hp.jx("__kite", "response:".concat(String.valueOf(jSONObjectHp)));
                }
                hp.this.f27851j.l(jSONObjectHp);
            }
        });
    }
}
