package com.byazt.ta;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.LocationProvider;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS, 30})
/* loaded from: classes3.dex */
public class jx implements LocationProvider {
    public ValueSet hp;

    public jx(ValueSet valueSet) {
        this.hp = valueSet == null ? com.byazt.xi.jx.hp : valueSet;
    }

    public static SparseArray<Object> hp(LocationProvider locationProvider) {
        if (locationProvider == null) {
            return null;
        }
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        jxVarHp.hp(262001, locationProvider.getLatitude());
        jxVarHp.hp(262002, locationProvider.getLongitude());
        return jxVarHp.l().sparseArray();
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.hp.doubleValue(262001);
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.hp.doubleValue(262002);
    }
}
