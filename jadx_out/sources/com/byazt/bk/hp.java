package com.byazt.bk;

import android.text.TextUtils;
import com.byazt.ym.gu;
import com.byazt.ym.j;
import com.byazt.ym.q;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2415, 28})
/* loaded from: classes2.dex */
public class hp {
    public final com.byazt.ym.hp hp;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f18556l;

    public hp(com.byazt.ym.hp hpVar) {
        this.hp = hpVar;
    }

    public void hp(q qVar) {
        this.jx = qVar;
    }

    public void hp(List<String> list) {
        this.f18556l = list;
    }

    public void hp(Function function, boolean z2) throws JSONException {
        String name;
        hp hpVar = this;
        Function function2 = function;
        Object objApply = function2.apply(null);
        if (objApply instanceof Map) {
            int iHp = com.byazt.ym.hp.hp(function2);
            ArrayList arrayList = new ArrayList(((Map) objApply).entrySet());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                int i3 = i2 + 1;
                Map.Entry entry = (Map.Entry) arrayList.get(i2);
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                gu guVarHp = hpVar.hp.eb().hp(str);
                if (guVarHp == null) {
                    hpVar = this;
                    function2 = function;
                } else if (!TextUtils.equals(str, guVarHp.f28046a)) {
                    if (hpVar.jx != null) {
                        JSONObject jSONObject = new JSONObject();
                        if (value != null) {
                            try {
                                name = value.getClass().getName();
                            } catch (JSONException unused) {
                            }
                        } else {
                            name = "null";
                        }
                        j jVar = j.getInstance();
                        jSONObject.put("model_key", guVarHp.f28046a);
                        jSONObject.put("origin_key", str);
                        jSONObject.put(LiveConfigKey.ORIGIN, name);
                        jSONObject.put("newRegAts", function2);
                        jSONObject.put("old_sdk_version", iHp);
                        jSONObject.put("current_sdk_version", jVar.getVersion());
                        jSONObject.put("currentAts", jVar);
                        jSONObject.put("msg", "key not equals model_key");
                        hpVar.jx.hp(guVarHp, value, null, true, jSONObject, null);
                    }
                } else {
                    if (value != null && guVarHp.hp((com.byazt.pg.hp) null) == null) {
                        if (iHp < 7500) {
                            hpVar.hp(str, guVarHp, value, function2, iHp);
                        } else if (z2) {
                            hp(str, guVarHp, value, function, iHp, false);
                        }
                    }
                    hpVar = this;
                    function2 = function;
                }
                i2 = i3;
            }
        }
    }

    private boolean hp() {
        return getClass().getName().contains("byaztp");
    }

    @Deprecated
    private void hp(String str, gu guVar, Object obj, Function function, int i2) {
        if (guVar.f28053w) {
            List<String> list = this.f18556l;
            if ((list == null || !list.contains(guVar.f28046a)) && guVar.f28048j <= 0) {
                hp(str, guVar, obj, function, i2, true);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|58|3|(1:5)(1:6)|7|(4:(3:10|(1:17)(1:13)|18)(0)|32|53|(2:55|56)(1:72))(1:19)|70|(9:21|68|22|(4:24|25|60|26)|71|28|62|29|30)(7:38|64|(1:40)(3:44|45|46)|41|66|48|49)|31|32|53|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ef, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.lang.String r18, com.byazt.ym.gu r19, java.lang.Object r20, java.util.function.Function r21, int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.bk.hp.hp(java.lang.String, com.byazt.ym.gu, java.lang.Object, java.util.function.Function, int, boolean):void");
    }
}
