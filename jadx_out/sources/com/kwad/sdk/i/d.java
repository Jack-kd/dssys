package com.kwad.sdk.i;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
final class d implements b {
    public List<e> bil;
    public long intervalTime;

    public final long RJ() {
        long j2 = this.intervalTime;
        if (j2 > 0) {
            return j2;
        }
        return 5000L;
    }

    public final void parseJson(@Nullable JSONObject jSONObject) {
        this.intervalTime = jSONObject.optInt("intervalTime", 5000);
        this.bil = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("configList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                e eVar = new e();
                eVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                this.bil.add(eVar);
            }
        }
    }

    @Override // com.kwad.sdk.i.b
    public final JSONObject toJson() {
        return null;
    }
}
