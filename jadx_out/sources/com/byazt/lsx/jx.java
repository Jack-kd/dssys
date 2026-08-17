package com.byazt.lsx;

import android.content.Context;
import android.content.Intent;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.fct.jx;
import com.byazt.jw.hp;
import com.byazt.lsx.l;
import com.byazt.zg.b;
import com.byazt.zg.nu;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 30})
/* loaded from: classes3.dex */
public class jx {
    public static volatile boolean hp = false;
    public static long jx;

    /* renamed from: l, reason: collision with root package name */
    public static final AtomicLong f22781l = new AtomicLong(0);

    public static void hp() {
        hp = true;
    }

    public static void j() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jx < 3000) {
            com.byazt.aw.l.l(MediationConstant.TAG, "badkground too frequently ms: " + (jCurrentTimeMillis - jx));
        } else if (l()) {
            jx = jCurrentTimeMillis;
            if (b.hp(com.byazt.di.l.getContext())) {
                jx();
            } else {
                w();
            }
        }
    }

    public static void jx() {
        com.byazt.mdk.hp.jx("csj_mediation");
    }

    public static boolean l() {
        return hp;
    }

    private static void w() {
        if (com.byazt.di.l.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(nu.hp());
                intent.setAction("com.bytedance.msdk.sdkinit.EventMultiFlushReceiver");
                intent.putExtra("b_msg_id", 1);
                com.byazt.di.l.getContext().sendBroadcast(intent, jx.l.hp);
            } catch (Throwable unused) {
            }
        }
    }

    public static void hp(Context context, JSONObject jSONObject) {
        int iPu = com.byazt.di.l.l().pu();
        com.byazt.owd.a.hp(jSONObject, "s-adlog_pre");
        com.byazt.mdk.hp.hp(new hp.C0286hp().hp(new q()).l(com.byazt.yc.hp.hp(iPu, iPu, bn.f11192e)).l(com.byazt.di.hp.jl().k()).hp(new e()).hp(gu.hp).hp("csj_mediation").hp(context).l(com.byazt.wu.hp.w()).hp());
        com.byazt.mdk.hp.hp("csj_mediation", true);
    }

    public static void hp(Context context, j jVar, Map<String, Object> map) {
        if (com.byazt.di.l.l().cx()) {
            Context context2 = context == null ? com.byazt.di.l.getContext() : context;
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                try {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                } catch (JSONException unused) {
                }
            }
            jSONObject.put("eventIndex", f22781l.getAndIncrement());
            jSONObject.put("is_main_process", b.hp(context));
            jSONObject.put("is_cypher_v4", com.byazt.di.l.hp().hp());
            if (com.byazt.di.hp.jl().q()) {
                jSONObject.put("e2e_test_flag", "1");
            }
            if (jVar != null) {
                jVar.hp("event_id", UUID.randomUUID().toString());
            }
            if (!hp) {
                l.hp().hp(jVar, jSONObject);
            } else {
                hp(context2, jVar, hp.hp(jVar, jSONObject));
            }
        }
    }

    public static void hp(Context context) {
        try {
            List<l.hp> listL = l.hp().l();
            if (listL != null) {
                for (l.hp hpVar : listL) {
                    if (hpVar != null) {
                        hp(context, hpVar.hp(), hpVar.l());
                    }
                }
            }
            l.hp().jx();
        } catch (Throwable unused) {
        }
    }

    private static void hp(Context context, j jVar, JSONObject jSONObject) {
        if (com.byazt.mdk.hp.hp("csj_mediation")) {
            hp(context, null);
        }
        eb ebVarHp = eb.hp(context, jVar, jSONObject);
        com.byazt.ri.jx.hp(ebVarHp, true);
        com.byazt.ai.hp hpVar = new com.byazt.ai.hp(ebVarHp.hp, ebVarHp);
        hpVar.hp((byte) 3);
        hpVar.l((byte) 2);
        com.byazt.mdk.hp.hp(hpVar, "csj_mediation");
    }
}
