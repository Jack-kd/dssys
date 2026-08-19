package com.byazt.hz;

import com.anythink.core.common.d.i;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v implements gu {
    @Override // com.byazt.hz.gu
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Number hp(JSONObject jSONObject, Object[] objArr) {
        Object obj;
        if (objArr == null || objArr.length == 0 || (obj = objArr[0]) == null) {
            return null;
        }
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof Boolean) {
            return Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (!(obj instanceof String)) {
            return null;
        }
        try {
            String strTrim = ((String) obj).trim();
            if (!strTrim.equalsIgnoreCase("true") && !strTrim.equalsIgnoreCase("false")) {
                return strTrim.contains(i.f2495E) ? Double.valueOf(Double.parseDouble(strTrim)) : Long.valueOf(Long.parseLong(strTrim));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
