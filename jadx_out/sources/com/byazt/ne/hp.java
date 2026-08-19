package com.byazt.ne;

import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 968, 28})
/* loaded from: classes3.dex */
public class hp {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public long f23547j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23548l;

    /* renamed from: w, reason: collision with root package name */
    public long f23549w;

    public hp(JSONObject jSONObject) {
        this.hp = jSONObject.optLong("cid");
        this.f23548l = jSONObject.optString("url");
        this.jx = jSONObject.optString("file_hash");
        this.f23547j = jSONObject.optLong("effective_time");
        this.f23549w = jSONObject.optLong("expiration_time");
    }

    public String hp() {
        return this.f23548l;
    }

    public boolean j() {
        return System.currentTimeMillis() >= this.f23549w;
    }

    public long jx() {
        return this.f23547j;
    }

    public String l() {
        return this.jx;
    }

    public JSONObject w() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.hp);
            jSONObject.put("url", this.f23548l);
            jSONObject.put("file_hash", this.jx);
            jSONObject.put("effective_time", this.f23547j);
            jSONObject.put("expiration_time", this.f23549w);
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return jSONObject;
        }
    }

    public long hp(String str) {
        File file = new File(str, this.jx);
        return file.exists() ? file.lastModified() : System.currentTimeMillis();
    }

    public boolean l(String str) {
        File file = new File(str, this.jx);
        if (!file.exists()) {
            return false;
        }
        try {
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }
}
