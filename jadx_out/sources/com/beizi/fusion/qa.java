package com.beizi.fusion;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class qa implements hd {
    private boolean hasParseException = false;
    protected JSONObject mJsonObject;

    public qa(JSONObject jSONObject) {
        this.mJsonObject = jSONObject;
        parseFormJson(jSONObject);
    }

    public JSONObject asJsonObject() {
        return this.mJsonObject;
    }

    public boolean hasParseException() {
        return this.hasParseException;
    }

    public void parseFormJson(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                pg.a(this, jSONObject);
            } catch (JSONException unused) {
                this.hasParseException = true;
            }
        }
    }

    @Override // com.beizi.fusion.hd
    public String toJsonString() {
        JSONObject jSONObject = this.mJsonObject;
        return jSONObject != null ? jSONObject.toString() : "";
    }
}
