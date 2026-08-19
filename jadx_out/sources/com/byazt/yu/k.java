package com.byazt.yu;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 42})
/* loaded from: classes3.dex */
public final class k extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28296a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28297w;

    public k(Context context, s sVar) {
        super(true, false);
        this.f28297w = context;
        this.f28296a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException, SecurityException {
        Map<String, String> mapHp = com.byazt.hk.eb.hp(this.f28297w, this.f28296a.w());
        if (mapHp == null) {
            return !com.byazt.ub.hp.f26121l;
        }
        jSONObject.put("oaid", new JSONObject(mapHp));
        return true;
    }
}
