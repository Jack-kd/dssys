package com.byazt.lf;

import android.text.TextUtils;
import com.byazt.zn.ky;
import java.util.UUID;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 302})
/* loaded from: classes3.dex */
public class zy implements com.byazt.kk.hp {
    public static final zy hp = new zy();

    private zy() {
    }

    @Override // com.byazt.kk.hp
    public void hp(final com.byazt.fq.hp hpVar, final String str, final boolean z2) {
        com.byazt.dnb.s.l(new Runnable() { // from class: com.byazt.lf.zy.1
            @Override // java.lang.Runnable
            public void run() {
                if (w.hp(str, 1.0d) || !z2) {
                    zy.this.hp(hpVar, z2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.fq.hp hpVar, boolean z2) {
        JSONObject jSONObject;
        try {
            JSONObject jSONObjectHp = hpVar.hp().hp();
            if (jSONObjectHp != null) {
                String strOptString = jSONObjectHp.optString("event_extra");
                if (TextUtils.isEmpty(strOptString)) {
                    jSONObject = new JSONObject();
                } else {
                    jSONObject = new JSONObject(strOptString);
                }
                int iIncrementAndGet = l.f22592l.incrementAndGet();
                jSONObject.put("stats_index", iIncrementAndGet);
                jSONObject.put("sdk_session_id", l.hp);
                jSONObject.put("csj_type", com.byazt.jz.s.u().as() ? 1 : 0);
                jSONObject.put("create_ts", System.currentTimeMillis());
                if (!TextUtils.isEmpty(ky.f28539q)) {
                    jSONObject.put("wrong_stats_url", ky.f28539q);
                }
                if (!TextUtils.isEmpty(ky.f28535e)) {
                    jSONObject.put("wrong_applog_url", ky.f28535e);
                }
                try {
                    jSONObject.put("device_score", Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", com.byazt.el.hp.j())));
                } catch (Exception unused) {
                }
                try {
                    jSONObject.put("abtest_version", com.byazt.jz.s.u().qu());
                } catch (Exception unused2) {
                }
                if (com.byazt.jz.s.u().a()) {
                    jSONObject.putOpt("first_of_two", 1);
                }
                jSONObjectHp.put("event_extra", jSONObject.toString());
                com.byazt.ai.hp hpVar2 = new com.byazt.ai.hp(UUID.randomUUID().toString(), jSONObjectHp);
                hpVar2.jx((byte) 0);
                if (l.f22591j.get()) {
                    hpVar2.l((byte) 3);
                    hpVar2.hp((byte) 1);
                } else {
                    hpVar2.l((byte) 2);
                    hpVar2.hp((byte) 1);
                }
                l.hp(hpVar2, jSONObjectHp.optString("type"), iIncrementAndGet);
            }
        } catch (Throwable unused3) {
        }
    }
}
