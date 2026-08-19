package com.byazt.ql;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.ql.q;
import com.byazt.xs.hp;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1306, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public ns f24949a;

    /* renamed from: b, reason: collision with root package name */
    public float f24950b;
    public float cx;
    public gu di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.gg.zy f24951e;
    public sz eb;
    public boolean ec;
    public q gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public e f24952j;
    public String jl;
    public com.byazt.xs.jx<View> jx;

    /* renamed from: k, reason: collision with root package name */
    public JSONObject f24953k;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f24954l;

    /* renamed from: n, reason: collision with root package name */
    public s f24955n;
    public a ns;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.gg.k f24956q;

    /* renamed from: s, reason: collision with root package name */
    public ec f24957s;
    public List<String> sz;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public vv f24960w;
    public com.byazt.ba.hp xs;
    public k zy;

    /* renamed from: v, reason: collision with root package name */
    public boolean f24959v = true;

    /* renamed from: u, reason: collision with root package name */
    public boolean f24958u = false;

    public v(Context context) {
        this.hp = context;
    }

    private void jx(com.byazt.xs.jx jxVar) throws JSONException {
        try {
            if (!jxVar.hq() || jxVar.wv() == null || jxVar.wv().eb() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("i18n", jxVar.wv().eb());
            this.f24954l.put("xNode", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void hp(String str, k kVar) {
        this.zy = kVar;
        this.jl = str;
        if (kVar != null) {
            this.f24954l = kVar.hp();
        }
    }

    public com.byazt.xs.jx<View> l(q.hp hpVar, com.byazt.xs.jx<View> jxVar) {
        List<q.hp> listJx;
        hp.C0411hp c0411hpS = null;
        if (!q.j(hpVar)) {
            return null;
        }
        s sVar = this.f24955n;
        if (sVar != null) {
            sVar.l(hpVar);
        }
        String strJ = hpVar.j();
        l lVarHp = j.hp(strJ);
        if (lVarHp == null) {
            this.vv = true;
            if (this.sz == null) {
                this.sz = new ArrayList();
            }
            this.sz.add(strJ);
            return null;
        }
        com.byazt.xs.jx jxVarHp = lVarHp.hp(this.hp);
        if (jxVarHp == null) {
            return null;
        }
        jxVarHp.eb(com.byazt.ss.l.hp(hpVar.hp(), this.f24954l));
        jxVarHp.s(strJ);
        jxVarHp.jx(hpVar.w());
        jxVarHp.hp(hpVar);
        jxVarHp.hp(this.zy);
        if (jxVar instanceof com.byazt.xs.hp) {
            com.byazt.xs.hp hpVar2 = (com.byazt.xs.hp) jxVar;
            jxVarHp.hp(hpVar2);
            c0411hpS = hpVar2.s();
        }
        Iterator<String> itKeys = hpVar.w().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strHp = com.byazt.ss.l.hp(hpVar.w().optString(next), this.f24954l);
            jxVarHp.hp(next, strHp);
            if (c0411hpS != null) {
                c0411hpS.hp(this.hp, next, strHp);
            }
        }
        if (jxVarHp instanceof com.byazt.xs.hp) {
            List<q.hp> listA = hpVar.a();
            if (listA == null || listA.size() <= 0) {
                if (TextUtils.equals(jxVarHp.dy(), "RecyclerLayout") && (listJx = this.gu.jx()) != null && listJx.size() > 0) {
                    Iterator<q.hp> it = listJx.iterator();
                    while (it.hasNext()) {
                        com.byazt.xs.jx<View> jxVarL = l(it.next(), jxVarHp);
                        if (jxVarL != null && jxVarL.ky()) {
                            ((com.byazt.xs.hp) jxVarHp).hp(jxVarL);
                        }
                    }
                }
                return jxVarHp;
            }
            if (TextUtils.equals(jxVarHp.dy(), "Swiper") && listA.size() != 1) {
                com.byazt.ymw.u.l("UGTemplateEngine", "Swiper must be only one widget");
            }
            Iterator<q.hp> it2 = listA.iterator();
            while (it2.hasNext()) {
                com.byazt.xs.jx<View> jxVarL2 = l(it2.next(), jxVarHp);
                if (jxVarL2 != null && jxVarL2.ky()) {
                    ((com.byazt.xs.hp) jxVarHp).hp(jxVarL2);
                }
            }
        }
        if (c0411hpS != null) {
            jxVarHp.hp(c0411hpS.hp());
        }
        this.jx = jxVarHp;
        return jxVarHp;
    }

    public com.byazt.xs.jx<View> hp(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) throws JSONException {
        this.f24954l = jSONObject2;
        ns nsVar = this.f24949a;
        if (nsVar != null) {
            nsVar.hp();
        }
        q qVar = new q(jSONObject, jSONObject2, jSONObject3);
        this.gu = qVar;
        qVar.hp(this.cx, this.f24950b);
        this.xs = new com.byazt.ba.hp();
        vv vvVar = this.f24960w;
        if (vvVar instanceof com.byazt.ks.l) {
            ((com.byazt.ks.l) vvVar).hp(this.gu.l());
        }
        this.jx = hp(this.gu.hp(), (com.byazt.xs.jx<View>) null);
        gu guVar = this.di;
        if (guVar != null) {
            guVar.l();
            if (this.di.jx()) {
                this.di.hp(this.f24957s);
            }
            this.di.hp(this.f24949a);
        }
        ns nsVar2 = this.f24949a;
        if (nsVar2 != null) {
            nsVar2.l();
            this.jx.hp(this.f24949a);
            this.f24949a.jx();
        }
        l(this.jx);
        if (this.f24949a != null) {
            n nVar = new n();
            nVar.hp(0);
            nVar.hp(this.jx);
            this.f24949a.hp(nVar);
        }
        return this.jx;
    }

    public boolean jx() {
        return this.ec;
    }

    public com.byazt.xs.jx<View> hp(q.hp hpVar, JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        this.f24954l = jSONObject;
        ns nsVar = this.f24949a;
        if (nsVar != null) {
            nsVar.hp();
        }
        this.xs = new com.byazt.ba.hp();
        vv vvVar = this.f24960w;
        if (vvVar instanceof com.byazt.ks.l) {
            ((com.byazt.ks.l) vvVar).hp("3.0");
        }
        this.jx = hp(hpVar, (com.byazt.xs.jx<View>) null);
        ns nsVar2 = this.f24949a;
        if (nsVar2 != null) {
            nsVar2.l();
            this.jx.hp(this.f24949a);
        }
        l(this.jx);
        return this.jx;
    }

    public com.byazt.xs.jx<View> hp(q.hp hpVar, com.byazt.xs.jx<View> jxVar) {
        List<q.hp> listJx;
        hp.C0411hp c0411hp = null;
        if (!q.j(hpVar)) {
            return null;
        }
        s sVar = this.f24955n;
        if (sVar != null) {
            sVar.hp(hpVar);
        }
        String strJ = hpVar.j();
        l lVarHp = j.hp(strJ);
        l lVar = lVarHp;
        if (lVarHp == null) {
            this.vv = true;
            if (this.sz == null) {
                this.sz = new ArrayList();
            }
            this.sz.add(strJ);
            strJ = "View";
            hpVar.hp("View");
            l lVarHp2 = j.hp("View");
            lVar = lVarHp2;
            if (lVarHp2 == null) {
                return null;
            }
        }
        com.byazt.xs.jx jxVarHp = lVar.hp(this.hp);
        if (jxVarHp == null) {
            return null;
        }
        JSONObject jSONObjectW = hpVar.w();
        jxVarHp.eb(com.byazt.ss.l.hp(hpVar.hp(), this.f24954l));
        jxVarHp.s(strJ);
        jxVarHp.jx(jSONObjectW);
        jxVarHp.hp(hpVar);
        jxVarHp.l(this.f24954l);
        q qVar = this.gu;
        if (qVar == null) {
            jxVarHp.jx(true);
        } else {
            jxVarHp.jx(qVar.j());
        }
        jxVarHp.hp(this.zy);
        jxVarHp.hp(this.xs);
        Iterator<String> itKeys = jSONObjectW.keys();
        if (jxVar instanceof com.byazt.xs.hp) {
            com.byazt.xs.hp hpVar2 = (com.byazt.xs.hp) jxVar;
            hp.C0411hp c0411hpS = hpVar2.s();
            jxVarHp.hp(hpVar2);
            c0411hp = c0411hpS;
        }
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strHp = com.byazt.ss.l.hp(jSONObjectW.optString(next), this.f24954l);
            jxVarHp.hp(next, strHp);
            gu guVar = this.di;
            if (guVar != null) {
                guVar.hp(next, strHp);
            }
            if (c0411hp != null) {
                c0411hp.hp(this.hp, next, strHp);
            }
        }
        if (c0411hp != null) {
            jxVarHp.hp(c0411hp.hp());
        }
        if (jxVar != null && TextUtils.equals("virtualNode", jxVar.nu()) && jxVarHp.hd()) {
            this.ec = true;
        }
        if (jxVarHp instanceof com.byazt.xs.hp) {
            List<q.hp> listA = hpVar.a();
            if (listA != null && listA.size() > 0) {
                if (TextUtils.equals(jxVarHp.dy(), "Swiper") && listA.size() != 1) {
                    com.byazt.ymw.u.l("UGTemplateEngine", "Swiper must be only one widget");
                }
                try {
                    Collections.sort(listA, new Comparator<q.hp>() { // from class: com.byazt.ql.v.1
                        @Override // java.util.Comparator
                        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                        public int compare(q.hp hpVar3, q.hp hpVar4) {
                            return hpVar3.w().optInt("order", 0) - hpVar4.w().optInt("order", 0);
                        }
                    });
                } catch (Throwable unused) {
                }
                Iterator<q.hp> it = listA.iterator();
                while (it.hasNext()) {
                    com.byazt.xs.jx<View> jxVarHp2 = hp(it.next(), (com.byazt.xs.jx<View>) jxVarHp);
                    if (jxVarHp2 != null && !jxVarHp2.hd()) {
                        ((com.byazt.xs.hp) jxVarHp).hp(jxVarHp2, jxVarHp2.d());
                    }
                }
            } else {
                if (TextUtils.equals(jxVarHp.dy(), "RecyclerLayout") && (listJx = this.gu.jx()) != null && listJx.size() > 0) {
                    Iterator<q.hp> it2 = listJx.iterator();
                    while (it2.hasNext()) {
                        com.byazt.xs.jx<View> jxVarHp3 = hp(it2.next(), (com.byazt.xs.jx<View>) jxVarHp);
                        if (jxVarHp3 != null && jxVarHp3.ky()) {
                            ((com.byazt.xs.hp) jxVarHp).hp(jxVarHp3);
                        }
                    }
                }
                return jxVarHp;
            }
        }
        this.jx = jxVarHp;
        return jxVarHp;
    }

    public void l(JSONObject jSONObject) throws JSONException {
        ns nsVar = this.f24949a;
        if (nsVar != null) {
            nsVar.jx();
        }
        this.f24954l = jSONObject;
        hp(this.jx, jSONObject);
        l(this.jx);
        if (this.f24949a != null) {
            n nVar = new n();
            nVar.hp(0);
            nVar.hp(this.jx);
            this.f24949a.hp(nVar);
        }
    }

    private void l(com.byazt.xs.jx<View> jxVar) throws JSONException {
        List<com.byazt.xs.jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        JSONObject jSONObjectB = jxVar.b();
        Iterator<String> itKeys = jSONObjectB.keys();
        com.byazt.xs.hp hpVarUd = jxVar.ud();
        hp.C0411hp c0411hpS = hpVarUd != null ? hpVarUd.s() : null;
        jx(jxVar);
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strHp = com.byazt.ss.l.hp(jSONObjectB.optString(next), this.f24954l);
            jxVar.hp(next, strHp);
            if (c0411hpS != null) {
                c0411hpS.hp(this.hp, next, strHp);
            }
        }
        jxVar.hp(this.f24952j);
        jxVar.hp(this.f24960w);
        jxVar.hp(this.eb);
        gu guVar = this.di;
        if (guVar != null) {
            jxVar.hp(guVar);
        }
        a aVar = this.ns;
        if (aVar != null) {
            jxVar.hp(aVar);
        }
        com.byazt.gg.k kVar = this.f24956q;
        if (kVar != null) {
            jxVar.hp(kVar);
        }
        com.byazt.gg.zy zyVar = this.f24951e;
        if (zyVar != null) {
            jxVar.hp(zyVar);
        }
        if ((jxVar instanceof com.byazt.xs.hp) && (listEb = ((com.byazt.xs.hp) jxVar).eb()) != null && listEb.size() > 0) {
            Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
            while (it.hasNext()) {
                l(it.next());
            }
        }
        if (c0411hpS != null) {
            jxVar.hp(c0411hpS.hp());
        }
        jxVar.l();
    }

    public List<String> l() {
        return this.sz;
    }

    public com.byazt.xs.jx<View> hp(JSONObject jSONObject) {
        ns nsVar = this.f24949a;
        if (nsVar != null) {
            nsVar.hp();
        }
        q qVar = new q(jSONObject, this.f24954l);
        this.gu = qVar;
        vv vvVar = this.f24960w;
        if (vvVar instanceof com.byazt.ks.l) {
            ((com.byazt.ks.l) vvVar).hp(qVar.l());
        }
        this.jx = l(this.gu.hp(), null);
        ns nsVar2 = this.f24949a;
        if (nsVar2 != null) {
            nsVar2.l();
            this.jx.hp(this.f24949a);
        }
        return this.jx;
    }

    public com.byazt.xs.jx<View> hp(q.hp hpVar) {
        com.byazt.xs.jx<View> jxVarL = l(hpVar, null);
        this.jx = jxVarL;
        return jxVarL;
    }

    public void hp(com.byazt.xs.jx jxVar) {
        List<com.byazt.xs.jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        com.byazt.xs.hp hpVarUd = jxVar.ud();
        if (hpVarUd != null) {
            hp.C0411hp c0411hpS = hpVarUd.s();
            Iterator<String> itKeys = jxVar.b().keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strHp = com.byazt.ss.l.hp(jxVar.b().optString(next), this.f24954l);
                jxVar.hp(next, strHp);
                c0411hpS.hp(this.hp, next, strHp);
            }
            jxVar.hp(c0411hpS.hp());
        }
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.size() <= 0) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next());
        }
    }

    public void hp(com.byazt.xs.jx jxVar, JSONObject jSONObject) throws JSONException {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.xs.hp) {
            jxVar.hp(jSONObject);
            List<com.byazt.xs.jx<View>> listEb = ((com.byazt.xs.hp) jxVar).eb();
            if (listEb == null || listEb.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
            while (it.hasNext()) {
                hp(it.next(), jSONObject);
            }
            return;
        }
        jxVar.hp(jSONObject);
    }

    public void hp(e eVar) {
        this.f24952j = eVar;
    }

    public void hp(vv vvVar) {
        com.byazt.ks.hp hpVarW = com.byazt.zs.w.hp().w();
        if (hpVarW == null) {
            this.f24960w = vvVar;
            return;
        }
        com.byazt.ks.l lVarHp = hpVarW.hp(vvVar);
        if (lVarHp == null) {
            this.f24960w = vvVar;
            return;
        }
        lVarHp.hp(this.f24953k);
        lVarHp.hp(this.f24959v);
        lVarHp.l(this.f24958u);
        q qVar = this.gu;
        if (qVar != null) {
            lVarHp.hp(qVar.l());
        }
        this.f24960w = lVarHp;
    }

    public void hp(sz szVar) {
        this.eb = szVar;
    }

    public void hp(com.byazt.xs.jx jxVar, String str, Object... objArr) {
        List<com.byazt.xs.jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        jxVar.hp(str, objArr);
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next(), str, objArr);
        }
    }

    public boolean hp() {
        return this.vv;
    }

    public void hp(s sVar) {
        this.f24955n = sVar;
    }

    public void hp(a aVar) {
        this.ns = aVar;
    }

    public void hp(com.byazt.gg.k kVar) {
        this.f24956q = kVar;
    }

    public void hp(com.byazt.gg.zy zyVar) {
        this.f24951e = zyVar;
    }
}
