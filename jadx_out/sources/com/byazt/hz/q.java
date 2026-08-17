package com.byazt.hz;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 150})
/* loaded from: classes2.dex */
public class q implements gu {
    @Override // com.byazt.hz.gu
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Boolean hp(JSONObject jSONObject, Object[] objArr) throws NumberFormatException {
        if (objArr == null || objArr.length <= 0) {
            return Boolean.FALSE;
        }
        try {
            Double.parseDouble(String.valueOf(objArr[0]));
            return Boolean.TRUE;
        } catch (NumberFormatException unused) {
            return Boolean.FALSE;
        }
    }
}
