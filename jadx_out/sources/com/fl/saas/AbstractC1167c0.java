package com.fl.saas;

import androidx.arch.core.util.Function;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* renamed from: com.fl.saas.c0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1167c0 {
    public static List a(JSONArray jSONArray, Function function) {
        return a(jSONArray, true, function);
    }

    public static List a(JSONArray jSONArray, boolean z2, Function function) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    Object objOpt = jSONArray.opt(i2);
                    if ((objOpt != null || !z2) && (function == null || (objOpt = function.apply(objOpt)) != null || !z2)) {
                        arrayList.add(objOpt);
                    }
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        }
        return arrayList;
    }
}
