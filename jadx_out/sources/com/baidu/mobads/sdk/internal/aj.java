package com.baidu.mobads.sdk.internal;

import android.view.ViewGroup;
import com.kwad.sdk.core.scene.URLPackage;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class aj implements w {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f10985a;

    public aj(ae aeVar) {
        this.f10985a = aeVar;
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(boolean z2) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup, JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f10985a.f());
        map.put("banner_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f10985a.g()));
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        map.put("novel_info", jSONObject);
        this.f10985a.a(cz.f11429w, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f10985a.f());
        map.put("interstitial_container", viewGroup);
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        this.f10985a.a(cz.f11427u, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f10985a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f10985a.g()));
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        map.put("novel_info", jSONObject);
        this.f10985a.a(cz.f11428v, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", viewGroup.getContext());
        map.put("banner_container", viewGroup);
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        this.f10985a.a(cz.f11431y, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, ViewGroup viewGroup2, int i2) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f10985a.f());
        map.put("banner_container", viewGroup2);
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f10985a.g()));
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        map.put("backgroundColor", Integer.valueOf(i2));
        this.f10985a.a(cz.f11432z, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String strI = this.f10985a.i("get_cuid");
        String strI2 = this.f10985a.i("get_oaid");
        try {
            jSONObject.put("cuid", strI);
            jSONObject.put("imei", "");
            jSONObject.put("oaid", strI2);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(long j2) {
        this.f10985a.f11174k.a("单次阅读器打开时长 = " + j2);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, int i2) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f10985a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f10985a.g()));
        map.put("entry", 2);
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f10985a.f10974w[0]));
        map.put("count_down", Integer.valueOf(i2));
        this.f10985a.a(cz.f11422A, map);
    }
}
