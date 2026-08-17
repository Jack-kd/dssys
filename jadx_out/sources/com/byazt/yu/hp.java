package com.byazt.yu;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 28})
/* loaded from: classes3.dex */
public class hp extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28288a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28289w;

    public hp(Context context, s sVar) {
        super(true, false);
        this.f28289w = context;
        this.f28288a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException, SecurityException {
        if (!TextUtils.isEmpty(this.f28288a.r())) {
            jSONObject.put("ab_client", this.f28288a.r());
        }
        if (!TextUtils.isEmpty(this.f28288a.ec())) {
            if (com.byazt.gt.e.f20599l) {
                com.byazt.gt.e.hp("init config has abversion:" + this.f28288a.ec(), null);
            }
            jSONObject.put("ab_version", this.f28288a.ec());
        }
        if (!TextUtils.isEmpty(this.f28288a.pu())) {
            jSONObject.put("ab_group", this.f28288a.pu());
        }
        if (TextUtils.isEmpty(this.f28288a.ky())) {
            return true;
        }
        jSONObject.put("ab_feature", this.f28288a.ky());
        return true;
    }
}
