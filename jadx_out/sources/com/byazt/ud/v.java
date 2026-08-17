package com.byazt.ud;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v implements com.byazt.ii.hp {
    public Number hp;

    public v(String str) throws NumberFormatException {
        if (str.indexOf(46) < 0) {
            try {
                this.hp = Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                this.hp = Long.valueOf(str);
            }
        } else {
            Float fValueOf = Float.valueOf(str);
            this.hp = fValueOf;
            if (Float.isInfinite(fValueOf.floatValue())) {
                this.hp = Double.valueOf(str);
            }
        }
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        return this.hp;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return this.hp.toString();
    }

    public String toString() {
        return l();
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.NUMBER;
    }
}
