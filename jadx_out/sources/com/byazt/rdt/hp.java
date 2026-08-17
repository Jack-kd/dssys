package com.byazt.rdt;

import com.anythink.core.common.f.f;
import com.byazt.jz.sz;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 817, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    private boolean a(int i2) {
        return hp(j(), i2);
    }

    public static boolean j(int i2) {
        return (hp(sz.l().ov(), i2) && hp(sz.l().gb(), i2)) ? false : true;
    }

    public int hp() {
        JSONObject jSONObjectJ = j();
        if (jSONObjectJ == null) {
            return 0;
        }
        double dOptDouble = jSONObjectJ.optDouble(f.a.f3244d, 0.0d);
        int iOptInt = jSONObjectJ.optInt("plan");
        return iOptInt == 1 ? dOptDouble == 0.0d ? 0 : 1 : iOptInt;
    }

    public abstract boolean hp(int i2);

    public abstract JSONObject j();

    public abstract boolean jx();

    public boolean jx(int i2) {
        int iHp = hp();
        if (iHp == 0 || l() || jx() || a(i2)) {
            return false;
        }
        return hp(iHp);
    }

    public abstract void l(int i2);

    public abstract boolean l();

    public void w(int i2) {
        int iHp = hp();
        if (iHp == 0 || l() || jx() || a(i2)) {
            return;
        }
        l(iHp);
    }

    private static boolean hp(JSONObject jSONObject, int i2) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("valid_type")) == null || jSONArrayOptJSONArray.length() == 0) {
            return true;
        }
        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
            if (i2 == jSONArrayOptJSONArray.optInt(i3)) {
                return false;
            }
        }
        return true;
    }

    public static double hp(double d2, JSONObject jSONObject) {
        double dOptDouble = jSONObject.optDouble("min_value", -1.0d);
        double dOptDouble2 = jSONObject.optDouble("max_value", 1.0d);
        return d2 > dOptDouble2 ? dOptDouble2 : d2 < dOptDouble ? dOptDouble : d2;
    }
}
