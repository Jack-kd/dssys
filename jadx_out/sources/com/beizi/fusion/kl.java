package com.beizi.fusion;

import android.content.Context;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class kl extends db {
    public kl(Context context, String str) {
        super(context, str);
    }

    @Override // com.beizi.fusion.db
    public void a(String str) {
        JSONArray jSONArrayB = pg.b(str);
        if (jSONArrayB != null) {
            for (int i2 = 0; i2 < jSONArrayB.length(); i2++) {
                qf.b().a(this.f13421b, jSONArrayB.optString(i2), sh.TEMPORARY);
            }
        }
    }
}
