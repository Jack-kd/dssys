package com.byazt.rsz;

import android.text.TextUtils;
import com.byazt.ot.a;
import com.byazt.ot.j;
import com.byazt.ot.jx;
import com.byazt.ot.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 579, 34})
/* loaded from: classes3.dex */
public class l implements j {

    /* renamed from: a, reason: collision with root package name */
    public int f25324a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public jx f25325j;
    public Map<String, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f25326l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.rsz.hp f25327w;

    @com.byazt.kj.hp(hp = {0, 1, 579, 123})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public Map<String, Object> f25328a;
        public jx eb;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public String f25329j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f25330l;

        /* renamed from: s, reason: collision with root package name */
        public JSONObject f25331s;

        /* renamed from: w, reason: collision with root package name */
        public JSONObject f25332w;

        public hp(String str) {
            this.f25330l = str;
            this.hp = 1;
        }

        public hp hp(JSONObject jSONObject) {
            this.f25332w = jSONObject;
            return this;
        }

        public hp l(JSONObject jSONObject) {
            this.f25331s = jSONObject;
            return this;
        }

        public hp hp(Map<String, Object> map) {
            this.f25328a = map;
            return this;
        }

        public hp(String str, int i2) {
            this.hp = i2;
            if (i2 == 3) {
                this.f25329j = str;
            } else if (i2 == 2) {
                this.jx = str;
            }
        }

        public hp hp(jx jxVar) {
            this.eb = jxVar;
            return this;
        }

        public l hp() {
            return new l(this);
        }
    }

    @Override // com.byazt.ot.j
    public w jx() {
        return new w() { // from class: com.byazt.rsz.l.1
            @Override // com.byazt.ot.w
            public void hp(com.byazt.rsz.hp hpVar, Map<String, Object> map) {
                List<com.byazt.psp.hp> listHp = com.byazt.psp.l.INSTANCE.hp(l.this.hp).hp(hpVar.s(), hpVar.jx(), map);
                if (!hpVar.a()) {
                    listHp.isEmpty();
                }
                Iterator<com.byazt.psp.hp> it = listHp.iterator();
                while (it.hasNext()) {
                    l.this.hp(it.next(), map);
                }
            }

            @Override // com.byazt.ot.w
            public void hp(com.byazt.rsz.hp hpVar, Map<String, Object> map, com.byazt.ppg.hp hpVar2) {
                List<com.byazt.psp.hp> listL = com.byazt.psp.l.INSTANCE.hp(l.this.hp).l(hpVar.s(), hpVar.jx(), map);
                if (!hpVar.a()) {
                    listL.isEmpty();
                }
                Iterator<com.byazt.psp.hp> it = listL.iterator();
                while (it.hasNext()) {
                    l.this.hp(it.next(), map);
                }
            }
        };
    }

    @Override // com.byazt.ot.j
    public a l() {
        return null;
    }

    private l(hp hpVar) throws JSONException {
        this.f25324a = 1;
        this.f25324a = hpVar.hp;
        if (hpVar.hp == 2) {
            this.f25327w = new com.byazt.rsz.hp(hpVar.jx, 2, hpVar.f25332w, hpVar.f25328a);
        } else if (hpVar.hp == 3) {
            this.f25327w = new com.byazt.rsz.hp(hpVar.f25329j, 3, hpVar.f25332w, hpVar.f25328a);
        } else {
            this.hp = hpVar.f25330l;
            if (hpVar.f25331s != null) {
                com.byazt.psp.l.INSTANCE.hp(hpVar.f25331s);
            }
        }
        this.f25326l = hpVar.f25332w;
        this.jx = hpVar.f25328a;
        this.f25325j = hpVar.eb;
    }

    public void hp() {
        com.byazt.psp.jx jxVarHp;
        int i2 = this.f25324a;
        if (i2 != 2 && i2 != 3) {
            if (TextUtils.isEmpty(this.hp) || (jxVarHp = com.byazt.psp.l.INSTANCE.hp(this.hp)) == null) {
                return;
            }
            hp(jxVarHp.l(), this.jx);
            return;
        }
        jx jxVar = this.f25325j;
        if (jxVar != null) {
            jxVar.hp(this.f25327w);
        }
        this.f25327w.eb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.psp.hp hpVar, Map<String, Object> map) {
        if (hpVar == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        com.byazt.rsz.hp hpVar2 = new com.byazt.rsz.hp(hpVar, this.f25326l, map);
        hpVar2.hp(this.hp);
        hpVar2.hp(this);
        jx jxVar = this.f25325j;
        if (jxVar != null) {
            jxVar.hp(hpVar2);
        }
        List<com.byazt.psp.hp> listJx = com.byazt.psp.l.INSTANCE.hp(this.hp).jx(hpVar, hpVar2.jx(), map);
        if (!listJx.isEmpty()) {
            hpVar2.hp(true);
        }
        hpVar2.eb();
        for (com.byazt.psp.hp hpVar3 : listJx) {
            if (hpVar3 != null) {
                hp(hpVar3, map);
            }
        }
    }
}
