package com.byazt.lf;

import android.content.Context;
import android.os.Looper;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.ymw.vv;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 150})
/* loaded from: classes3.dex */
public class q implements com.byazt.jw.j {
    @Override // com.byazt.jw.j
    public boolean a() {
        return true;
    }

    @Override // com.byazt.jw.j
    public int e() {
        return 0;
    }

    @Override // com.byazt.jw.j
    public com.byazt.lpy.l eb() {
        return new e(com.byazt.cm.w.hp().l().jx());
    }

    @Override // com.byazt.jw.j
    public com.byazt.mdk.jx gu() {
        return null;
    }

    @Override // com.byazt.jw.j
    public boolean hp() {
        return false;
    }

    @Override // com.byazt.jw.j
    public boolean j() {
        return com.byazt.jkd.q.hp();
    }

    @Override // com.byazt.jw.j
    public com.byazt.jw.s jl() {
        return hp.hp;
    }

    @Override // com.byazt.jw.j
    public boolean jx() {
        return sz.l().lv();
    }

    @Override // com.byazt.jw.j
    public boolean k() {
        return sz.l().dy();
    }

    @Override // com.byazt.jw.j
    public String l() {
        return "csj_";
    }

    @Override // com.byazt.jw.j
    public Executor q() {
        return com.byazt.uid.w.hp();
    }

    @Override // com.byazt.jw.j
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public ExecutorService s() {
        return com.byazt.uid.w.l();
    }

    @Override // com.byazt.jw.j
    public Looper v() {
        return ((r) com.byazt.ym.j.getService("thread_service")).getIOHandler().getLooper();
    }

    @Override // com.byazt.jw.j
    public String w() {
        return ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getWebViewUA(false);
    }

    @Override // com.byazt.jw.j
    public boolean zy() {
        return false;
    }

    @Override // com.byazt.jw.j
    public com.byazt.jw.l hp(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("is_new", true);
            jSONObject.put("sdk_session_id", l.hp);
        } catch (JSONException unused) {
        }
        com.byazt.ai.hp hpVar = new com.byazt.ai.hp(UUID.randomUUID().toString(), com.byazt.jlb.l.l().hp("new_adlog_monitor").l(jSONObject.toString()).hp());
        hpVar.jx((byte) 0);
        hpVar.l((byte) 2);
        hpVar.hp((byte) 1);
        return hpVar;
    }

    @Override // com.byazt.jw.j
    public String l(String str) {
        return com.byazt.ymw.hp.l(str);
    }

    @Override // com.byazt.jw.j
    public boolean hp(Context context) {
        return vv.hp(context);
    }

    @Override // com.byazt.jw.j
    public String hp(String str) {
        return com.byazt.ymw.hp.jx(str);
    }

    @Override // com.byazt.jw.j
    public void hp(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean zI = sz.l().i();
        if (jSONObject2 != null && jSONObject2.optInt(cb.f11292o) == 1 && zI) {
            return;
        }
        com.byazt.jdb.j.hp(jSONObject, jSONObject2);
    }
}
