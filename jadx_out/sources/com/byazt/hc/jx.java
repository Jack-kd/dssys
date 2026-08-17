package com.byazt.hc;

import android.content.Context;
import android.os.Process;
import com.byazt.aj.s;
import com.byazt.kw.v;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1439, 30})
/* loaded from: classes2.dex */
public abstract class jx {
    public com.byazt.aj.jx hp;

    /* renamed from: j, reason: collision with root package name */
    public l f20658j;
    public com.byazt.aj.w jx = s.hp().jx();

    /* renamed from: l, reason: collision with root package name */
    public Context f20659l;

    /* renamed from: w, reason: collision with root package name */
    public j f20660w;

    public jx(com.byazt.aj.jx jxVar, Context context, l lVar, j jVar) {
        this.hp = jxVar;
        this.f20659l = context;
        this.f20658j = lVar;
        this.f20660w = jVar;
    }

    private void w(com.byazt.rw.hp hpVar) throws JSONException {
        List<com.byazt.aj.hp> listHp = s.l().hp(this.hp);
        if (listHp != null) {
            JSONObject jSONObject = new JSONObject();
            Iterator<com.byazt.aj.hp> it = listHp.iterator();
            while (it.hasNext()) {
                Map<? extends String, ? extends String> mapHp = it.next().hp(this.hp);
                if (mapHp != null) {
                    try {
                        for (String str : mapHp.keySet()) {
                            jSONObject.put(str, mapHp.get(str));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            hpVar.hp("custom", jSONObject);
        }
    }

    public boolean hp() {
        return true;
    }

    public void j(com.byazt.rw.hp hpVar) throws JSONException {
        hpVar.l(com.byazt.bb.j.hp(s.w().j(), s.w().w()));
    }

    public void jx(com.byazt.rw.hp hpVar) {
        Map<String, Object> mapHp = s.hp().hp();
        if (mapHp == null) {
            return;
        }
        if (mapHp.containsKey("app_version")) {
            hpVar.hp("crash_version", mapHp.get("app_version"));
        }
        if (mapHp.containsKey(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME)) {
            hpVar.hp("app_version", mapHp.get(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME));
        }
        if (mapHp.containsKey("version_code")) {
            try {
                hpVar.hp("crash_version_code", Integer.valueOf(Integer.parseInt(mapHp.get("version_code").toString())));
            } catch (Exception unused) {
                hpVar.hp("crash_version_code", mapHp.get("version_code"));
            }
        }
        if (mapHp.containsKey("update_version_code")) {
            try {
                hpVar.hp("crash_update_version_code", Integer.valueOf(Integer.parseInt(mapHp.get("update_version_code").toString())));
            } catch (Exception unused2) {
                hpVar.hp("crash_update_version_code", mapHp.get("update_version_code"));
            }
        }
    }

    public boolean l() {
        return true;
    }

    public com.byazt.rw.hp hp(com.byazt.rw.hp hpVar) {
        if (hpVar == null) {
            hpVar = new com.byazt.rw.hp();
        }
        l(hpVar);
        w(hpVar);
        return hpVar;
    }

    public void l(com.byazt.rw.hp hpVar) throws JSONException {
        l lVar;
        if (l() && (lVar = this.f20658j) != null) {
            hpVar.hp(lVar);
        }
        hpVar.hp(s.a());
        l lVar2 = this.f20658j;
        hpVar.hp("is_background", Boolean.valueOf((lVar2 == null || !lVar2.jx()) && !com.byazt.kw.hp.hp(this.f20659l)));
        hpVar.hp("pid", Integer.valueOf(Process.myPid()));
        hpVar.hp("battery", Integer.valueOf(this.f20660w.hp()));
        hpVar.hp(this.jx.w());
        hpVar.l(s.q());
        hpVar.hp(s.e(), s.gu());
        hpVar.hp(this.jx.a());
        hpVar.hp(v.hp(this.f20659l));
        if (hp()) {
            j(hpVar);
        }
        hpVar.hp(this.jx.j());
        String strEb = s.eb();
        if (strEb != null) {
            hpVar.hp("business", strEb);
        }
        if (s.s()) {
            hpVar.hp("is_mp", (Object) 1);
        }
        hpVar.jx(s.l().hp());
        hpVar.hp("crash_uuid", UUID.randomUUID().toString());
    }
}
