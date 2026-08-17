package com.byazt.nnr;

import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.uid.q;
import com.byazt.ym.j;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2347, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f23701l = false;

    public static void hp() {
        if (f23701l) {
            return;
        }
        f23701l = true;
        q qVar = q.f26242l;
        qVar.hp(11);
        qVar.j(d.hp());
        qVar.jx(true);
        qVar.hp(true);
        qVar.l(true);
    }

    public static void l() {
        JSONObject jSONObjectX = sz.l().x();
        if (jSONObjectX == null) {
            return;
        }
        ((r) j.getService("thread_service")).updateSettings(jSONObjectX);
        hp = jSONObjectX.optBoolean("can_set_crash", true);
    }
}
