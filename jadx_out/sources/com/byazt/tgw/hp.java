package com.byazt.tgw;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qy.l f25833j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25834l;

    public hp(String str, String str2, String str3) {
        this.hp = str;
        this.f25834l = str2;
        this.jx = str3;
        this.f25833j = new com.byazt.qy.l();
    }

    public String a() {
        com.byazt.qy.l lVar = this.f25833j;
        if (lVar != null) {
            return lVar.l();
        }
        return null;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.qy.l j() {
        return this.f25833j;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f25834l;
    }

    public String toString() {
        return "AdNetworkConfValue{mAdnName='" + this.hp + "'mAppId='" + this.f25834l + "', mAppKey='" + this.jx + "', mGMCustomConfig=" + this.f25833j + '}';
    }

    public boolean w() {
        com.byazt.qy.l lVar = this.f25833j;
        return lVar != null && lVar.j();
    }

    public static hp hp(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("app_id");
        String strOptString2 = jSONObject.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        String strOptString3 = jSONObject.optString("custom_type");
        return !TextUtils.equals(strOptString3, "1") ? new hp(str, strOptString, strOptString2) : new hp(str, strOptString, strOptString2, jSONObject.optString("init_class_name"), jSONObject.optString("banner_class_name"), jSONObject.optString("interstitial_class_name"), jSONObject.optString("reward_class_name"), jSONObject.optString("full_video_class_name"), jSONObject.optString("splash_class_name"), jSONObject.optString("feed_class_name"), jSONObject.optString("draw_class_name"), strOptString3);
    }

    public hp(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.hp = str;
        this.f25834l = str2;
        this.jx = str3;
        this.f25833j = new com.byazt.qy.l(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12);
    }
}
