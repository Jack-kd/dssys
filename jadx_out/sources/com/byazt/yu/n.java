package com.byazt.yu;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28299a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28300w;

    public n(Context context, s sVar) {
        super(true, false);
        this.f28300w = context;
        this.f28299a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException, SecurityException {
        TelephonyManager telephonyManager = (TelephonyManager) this.f28300w.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                q.hp(jSONObject, bv.f48889P, telephonyManager.getNetworkOperatorName());
                q.hp(jSONObject, "mcc_mnc", telephonyManager.getNetworkOperator());
                q.hp(jSONObject, "udid", this.f28299a.kg() ? com.byazt.gt.a.hp(telephonyManager) : this.f28299a.ms());
                return true;
            } catch (Exception e2) {
                com.byazt.gt.e.l(e2);
            }
        }
        return false;
    }
}
