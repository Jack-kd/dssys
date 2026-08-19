package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.NativeCPUManager;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class ah implements NativeCPUManager.DataPostBackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Object f10980a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ae f10981b;

    public ah(ae aeVar, Object obj) {
        this.f10981b = aeVar;
        this.f10980a = obj;
    }

    @Override // com.baidu.mobads.sdk.api.NativeCPUManager.DataPostBackListener
    public void postback(JSONObject jSONObject) {
        Object obj = this.f10980a;
        if (obj instanceof Activity) {
            View viewFindViewById = ((Activity) obj).findViewById(17);
            if (viewFindViewById instanceof WebView) {
                this.f10981b.a((WebView) viewFindViewById, jSONObject);
            }
        }
    }
}
