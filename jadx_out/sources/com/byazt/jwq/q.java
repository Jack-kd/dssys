package com.byazt.jwq;

import android.app.Activity;
import android.text.TextUtils;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import com.byazt.xci.o;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 150})
/* loaded from: classes.dex */
public class q extends hp {
    public String xs;

    public q(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
        o oVarDs = this.eb.ds();
        if (oVarDs != null) {
            this.xs = oVarDs.hp();
        }
    }

    @Override // com.byazt.jwq.l
    public boolean a() {
        String str = this.xs;
        return (str == null || str.equals("0") || TextUtils.isEmpty(this.xs)) ? false : true;
    }

    @Override // com.byazt.jwq.l
    public int eb() {
        return 5;
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("red_pack_amount", this.xs);
            boolean z2 = false;
            try {
                if (Double.parseDouble(this.xs) != 0.0d) {
                    z2 = true;
                }
            } catch (NumberFormatException unused) {
            }
            jSONObject.put("is_display_unit", z2);
        } catch (JSONException unused2) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        return jx(eVar);
    }
}
