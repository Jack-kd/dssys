package com.byazt.lsx;

import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 150})
/* loaded from: classes3.dex */
public class q implements com.byazt.jw.gu {
    public com.byazt.qz.hp<hp> hp;

    /* renamed from: l, reason: collision with root package name */
    public static final Handler f22784l = new Handler(com.byazt.aw.w.l());
    public static final Runnable jx = new Runnable() { // from class: com.byazt.lsx.q.2
        @Override // java.lang.Runnable
        public void run() {
            com.byazt.aw.l.hp("TMe", "--==--- upload event routine");
            com.byazt.mdk.hp.jx("csj_mediation");
            q.l();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        Handler handler = f22784l;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(jx, com.byazt.di.l.l().ky());
    }

    private void l(JSONObject jSONObject, int i2, long j2, int i3, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
                if (jSONObjectOptJSONObject != null) {
                    hp(jSONObjectOptJSONObject, i2, j2, i3, jSONObject2 != null ? jSONObject2.optJSONObject("params") : null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.jw.gu
    public void hp(final List<com.byazt.jw.l> list, @Nullable final com.byazt.jw.e eVar) {
        if (list == null || list.size() <= 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        final ArrayList arrayList = new ArrayList();
        Iterator<com.byazt.jw.l> it = list.iterator();
        JSONObject jSONObjectEb = null;
        int i2 = 0;
        while (true) {
            JSONObject jSONObject = jSONObjectEb;
            if (!it.hasNext()) {
                break;
            }
            com.byazt.jw.l next = it.next();
            jSONObjectEb = next.eb();
            byte bW = next.w();
            byte bJ = next.j();
            if (bW == 2 && bJ == 3) {
                l(jSONObjectEb, list.size(), jCurrentTimeMillis, i2, jSONObject);
                arrayList.add(new eb(next.jx(), jSONObjectEb));
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("not_v3", jSONObjectEb);
                    jSONObject2.putOpt("batchId", Long.valueOf(jCurrentTimeMillis));
                    jSONObject2.putOpt("batchIndex", Integer.valueOf(i2));
                } catch (Throwable unused) {
                }
            }
            i2++;
        }
        if (arrayList.size() > 0) {
            com.byazt.aw.w.eb().execute(new Runnable() { // from class: com.byazt.lsx.q.1
                @Override // java.lang.Runnable
                public void run() {
                    w wVarHp = q.this.hp(arrayList);
                    if (eVar == null || wVarHp == null) {
                        return;
                    }
                    com.byazt.jds.l lVar = new com.byazt.jds.l(wVarHp.hp, wVarHp.f22789l, wVarHp.jx, wVarHp.f22788j, "");
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new com.byazt.jds.hp(lVar, list));
                    eVar.hp(arrayList2);
                    if (wVarHp.hp) {
                        q.l();
                    }
                }
            });
        }
    }

    private void hp(JSONObject jSONObject, int i2, long j2, int i3, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                String strOptString = jSONObject.optString("event_extra");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                JSONObject jSONObject3 = new JSONObject(strOptString);
                jSONObject3.putOpt("size", Integer.valueOf(i2));
                jSONObject3.putOpt("batchId", Long.valueOf(j2));
                jSONObject3.putOpt("batchIndex", Integer.valueOf(i3));
                jSONObject3.putOpt("preEventId", jSONObject2 != null ? jSONObject2.optString("event_id") : "-1");
                jSONObject.put("event_extra", jSONObject3.toString());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public w hp(List<hp> list) {
        try {
            if (this.hp == null) {
                this.hp = com.byazt.di.l.hp();
            }
        } catch (Exception unused) {
        }
        com.byazt.qz.hp<hp> hpVar = this.hp;
        if (hpVar == null) {
            return null;
        }
        return hpVar.hp(list);
    }
}
