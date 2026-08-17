package com.byazt.lw;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.g.c;
import com.byakv.z.TTEncryptUtils;
import com.byazt.gt.zy;
import com.umeng.analytics.pro.cl;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 717, 34})
/* loaded from: classes3.dex */
public class l {
    public final com.byazt.id.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public long f22795l = 5000;
    public long jx = c.f3507a;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, JSONObject> f22794j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, JSONObject> f22796w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f22793a = "";
    public final ReentrantLock eb = new ReentrantLock();

    public l(Context context, com.byazt.id.hp hpVar) {
        this.hp = hpVar;
        l(zy.l(context).getString("d_data", ""));
    }

    private void hp(String str) {
        this.hp.l("d_data", str);
        this.hp.hp("d_data", str);
    }

    private boolean jx(JSONObject jSONObject) {
        if (jSONObject.optString("message", "").equals("ok")) {
            return true;
        }
        com.byazt.fg.hp.hp("__kite", "error response");
        return false;
    }

    private void l(String str) {
        if (!this.f22794j.isEmpty() && !this.f22796w.isEmpty()) {
            com.byazt.fg.hp.jx("__kite", " map is empty");
            return;
        }
        byte[] bArrClientUnpackedBase64 = TTEncryptUtils.clientUnpackedBase64(str);
        if (bArrClientUnpackedBase64 == null || bArrClientUnpackedBase64.length == 0) {
            com.byazt.fg.hp.jx("__kite", "parse is null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArrClientUnpackedBase64));
            if (com.byazt.fg.hp.l()) {
                com.byazt.fg.hp.hp("__kite", " data:".concat(String.valueOf(jSONObject)));
            }
            this.f22793a = jSONObject.optString(cl.f49059n, "");
            hp(jSONObject, "fields", this.f22794j);
            int iOptInt = jSONObject.optInt("delay_sec", 0);
            if (iOptInt > 0) {
                this.f22795l = iOptInt * 1000;
            }
            int iOptInt2 = jSONObject.optInt("dtrait_mem_ttl_sec", 0);
            if (iOptInt2 > 0) {
                this.jx = iOptInt2 * 1000;
            }
            hp(jSONObject, "dtrait_fields", this.f22796w);
            if (com.byazt.fg.hp.l()) {
                com.byazt.fg.hp.hp("__kite" + String.format("parseConfigFields# fields: status_collect delay time:%s, dtraitExpireTime:%s", Long.valueOf(this.f22795l), Long.valueOf(this.jx)));
            }
        } catch (Exception e2) {
            com.byazt.fg.hp.l("__kiteparseConfigFields# error: " + e2.getMessage());
        }
    }

    private void hp(JSONObject jSONObject, String str, Map<String, JSONObject> map) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return;
        }
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            JSONObject jSONObject2 = (JSONObject) jSONArrayOptJSONArray.get(i2);
            map.put(jSONObject2.optString("name"), jSONObject2);
        }
    }

    public long jx() {
        return this.f22795l;
    }

    public void hp(JSONObject jSONObject) {
        this.eb.lock();
        try {
            try {
                if (!jx(jSONObject)) {
                    com.byazt.fg.hp.jx("__kite", "invalid response");
                } else {
                    String strOptString = jSONObject.optString("data");
                    if (TextUtils.isEmpty(strOptString)) {
                        com.byazt.fg.hp.jx("__kite", "response is empty");
                    } else {
                        hp(strOptString);
                        l(strOptString);
                        if (com.byazt.fg.hp.l()) {
                            com.byazt.fg.hp.hp("__kiteconfig parse success");
                        }
                    }
                }
            } catch (Exception e2) {
                com.byazt.fg.hp.l("__kiteerror" + e2.getMessage());
            }
        } finally {
            this.eb.unlock();
        }
    }

    public void l(JSONObject jSONObject) {
        try {
            if (jx(jSONObject)) {
                String strOptString = jSONObject.optString("data");
                if (TextUtils.isEmpty(strOptString)) {
                    com.byazt.fg.hp.hp("__kite", "data is null");
                    return;
                }
                hp(strOptString);
                l(strOptString);
                com.byazt.fg.hp.hp("__kitesuccess");
            }
        } catch (Exception e2) {
            com.byazt.fg.hp.l("__kiteerror " + e2.getMessage());
        }
    }

    public Map<String, JSONObject> hp() {
        return this.f22794j;
    }

    public String l() {
        return this.f22793a;
    }
}
