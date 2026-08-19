package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.kwad.sdk.core.scene.URLPackage;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class dc implements w {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cz f11446a;

    public dc(cz czVar) {
        this.f11446a = czVar;
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f11446a.f());
        map.put("interstitial_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        this.f11446a.a(cz.f11427u, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup, JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f11446a.f());
        map.put("banner_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f11446a.g()));
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("novel_info", jSONObject);
        this.f11446a.a(cz.f11429w, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f11446a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f11446a.g()));
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("novel_info", jSONObject);
        this.f11446a.a(cz.f11428v, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", viewGroup.getContext());
        map.put("banner_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("isnight", Boolean.valueOf(this.f11446a.x()));
        this.f11446a.a(cz.f11431y, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, ViewGroup viewGroup2, int i2) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f11446a.f());
        map.put("banner_container", viewGroup2);
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f11446a.g()));
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("backgroundColor", Integer.valueOf(i2));
        this.f11446a.a(cz.f11432z, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String strI = this.f11446a.i("get_cuid");
        String strI2 = this.f11446a.i("get_oaid");
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
        if (this.f11446a.f11440K != null) {
            this.f11446a.f11440K.onReadTime(j2);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, int i2) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f11446a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f11446a.g()));
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("count_down", Integer.valueOf(i2));
        this.f11446a.a(cz.f11422A, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(boolean z2) throws JSONException {
        RelativeLayout relativeLayout;
        if (this.f11446a.f11441L == null || (relativeLayout = (RelativeLayout) this.f11446a.f11441L.get()) == null) {
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", (Activity) this.f11446a.f11172i);
        map.put("interstitial_container", null);
        map.put("banner_container", relativeLayout);
        map.put("entry", Integer.valueOf(this.f11446a.f11437G));
        map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11446a.f11438H));
        map.put("novel_id", this.f11446a.f11439I);
        map.put("isnight", Boolean.valueOf(this.f11446a.x()));
        this.f11446a.a(cz.f11432z, map);
    }
}
