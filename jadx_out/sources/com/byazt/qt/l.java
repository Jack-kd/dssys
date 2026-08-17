package com.byazt.qt;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 34})
/* loaded from: classes3.dex */
public abstract class l extends s {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(110001, com.byazt.kd.j.hp(new Supplier<View>() { // from class: com.byazt.qt.l.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public View get() {
                return l.this.getSplashView();
            }
        }));
        hpVarHp.hp(110003, com.byazt.kd.j.hp(new Supplier<View>() { // from class: com.byazt.qt.l.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public View get() {
                return l.this.getSplashCardView();
            }
        }));
        hpVarHp.hp(110004, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.l.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(l.this.getInteractionType());
            }
        }));
        hpVarHp.hp(110005, com.byazt.kd.j.hp(new Supplier<Map<String, Object>>() { // from class: com.byazt.qt.l.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return l.this.getMediaExtraInfo();
            }
        }));
        return hpVarHp.l();
    }

    public abstract int getInteractionType();

    public abstract String getLifecycleId();

    public abstract Map<String, Object> getMediaExtraInfo();

    public abstract com.byazt.qa.eb getMediationManager();

    public abstract View getSplashCardView();

    public abstract View getSplashView();

    public abstract void hideSkipButton();

    public abstract void setDownloadListener(com.byazt.gu.jx jxVar);

    public abstract void setSplashAdListener(com.byazt.mu.hp hpVar);

    public abstract void setSplashCardListener(com.byazt.mu.l lVar);

    public abstract void showSplashCardView(ViewGroup viewGroup, Activity activity);

    public abstract void showSplashView(ViewGroup viewGroup);

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
        switch (iIntValue) {
            case -99999986:
                return values().sparseArray();
            case 110101:
                hideSkipButton();
                return null;
            case 110102:
                setDownloadListener(new com.byazt.gu.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 110103:
                setSplashAdListener(new com.byazt.mu.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 110106:
                setSplashCardListener(new com.byazt.mu.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 110108:
                showSplashView((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class));
                return null;
            case 110109:
                showSplashCardView((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (Activity) pluginValueSetL.objectValue(1, Activity.class));
                return null;
            case 110110:
                return getMediationManager();
            default:
                return super.apply(sparseArray);
        }
    }
}
