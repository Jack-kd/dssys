package com.byazt.ta;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.AdConfig;
import java.util.Map;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS, 28})
/* loaded from: classes3.dex */
public class hp {
    public static SparseArray<Object> hp(final AdConfig adConfig) {
        if (adConfig == null) {
            return new SparseArray<>();
        }
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        jxVarHp.hp(261001, adConfig.getAppId());
        jxVarHp.hp(261002, adConfig.getAppName());
        jxVarHp.hp(261003, adConfig.isPaid());
        jxVarHp.hp(261004, adConfig.getKeywords());
        jxVarHp.hp(261005, adConfig.getData());
        jxVarHp.hp(261006, adConfig.getTitleBarTheme());
        jxVarHp.hp(261007, adConfig.isAllowShowNotify());
        jxVarHp.hp(261008, adConfig.isDebug());
        jxVarHp.hp(261009, adConfig.getDirectDownloadNetworkType());
        jxVarHp.hp(261011, adConfig.isSupportMultiProcess());
        jxVarHp.hp(261012, j.hp(adConfig.getCustomController()));
        jxVarHp.hp(261013, new Supplier<Integer>() { // from class: com.byazt.ta.hp.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(adConfig.getPluginUpdateConfig());
            }
        });
        jxVarHp.hp(261014, new Supplier<Integer>() { // from class: com.byazt.ta.hp.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(adConfig.getAgeGroup());
            }
        });
        jxVarHp.hp(261015, new Supplier<Integer>() { // from class: com.byazt.ta.hp.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(adConfig.getThemeStatus());
            }
        });
        jxVarHp.hp(261016, adConfig.getMediationConfig() != null ? com.byazt.hd.hp.hp(adConfig.getMediationConfig()) : null);
        jxVarHp.hp(261017, adConfig.isUseMediation());
        jxVarHp.hp(261018, new Supplier<Map<String, Object>>() { // from class: com.byazt.ta.hp.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return adConfig.getInitExtra();
            }
        });
        return jxVarHp.l().sparseArray();
    }
}
