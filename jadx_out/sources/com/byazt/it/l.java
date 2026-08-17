package com.byazt.it;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.gg.a;
import com.byazt.gg.gu;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 836, 34})
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public String f21220a;

    /* renamed from: e, reason: collision with root package name */
    public Context f21221e;
    public String eb;
    public gu hp;

    /* renamed from: j, reason: collision with root package name */
    public a.hp f21222j;
    public com.byazt.gg.a jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xs.jx f21223l;

    /* renamed from: q, reason: collision with root package name */
    public String f21224q;

    /* renamed from: s, reason: collision with root package name */
    public String f21225s;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, Object> f21226w;

    @com.byazt.kj.hp(hp = {0, 1, 836, 123})
    public static class hp {
        public static l hp(Context context, com.byazt.xs.jx jxVar, JSONObject jSONObject, JSONObject jSONObject2) {
            com.byazt.gg.a aVarHp;
            a.hp hpVarHp;
            if (jxVar == null || jSONObject == null || (aVarHp = com.byazt.gg.a.hp(jSONObject, jSONObject2)) == null || (hpVarHp = aVarHp.hp()) == null) {
                return null;
            }
            String strHp = hpVarHp.hp();
            if (TextUtils.equals(strHp, "custom")) {
                jx jxVar2 = new jx(context);
                jxVar2.hp(jxVar);
                jxVar2.hp(aVarHp);
                jxVar2.a();
                return jxVar2;
            }
            com.byazt.gg.eb ebVarHp = (TextUtils.isEmpty(strHp) || TextUtils.equals(strHp, "global")) ? com.byazt.gg.e.hp(hpVarHp.l()) : com.byazt.gg.e.hp(hpVarHp.w());
            if (ebVarHp == null) {
                return null;
            }
            l lVarHp = ebVarHp.hp(context);
            lVarHp.hp(jxVar);
            lVarHp.hp(aVarHp);
            lVarHp.a();
            return lVarHp;
        }
    }

    public l(Context context) {
        this.f21221e = context;
    }

    public void a() {
        this.f21222j = this.jx.hp();
        com.byazt.gg.a aVar = this.jx;
        if (aVar == null) {
            return;
        }
        a.hp hpVarHp = aVar.hp();
        this.f21222j = hpVarHp;
        if (hpVarHp == null) {
            return;
        }
        this.f21226w = hpVarHp.jx();
        this.f21220a = this.f21222j.l();
        this.eb = this.f21222j.hp();
        this.f21225s = this.f21222j.j();
        this.f21224q = this.f21222j.w();
    }

    public com.byazt.gg.a e() {
        return this.jx;
    }

    public String eb() {
        return this.f21220a;
    }

    public void hp(com.byazt.xs.jx jxVar) {
        this.f21223l = jxVar;
    }

    public abstract boolean hp(Object... objArr);

    public String q() {
        return this.f21224q;
    }

    public String s() {
        return this.f21225s;
    }

    public void hp(com.byazt.gg.a aVar) {
        this.jx = aVar;
    }

    public void hp(gu guVar) {
        this.hp = guVar;
    }
}
