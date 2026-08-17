package com.byazt.rsz;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.ot.a;
import com.byazt.ot.j;
import com.byazt.ot.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 579, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public j f25317a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f25318e;
    public j eb;
    public int gu;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public String f25319j;
    public com.byazt.ot.l jl;
    public com.byazt.psp.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Object> f25320l;

    /* renamed from: q, reason: collision with root package name */
    public Map<String, Object> f25321q;

    /* renamed from: s, reason: collision with root package name */
    public String f25322s;

    /* renamed from: w, reason: collision with root package name */
    public String f25323w;

    public hp(com.byazt.psp.hp hpVar, JSONObject jSONObject, Map<String, Object> map) {
        this.gu = 1;
        this.jx = hpVar;
        this.hp = jSONObject;
        this.f25320l = map;
    }

    private void e() {
        a aVarL;
        a aVarL2;
        j jVar = this.f25317a;
        if (jVar != null && (aVarL2 = jVar.l()) != null) {
            aVarL2.hp(this.hp, this);
        }
        j jVar2 = this.eb;
        if (jVar2 == null || (aVarL = jVar2.l()) == null) {
            return;
        }
        aVarL.hp(this.hp, this);
    }

    private void gu() {
        a aVarL;
        a aVarL2;
        j jVar = this.f25317a;
        if (jVar != null && (aVarL2 = jVar.l()) != null) {
            aVarL2.hp(this.f25320l, this);
        }
        j jVar2 = this.eb;
        if (jVar2 == null || (aVarL = jVar2.l()) == null) {
            return;
        }
        aVarL.hp(this.f25320l, this);
    }

    private void q() {
        if (this.gu != 2) {
            com.byazt.psp.hp hpVar = this.jx;
            if (hpVar == null) {
                return;
            } else {
                this.f25322s = hpVar.l();
            }
        }
        if (!TextUtils.isEmpty(this.f25322s)) {
            this.f25319j = Uri.parse(this.f25322s).getHost();
        }
        if (!TextUtils.isEmpty(this.f25319j)) {
            String str = this.f25319j.split(ServiceReference.DELIMITER)[0];
            this.f25319j = str;
            int iIndexOf = str.indexOf(":");
            if (iIndexOf == -1) {
                iIndexOf = this.f25319j.length();
            }
            this.f25319j = this.f25319j.substring(0, iIndexOf);
        }
        l(this.f25322s);
    }

    public boolean a() {
        return this.f25318e;
    }

    public void eb() {
        q();
        gu();
        com.byazt.ot.l lVar = this.jl;
        if (lVar != null) {
            lVar.hp();
        } else {
            com.byazt.sp.hp.hp().hp(this.f25319j, this, new com.byazt.ot.hp() { // from class: com.byazt.rsz.hp.1
            });
        }
    }

    public Map<String, Object> hp() {
        return this.f25320l;
    }

    public String j() {
        return this.f25323w;
    }

    public JSONObject jx() {
        return this.hp;
    }

    public Map<String, Object> l() {
        return this.f25321q;
    }

    public com.byazt.psp.hp s() {
        return this.jx;
    }

    public j w() {
        return this.f25317a;
    }

    private void jx(String str) {
        a aVarL;
        a aVarL2;
        j jVar = this.f25317a;
        if (jVar != null && (aVarL2 = jVar.l()) != null) {
            aVarL2.hp(str, this);
        }
        j jVar2 = this.eb;
        if (jVar2 == null || (aVarL = jVar2.l()) == null) {
            return;
        }
        aVarL.hp(str, this);
    }

    private void l(String str) {
        jx(str);
        JSONObject jSONObjectHp = com.byazt.qsi.l.hp(str);
        if (jSONObjectHp == null) {
            return;
        }
        e();
        Iterator<String> itKeys = jSONObjectHp.keys();
        this.f25321q = new HashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                Object objOpt = jSONObjectHp.opt(next);
                if (objOpt instanceof String) {
                    objOpt = hp((String) objOpt, this.hp);
                }
                this.f25321q.put(next, objOpt);
            }
        }
    }

    public void hp(String str) {
        this.f25323w = str;
    }

    public void hp(j jVar) {
        if (jVar instanceof l) {
            this.f25317a = jVar;
        } else {
            this.eb = jVar;
        }
    }

    public hp(String str, int i2, JSONObject jSONObject, Map<String, Object> map) {
        this.gu = 1;
        if (i2 == 2) {
            this.f25322s = str;
        } else if (i2 == 3) {
            this.f25319j = str;
        }
        this.gu = i2;
        this.hp = jSONObject;
        this.f25320l = map;
    }

    public void hp(boolean z2) {
        this.f25318e = z2;
    }

    private static Object hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return str;
        }
        try {
            return (str.startsWith("${") && str.endsWith("}")) ? com.byazt.nh.hp.hp(str.substring(2, str.length() - 1)).hp(jSONObject) : str;
        } catch (Throwable unused) {
            return str;
        }
    }

    public void hp(com.byazt.ot.l lVar) {
        this.jl = lVar;
    }

    public void hp(Map<String, Object> map) {
        w wVarJx;
        w wVarJx2;
        e();
        j jVar = this.f25317a;
        if (jVar != null && (wVarJx2 = jVar.jx()) != null) {
            wVarJx2.hp(this, map);
        }
        j jVar2 = this.eb;
        if (jVar2 == null || (wVarJx = jVar2.jx()) == null) {
            return;
        }
        wVarJx.hp(this, map);
    }

    public void l(Map<String, Object> map) {
        w wVarJx;
        w wVarJx2;
        e();
        j jVar = this.eb;
        if (jVar != null && (wVarJx2 = jVar.jx()) != null) {
            wVarJx2.hp(this, map);
        }
        j jVar2 = this.f25317a;
        if (jVar2 == null || (wVarJx = jVar2.jx()) == null) {
            return;
        }
        wVarJx.hp(this, map);
    }

    public void hp(Map<String, Object> map, com.byazt.ppg.hp hpVar) {
        w wVarJx;
        w wVarJx2;
        e();
        j jVar = this.f25317a;
        if (jVar != null && (wVarJx2 = jVar.jx()) != null) {
            wVarJx2.hp(this, this.f25320l, hpVar);
        }
        j jVar2 = this.eb;
        if (jVar2 == null || (wVarJx = jVar2.jx()) == null) {
            return;
        }
        wVarJx.hp(this, map, hpVar);
    }

    public void l(Map<String, Object> map, com.byazt.ppg.hp hpVar) {
        w wVarJx;
        w wVarJx2;
        e();
        j jVar = this.eb;
        if (jVar != null && (wVarJx2 = jVar.jx()) != null) {
            wVarJx2.hp(this, map, hpVar);
        }
        j jVar2 = this.f25317a;
        if (jVar2 == null || (wVarJx = jVar2.jx()) == null) {
            return;
        }
        wVarJx.hp(this, map, hpVar);
    }
}
