package com.kwad.sdk.i;

import org.json.JSONObject;

/* loaded from: classes4.dex */
final class i implements b {
    public double aJV;
    public String biJ;
    public String biK;
    public String biL;
    public long biM = System.currentTimeMillis();

    public static i RZ() {
        return new i();
    }

    public final i gX(String str) {
        this.biJ = str;
        return this;
    }

    public final i gY(String str) {
        this.biK = str;
        return this;
    }

    public final i gZ(String str) {
        this.biL = str;
        return this;
    }

    public final i l(double d2) {
        this.aJV = d2;
        return this;
    }

    @Override // com.kwad.sdk.i.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        c.a(jSONObject, com.sigmob.sdk.base.n.f36417C, Double.valueOf(this.aJV));
        c.a(jSONObject, "ratio_count", Double.valueOf(j.m(this.aJV)));
        c.putValue(jSONObject, "log_build_time_ms", this.biM);
        c.putValue(jSONObject, "log_level", this.biJ);
        c.putValue(jSONObject, "log_tag", this.biK);
        c.putValue(jSONObject, "log_content", this.biL);
        return jSONObject;
    }
}
