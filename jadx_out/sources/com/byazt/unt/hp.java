package com.byazt.unt;

import com.byazt.dnb.s;
import com.byazt.dnb.zy;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.ymw.e;
import com.byazt.zls.l;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1311, 28})
/* loaded from: classes3.dex */
public class hp {
    public final int hp;

    public hp(int i2) {
        this.hp = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        s.hp(new eb("csj-plugin-check") { // from class: com.byazt.unt.hp.2
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.l() == 5) {
                    l.hp();
                }
            }
        });
    }

    public int j() {
        return 2;
    }

    public int jx() {
        return hp(8);
    }

    public int l() {
        return hp(4);
    }

    public String toString() {
        return String.valueOf(this.hp);
    }

    public void w() {
        JSONObject jSONObjectHb = sz.l().hb();
        if (jSONObjectHb == null) {
            return;
        }
        try {
            hp(jSONObjectHb, "com.byted.live.lite", 4, true);
            hp(jSONObjectHb, "com.byted.csj.ext", 8, true);
            hp(jSONObjectHb, "com.byted.mixed", 0, true);
            hp(jSONObjectHb, "com.byted.pangle", 0, false);
        } catch (Throwable unused) {
        }
    }

    public int hp(int i2) {
        int i3 = this.hp >> i2;
        int i4 = i3 & 7;
        return i4 == 0 ? j() : ((i3 & 8) >> 3) == 1 ? -i4 : i4;
    }

    public hp(int i2, boolean z2) {
        this.hp = i2;
        e.hp().postDelayed(new Runnable() { // from class: com.byazt.unt.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.a();
            }
        }, 5000L);
    }

    public int hp() {
        return hp(0);
    }

    public int hp(String str) {
        if ("com.byted.live.lite".equals(str)) {
            if (sz.l().zd()) {
                return l();
            }
            return 4;
        }
        if ("com.byted.csj.ext".equals(str)) {
            return jx();
        }
        if ("com.byted.pangle".equals(str)) {
            return hp();
        }
        return j();
    }

    private void hp(JSONObject jSONObject, String str, int i2, boolean z2) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        int iOptInt = jSONObjectOptJSONObject.optInt("state", 2);
        int iOptInt2 = jSONObjectOptJSONObject.optInt("plugin_v", 0);
        if (iOptInt == 5) {
            int iL = zy.l(str);
            int iJx = zy.jx(str);
            int iW = zy.w(str);
            String strOptString = jSONObjectOptJSONObject.optString("api_rule", "=");
            String strOptString2 = jSONObjectOptJSONObject.optString("plugin_rule", "=");
            if (hp(iL, jSONObjectOptJSONObject.optInt("api_v", 0), strOptString)) {
                if ((z2 || iJx > iW) && hp(iJx, iOptInt2, strOptString2)) {
                    zy.hp(str, 0);
                }
                List<Integer> listJ = zy.j(str);
                if (listJ != null) {
                    for (Integer num : listJ) {
                        if (num.intValue() != iJx && hp(num.intValue(), iOptInt2, strOptString2)) {
                            zy.hp(str, num.intValue());
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (iOptInt == -1 && hp(i2) == 5 && zy.jx(str) > zy.w(str)) {
            zy.hp(str, iOptInt2);
        }
    }

    private boolean hp(int i2, int i3, String str) {
        str.getClass();
        switch (str) {
            case "<":
                return i2 < i3;
            case "=":
            case "==":
                return i2 == i3;
            case ">":
                return i2 > i3;
            case "<=":
                return i2 <= i3;
            case ">=":
                return i2 >= i3;
            default:
                return false;
        }
    }
}
