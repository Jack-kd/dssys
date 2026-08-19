package com.smartdigimkt.g0;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f40314a = new HashMap();

    public final void a(JSONArray jSONArray) {
        this.f40314a.clear();
        if (jSONArray.length() > 0) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    String strOptString = jSONObject.optString("macro");
                    if (!TextUtils.isEmpty(strOptString)) {
                        f fVar = new f();
                        fVar.f40311a = strOptString;
                        fVar.f40312b = jSONObject.optInt(com.umeng.ccg.a.f49772z, 1);
                        fVar.f40313c = jSONObject.optString(f.a.f3244d, "");
                        this.f40314a.put(strOptString, fVar);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }
}
