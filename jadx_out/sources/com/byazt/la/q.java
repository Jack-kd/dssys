package com.byazt.la;

import com.byazt.ql.u;
import com.byazt.ql.vv;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, 150})
/* loaded from: classes3.dex */
public class q extends com.byazt.ks.l {

    /* renamed from: a, reason: collision with root package name */
    public volatile hp f22404a;

    @com.byazt.kj.hp(hp = {0, 1, 31, 3})
    public class hp implements com.byazt.ot.l {
        public vv.hp hp;

        /* renamed from: j, reason: collision with root package name */
        public vv.l f22405j;
        public u jx;

        public hp() {
        }

        public void hp(u uVar) {
            this.jx = uVar;
        }

        public void hp(vv.l lVar) {
            this.f22405j = lVar;
        }

        public void hp(vv.hp hpVar) {
            this.hp = hpVar;
        }

        @Override // com.byazt.ot.l
        public void hp() {
            q.this.l(this.jx, this.f22405j, this.hp);
        }
    }

    public q(vv vvVar) {
        super(vvVar);
    }

    private hp l() {
        if (this.f22404a != null) {
            return this.f22404a;
        }
        synchronized (hp.class) {
            try {
                if (this.f22404a != null) {
                    return this.f22404a;
                }
                this.f22404a = new hp();
                return this.f22404a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.ks.l
    public void jx(u uVar, vv.l lVar, vv.hp hpVar) throws JSONException {
        if (this.f22404a == null) {
            this.f22404a = l();
        }
        this.f22404a.hp(uVar);
        this.f22404a.hp(lVar);
        this.f22404a.hp(hpVar);
        JSONObject jSONObjectJx = uVar.jx();
        if (jSONObjectJx == null) {
            return;
        }
        com.byazt.rj.jx.hp(jSONObjectJx.optString("type"), (JSONObject) null, (Map<String, Object>) null, new com.byazt.ot.jx() { // from class: com.byazt.la.q.1
            @Override // com.byazt.ot.jx
            public void hp(com.byazt.rsz.hp hpVar2) {
                q.this.hp(hpVar2);
            }
        }, this.f22102j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.rsz.hp hpVar) {
        if (this.f22104w) {
            return;
        }
        hp hpVarL = l();
        hpVarL.hp(hp(hpVarL.jx, hpVar));
        hpVar.hp(hpVarL);
    }

    public u hp(u uVar, com.byazt.rsz.hp hpVar) throws JSONException {
        List<com.byazt.psp.hp> listL;
        com.byazt.psp.hp hpVar2;
        if (uVar == null || hpVar == null) {
            return uVar;
        }
        u uVar2 = new u();
        com.byazt.xs.jx jxVarHp = uVar.hp();
        if (jxVarHp == null) {
            return uVar;
        }
        uVar2.hp(uVar.l());
        com.byazt.psp.hp hpVarS = hpVar.s();
        JSONObject jSONObjectHp = hp(jxVarHp, uVar2, hpVarS);
        com.byazt.psp.jx jxVarHp2 = com.byazt.psp.l.INSTANCE.hp(hpVar.j());
        List<com.byazt.psp.hp> listHp = jxVarHp2.hp(hpVarS, jxVarHp.e(), new HashMap());
        uVar2.hp(jSONObjectHp);
        if (!listHp.isEmpty()) {
            com.byazt.psp.hp hpVar3 = listHp.get(0);
            if (hpVar3 != null) {
                u uVar3 = new u();
                uVar3.hp(hp(jxVarHp, uVar3, hpVar3));
                uVar3.hp(jxVarHp);
                uVar2.hp(uVar3);
                listL = jxVarHp2.l(hpVarS, jxVarHp.e(), new HashMap());
                if (!listL.isEmpty()) {
                    u uVar4 = new u();
                    uVar4.hp(hp(jxVarHp, uVar4, hpVar2));
                    uVar4.hp(jxVarHp);
                    uVar2.l(uVar4);
                }
            }
        } else {
            listL = jxVarHp2.l(hpVarS, jxVarHp.e(), new HashMap());
            if (!listL.isEmpty() && (hpVar2 = listL.get(0)) != null) {
                u uVar42 = new u();
                uVar42.hp(hp(jxVarHp, uVar42, hpVar2));
                uVar42.hp(jxVarHp);
                uVar2.l(uVar42);
            }
        }
        return uVar2;
    }

    private JSONObject hp(com.byazt.xs.jx jxVar, u uVar, com.byazt.psp.hp hpVar) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (hpVar != null) {
                Map<String, String> mapA = hpVar.a();
                String strHp = hpVar.hp();
                uVar.hp(jxVar);
                jSONObject.put("type", strHp);
                if (mapA != null && !mapA.isEmpty()) {
                    for (Map.Entry<String, String> entry : mapA.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }
}
