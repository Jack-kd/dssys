package com.fl.saas;

import android.text.TextUtils;
import com.fl.saas.adx.util.LogcatUtil;
import org.json.JSONObject;

/* renamed from: com.fl.saas.l0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1195l0 {
    public static JSONObject a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String strB = AbstractC1191k.b(str);
                if (!TextUtils.isEmpty(strB) && !"null".equals(strB)) {
                    return new JSONObject(strB);
                }
                return null;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return null;
    }
}
