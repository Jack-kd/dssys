package com.byazt.hz;

import android.net.Uri;
import android.text.TextUtils;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 562, 34})
/* loaded from: classes2.dex */
public class l implements gu {
    @Override // com.byazt.hz.gu
    public Object hp(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        String strValueOf = String.valueOf(objArr[0]);
        if (TextUtils.isEmpty(strValueOf)) {
            return null;
        }
        return Uri.decode(strValueOf);
    }
}
