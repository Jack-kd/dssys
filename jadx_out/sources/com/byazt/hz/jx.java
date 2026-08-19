package com.byazt.hz;

import com.byazt.ss.hp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 30})
/* loaded from: classes2.dex */
public class jx implements com.byazt.ss.hp {

    @com.byazt.kj.hp(hp = {0, 1, 562, 219})
    public static class hp implements hp.InterfaceC0366hp {
        public com.byazt.nh.hp hp;

        /* renamed from: l, reason: collision with root package name */
        public String f20987l;

        private hp(String str) {
            this.f20987l = str;
            this.hp = com.byazt.nh.hp.hp(str);
        }

        public static hp hp(String str) {
            return new hp(str);
        }

        @Override // com.byazt.ss.hp.InterfaceC0366hp
        public Object hp(JSONObject jSONObject) {
            com.byazt.nh.hp hpVar = this.hp;
            if (hpVar == null) {
                return this.f20987l;
            }
            Object objHp = hpVar.hp(jSONObject);
            if (objHp instanceof String) {
                return objHp;
            }
            if (objHp instanceof com.byazt.xj.hp) {
                return String.valueOf(vv.hp((com.byazt.xj.hp) objHp));
            }
            if (objHp == null || !objHp.getClass().isArray()) {
                return String.valueOf(objHp);
            }
            try {
                return new JSONArray(objHp).toString();
            } catch (JSONException unused) {
                return String.valueOf(objHp);
            }
        }
    }

    @Override // com.byazt.ss.hp
    public hp.InterfaceC0366hp hp(String str) {
        return hp.hp(str);
    }
}
