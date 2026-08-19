package com.byazt.ov;

import android.text.TextUtils;
import com.byazt.gg.a;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 707, 54})
/* loaded from: classes3.dex */
public class a extends hp {
    public a(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() throws JSONException {
        Map<String, Object> map = this.f24188a;
        if (map == null || map.size() <= 0) {
            return;
        }
        Object obj = this.f24188a.get("id");
        if (obj == null) {
            hp(this.jx);
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf)) {
            hp(this.jx);
            return;
        }
        com.byazt.xs.jx jxVar = this.jx;
        com.byazt.xs.jx jxVarL = jxVar.l(jxVar);
        if (jxVarL == null) {
            return;
        }
        hp(jxVarL.j(strValueOf));
    }

    private void hp(com.byazt.xs.jx jxVar) throws JSONException {
        Object obj;
        if (jxVar == null) {
            return;
        }
        for (String str : this.f24188a.keySet()) {
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "id") && (obj = this.f24188a.get(str)) != null) {
                jxVar.hp(str, String.valueOf(obj));
            }
        }
        jxVar.hp(this.f24188a.containsKey("width"), this.f24188a.containsKey("height"));
        jxVar.l();
    }
}
