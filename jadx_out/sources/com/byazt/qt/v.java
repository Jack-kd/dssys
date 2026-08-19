package com.byazt.qt;

import android.app.Activity;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public abstract class v extends s {
    public static final String REWARD_EXTRA_KEY_ERROR_CODE = "reward_extra_key_error_code";
    public static final String REWARD_EXTRA_KEY_ERROR_MSG = "reward_extra_key_error_msg";
    public static final String REWARD_EXTRA_KEY_HAS_VIDEO_COMPLETE_REWARD = "reward_extra_key_has_video_complete_reward";
    public static final String REWARD_EXTRA_KEY_IS_SERVER_VERIFY = "reward_extra_key_is_server_verify";
    public static final String REWARD_EXTRA_KEY_REWARD_AMOUNT = "reward_extra_key_reward_amount";
    public static final String REWARD_EXTRA_KEY_REWARD_NAME = "reward_extra_key_reward_name";
    public static final String REWARD_EXTRA_KEY_REWARD_PROPOSE = "reward_extra_key_reward_propose";
    public static final int REWARD_TYPE_CLICK_LANDING = 4;
    public static final int REWARD_TYPE_DEFAULT = 0;
    public static final int REWARD_TYPE_INTERACT = 1;
    public static final int REWARD_TYPE_PLAYABLE = 3;
    public static final int REWARD_TYPE_VIDEO_COMPLETE = 2;
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(120001, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.v.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(v.this.getInteractionType());
            }
        }));
        hpVarHp.hp(120002, com.byazt.kd.j.hp(new Supplier<Map<String, Object>>() { // from class: com.byazt.qt.v.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return v.this.getMediaExtraInfo();
            }
        }));
        hpVarHp.hp(120003, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.v.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(v.this.getRewardVideoAdType());
            }
        }));
        hpVarHp.hp(120004, com.byazt.kd.j.hp(new Supplier<Long>() { // from class: com.byazt.qt.v.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Long get() {
                return Long.valueOf(v.this.getExpirationTimestamp());
            }
        }));
        return hpVarHp.l();
    }

    public abstract long getExpirationTimestamp();

    public abstract int getInteractionType();

    public abstract Map<String, Object> getMediaExtraInfo();

    public abstract com.byazt.qa.a getMediationManager();

    public abstract int getRewardVideoAdType();

    public abstract void setDownloadListener(com.byazt.gu.jx jxVar);

    public abstract void setRewardAdInteractionListener(com.byazt.mv.hp hpVar);

    public abstract void setRewardPlayAgainController(com.byazt.mv.l lVar);

    public abstract void setRewardPlayAgainInteractionListener(com.byazt.mv.hp hpVar);

    public abstract void showRewardVideoAd(Activity activity);

    public abstract void showRewardVideoAd(Activity activity, Object obj, String str);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.qt.s, java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        if (iIntValue == 121109) {
            return getMediationManager();
        }
        switch (iIntValue) {
            case 120101:
                setRewardAdInteractionListener(new com.byazt.mv.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 120102:
                setRewardPlayAgainInteractionListener(new com.byazt.mv.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 120103:
                setRewardPlayAgainController(new com.byazt.mv.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 120104:
                setDownloadListener(new com.byazt.gu.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 120105:
                showRewardVideoAd((Activity) pluginValueSetL.objectValue(0, Activity.class));
                return null;
            case 120106:
                showRewardVideoAd((Activity) pluginValueSetL.objectValue(0, Activity.class), pluginValueSetL.objectValue(1, Object.class), (String) pluginValueSetL.objectValue(2, String.class));
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
