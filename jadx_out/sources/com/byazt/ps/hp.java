package com.byazt.ps;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1039, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public JSONObject hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xs.jx f24489l;

    @com.byazt.kj.hp(hp = {0, 1, 1039, 170})
    /* renamed from: com.byazt.ps.hp$hp, reason: collision with other inner class name */
    public static class C0343hp {
        public static hp hp(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
            if (jxVar == null || jSONObject == null) {
                return null;
            }
            String strOptString = jSONObject.optString("type");
            strOptString.getClass();
            switch (strOptString) {
                case "stretch":
                    return new w(jxVar, jSONObject);
                case "ripple":
                    return new l(jxVar, jSONObject);
                case "rub_in":
                    return new jx(jxVar, jSONObject);
                case "shine":
                    return new j(jxVar, jSONObject);
                default:
                    return null;
            }
        }
    }

    public hp(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
        this.hp = jSONObject;
        this.f24489l = jxVar;
        hp();
    }

    public void hp() {
        this.jx = this.hp.optString("type");
        l();
    }

    public abstract void hp(int i2, int i3);

    public abstract void hp(Canvas canvas);

    public String j() {
        return this.jx;
    }

    public abstract List<PropertyValuesHolder> jx();

    public abstract void l();

    public abstract void l(Canvas canvas);
}
