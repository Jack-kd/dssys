package com.byazt.hz;

import java.math.BigDecimal;
import java.math.RoundingMode;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 94})
/* loaded from: classes2.dex */
public class eb implements gu {
    @Override // com.byazt.hz.gu
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Number hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length < 3) {
            return null;
        }
        Number numberHp = hp(objArr[0]);
        int iHp = hp(objArr[1], 0);
        boolean zHp = hp(objArr[2], false);
        if (numberHp == null) {
            return null;
        }
        return hp(numberHp, iHp, zHp);
    }

    public Number hp(Number number, int i2, boolean z2) {
        if (number == null) {
            return null;
        }
        int iMax = Math.max(i2, 0);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(number.doubleValue());
        BigDecimal scale = z2 ? bigDecimalValueOf.setScale(iMax, RoundingMode.HALF_UP) : bigDecimalValueOf.setScale(iMax, RoundingMode.DOWN);
        return (iMax == 0 || L.a.a(scale).scale() <= 0) ? Long.valueOf(scale.longValue()) : Double.valueOf(scale.doubleValue());
    }

    private Number hp(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    private int hp(Object obj, int i2) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    private boolean hp(Object obj, boolean z2) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return obj instanceof String ? Boolean.parseBoolean((String) obj) : z2;
    }
}
