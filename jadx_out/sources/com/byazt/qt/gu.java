package com.byazt.qt;

import android.app.Activity;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public abstract class gu extends s {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(130001, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.gu.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(gu.this.getInteractionType());
            }
        }));
        hpVarHp.hp(130002, com.byazt.kd.j.hp(new Supplier<Map<String, Object>>() { // from class: com.byazt.qt.gu.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return gu.this.getMediaExtraInfo();
            }
        }));
        hpVarHp.hp(130003, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.gu.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(gu.this.getFullVideoAdType());
            }
        }));
        hpVarHp.hp(130004, com.byazt.kd.j.hp(new Supplier<Long>() { // from class: com.byazt.qt.gu.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Long get() {
                return Long.valueOf(gu.this.getExpirationTimestamp());
            }
        }));
        return hpVarHp.l();
    }

    public abstract long getExpirationTimestamp();

    public abstract int getFullVideoAdType();

    public abstract int getInteractionType();

    public abstract Map<String, Object> getMediaExtraInfo();

    public abstract com.byazt.qa.j getMediationManager();

    public abstract void setDownloadListener(com.byazt.gu.jx jxVar);

    public abstract void setFullScreenVideoAdInteractionListener(com.byazt.pk.hp hpVar);

    public abstract void showFullScreenVideoAd(Activity activity);

    public abstract void showFullScreenVideoAd(Activity activity, Object obj, String str);

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
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        if (iIntValue == 130106) {
            return getMediationManager();
        }
        switch (iIntValue) {
            case 130101:
                Function function = (Function) pluginValueSetL.objectValue(0, Function.class);
                setFullScreenVideoAdInteractionListener(pluginValueSetL.intValue(1) == 1 ? new com.byazt.lg.l(function) : new com.byazt.pk.hp(function));
                return null;
            case 130102:
                setDownloadListener(new com.byazt.gu.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 130103:
                showFullScreenVideoAd((Activity) pluginValueSetL.objectValue(0, Activity.class));
                return null;
            case 130104:
                showFullScreenVideoAd((Activity) pluginValueSetL.objectValue(0, Activity.class), pluginValueSetL.objectValue(1, Object.class), (String) pluginValueSetL.objectValue(2, String.class));
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
