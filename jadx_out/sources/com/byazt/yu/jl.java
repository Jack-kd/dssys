package com.byazt.yu;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 19})
/* loaded from: classes3.dex */
public class jl extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28292a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28293w;

    public jl(Context context, s sVar) {
        super(true, false);
        this.f28293w = context;
        this.f28292a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        String strL = com.byazt.gt.hp.l();
        if (TextUtils.isEmpty(strL)) {
            return true;
        }
        jSONObject.put(bv.f48874A, strL);
        return true;
    }
}
