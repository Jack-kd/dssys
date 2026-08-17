package com.byazt.yu;

import android.content.SharedPreferences;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 65})
/* loaded from: classes3.dex */
public class vv extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final s f28315w;

    public vv(s sVar) {
        super(true, false, false);
        this.f28315w = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        SharedPreferences sharedPreferencesW = this.f28315w.w();
        String string = sharedPreferencesW.getString("install_id", null);
        String string2 = sharedPreferencesW.getString("device_id", null);
        String string3 = sharedPreferencesW.getString("ssid", null);
        q.hp(jSONObject, "install_id", string);
        q.hp(jSONObject, "device_id", string2);
        q.hp(jSONObject, "ssid", string3);
        long j2 = 0;
        long j3 = sharedPreferencesW.getLong(DeepLinkPresetEvent.UMEventParamRegisterTime, 0L);
        if ((q.l(string) && q.l(string2)) || j3 == 0) {
            j2 = j3;
        } else {
            sharedPreferencesW.edit().putLong(DeepLinkPresetEvent.UMEventParamRegisterTime, 0L).apply();
        }
        jSONObject.put(DeepLinkPresetEvent.UMEventParamRegisterTime, j2);
        return true;
    }
}
