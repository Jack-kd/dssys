package com.byazt.owd;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.f.f;
import com.byazt.jt.l;
import com.byazt.jz.hq;
import com.byazt.ymw.u;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1061, 94})
/* loaded from: classes3.dex */
public class eb implements Function<SparseArray<Object>, Object> {
    public Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f24206l;

    public eb(Context context, Function<SparseArray<Object>, Object> function) {
        this.hp = function;
        this.f24206l = context;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        hp(sparseArray);
        return null;
    }

    private PluginValueSet hp(PluginValueSet pluginValueSet) {
        JSONArray jSONArray;
        if (pluginValueSet == null) {
            return null;
        }
        String strNs = new com.byazt.jt.l(pluginValueSet.sparseArray(), com.byazt.el.hp.l()).ns();
        try {
            if (TextUtils.isEmpty(strNs)) {
                jSONArray = new JSONArray();
            } else {
                jSONArray = new JSONArray(strNs);
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null && TextUtils.equals("personal_ads_type", jSONObjectOptJSONObject.optString("name"))) {
                    return pluginValueSet;
                }
            }
            JSONObject jSONObject = new JSONObject();
            com.byazt.fr.jx jxVarL = com.byazt.di.hp.jl().l();
            if (jxVarL == null) {
                return pluginValueSet;
            }
            String str = jxVarL.eb() ? "0" : "1";
            jSONObject.put("name", "personal_ads_type");
            jSONObject.put(f.a.f3244d, str);
            jSONArray.put(jSONObject);
            return com.byazt.aqw.hp.hp(pluginValueSet, jSONArray.toString());
        } catch (Throwable unused) {
            return pluginValueSet;
        }
    }

    private void hp(final SparseArray<Object> sparseArray) {
        final PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        final int iIntValue = pluginValueSetL.intValue(-99999982);
        final String strStringValue = pluginValueSetL.stringValue(260004);
        final Function<SparseArray<Object>, Object> function = (Function) pluginValueSetL.objectValue(1, Function.class);
        if (!com.byazt.ky.hp.hp().jx()) {
            if (this.hp instanceof hq) {
                com.byazt.aw.l.l("TMe", "load csj 代码位未开启聚合开关");
                ((hq) this.hp).loadAdByType(iIntValue, pluginValueSetL, function);
                return;
            }
            return;
        }
        hp.hp().hp(new com.byazt.voc.j() { // from class: com.byazt.owd.eb.1
            @Override // com.byazt.voc.j
            public void hp(boolean z2, Map<String, Object> map) throws JSONException {
                eb.this.hp(iIntValue, sparseArray, pluginValueSetL, function, map, z2);
            }

            @Override // com.byazt.voc.j
            public String l() {
                return strStringValue;
            }

            @Override // com.byazt.voc.j
            public int hp() {
                return iIntValue;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r18, android.util.SparseArray<java.lang.Object> r19, com.bykv.vk.openvk.api.proto.PluginValueSet r20, java.util.function.Function<android.util.SparseArray<java.lang.Object>, java.lang.Object> r21, java.util.Map<java.lang.String, java.lang.Object> r22, boolean r23) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.owd.eb.hp(int, android.util.SparseArray, com.bykv.vk.openvk.api.proto.PluginValueSet, java.util.function.Function, java.util.Map, boolean):void");
    }

    private void hp(int i2, PluginValueSet pluginValueSet) {
        if (this.hp instanceof hq) {
            Object objObjectValue = hp(pluginValueSet).objectValue(1, Object.class);
            if (objObjectValue == null) {
                u.hp("apply->load with null callback");
            } else {
                ((hq) this.hp).loadAdByType(i2, pluginValueSet, com.byazt.vd.jx.hp(objObjectValue));
            }
        }
    }

    private void hp(com.byazt.mx.hp hpVar, l.hp hpVar2) {
        hpVar2.j(hpVar.w());
        hpVar2.hp(hpVar.jx());
        hpVar2.l(hpVar.j());
        hpVar2.l(hpVar.l());
        hpVar2.hp(hpVar.hp());
    }

    private PluginValueSet hp(PluginValueSet pluginValueSet, com.byazt.jt.l lVar) {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp(pluginValueSet);
        hpVarHp.hp(260009, lVar.q());
        hpVarHp.hp(260008, lVar.s());
        hpVarHp.hp(260007, lVar.eb());
        hpVarHp.hp(260006, lVar.a());
        hpVarHp.hp(260004, lVar.j());
        return hpVarHp.l();
    }
}
