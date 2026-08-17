package com.byazt.yu;

import android.annotation.SuppressLint;
import android.content.Context;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 302})
/* loaded from: classes3.dex */
public class zy extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28317w;

    public zy(Context context) {
        super(true, true);
        this.f28317w = context;
    }

    @Override // com.byazt.yu.jx
    @SuppressLint({"MissingPermission"})
    public boolean hp(JSONObject jSONObject) throws JSONException {
        q.hp(jSONObject, bv.f48890Q, com.byazt.gt.w.hp(this.f28317w));
        return true;
    }
}
