package com.byazt.lsx;

import android.content.Context;
import android.os.Looper;
import com.byazt.pg.r;
import com.byazt.zg.ns;
import java.util.concurrent.Executor;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 45})
/* loaded from: classes3.dex */
public class e implements com.byazt.jw.j {
    @Override // com.byazt.jw.j
    public boolean a() {
        return false;
    }

    @Override // com.byazt.jw.j
    public int e() {
        return 2;
    }

    @Override // com.byazt.jw.j
    public com.byazt.lpy.l eb() {
        return null;
    }

    @Override // com.byazt.jw.j
    public com.byazt.mdk.jx gu() {
        return null;
    }

    @Override // com.byazt.jw.j
    public com.byazt.jw.l hp(JSONObject jSONObject) {
        return null;
    }

    @Override // com.byazt.jw.j
    public boolean j() {
        return true;
    }

    @Override // com.byazt.jw.j
    public com.byazt.jw.s jl() {
        return null;
    }

    @Override // com.byazt.jw.j
    public boolean jx() {
        return false;
    }

    @Override // com.byazt.jw.j
    public boolean k() {
        return false;
    }

    @Override // com.byazt.jw.j
    public String l() {
        return "mediation_log";
    }

    @Override // com.byazt.jw.j
    public Executor q() {
        return com.byazt.aw.w.a();
    }

    @Override // com.byazt.jw.j
    public Executor s() {
        return com.byazt.aw.w.a();
    }

    @Override // com.byazt.jw.j
    public Looper v() {
        return ((r) com.byazt.ym.j.getService("thread_service")).getIOHandler().getLooper();
    }

    @Override // com.byazt.jw.j
    public String w() {
        return "gromore-no-webview";
    }

    @Override // com.byazt.jw.j
    public boolean zy() {
        return false;
    }

    public static String jx(String str) {
        return com.byazt.zg.hp.l(str, com.byazt.zg.l.hp());
    }

    @Override // com.byazt.jw.j
    public void hp(JSONObject jSONObject, JSONObject jSONObject2) {
    }

    @Override // com.byazt.jw.j
    public String l(String str) {
        return com.byazt.zg.hp.hp(str, com.byazt.zg.l.hp());
    }

    @Override // com.byazt.jw.j
    public boolean hp() {
        return false;
    }

    @Override // com.byazt.jw.j
    public boolean hp(Context context) {
        return ns.hp(context);
    }

    @Override // com.byazt.jw.j
    public String hp(String str) {
        return jx(str);
    }
}
