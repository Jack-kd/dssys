package com.anythink.core.common.h;

import com.anythink.core.api.ATAdConst;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class be {

    /* renamed from: a, reason: collision with root package name */
    int f3899a;

    /* renamed from: b, reason: collision with root package name */
    boolean f3900b;

    /* renamed from: c, reason: collision with root package name */
    String f3901c;

    /* renamed from: d, reason: collision with root package name */
    boolean f3902d;

    /* renamed from: e, reason: collision with root package name */
    String f3903e;

    /* renamed from: f, reason: collision with root package name */
    String f3904f;

    private be() {
    }

    public static be a(boolean z2, String str, boolean z3, Map<String, Object> map) {
        be beVar = new be();
        beVar.f3899a = 1;
        beVar.f3900b = z2;
        beVar.f3901c = str;
        beVar.f3902d = z3;
        if (map != null) {
            try {
                Object obj = map.get(ATAdConst.REWARD_EXTRA.REWARD_INFO);
                if (obj instanceof Map) {
                    Map map2 = (Map) obj;
                    beVar.f3903e = String.valueOf(map2.get(ATAdConst.REWARD_EXTRA.REWARD_INFO_ERROR_CODE));
                    beVar.f3904f = String.valueOf(map2.get(ATAdConst.REWARD_EXTRA.REWARD_INFO_ERROR_MSG));
                }
            } catch (Throwable unused) {
            }
        }
        return beVar;
    }

    public final String b() {
        return this.f3903e;
    }

    public final String c() {
        return this.f3904f;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("from", this.f3899a);
            jSONObject.put("is_playend", this.f3900b ? 1 : 2);
            jSONObject.put("url", this.f3901c);
            jSONObject.put("status", this.f3902d ? 1 : 2);
            jSONObject.put("e_code", this.f3903e);
            jSONObject.put("e_reason", this.f3904f);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
