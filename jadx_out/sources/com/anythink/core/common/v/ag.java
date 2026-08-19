package com.anythink.core.common.v;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.e.j;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ag {
    public static JSONObject a(Map<String, Object> map) {
        Object obj = map.get(ATAdConst.KEY.M_S);
        if (obj instanceof JSONObject) {
            return ((JSONObject) obj).optJSONObject(j.b.f8835a);
        }
        return null;
    }
}
