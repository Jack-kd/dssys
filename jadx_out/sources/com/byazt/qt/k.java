package com.byazt.qt;

import android.app.Activity;
import android.app.Dialog;
import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 594, 42})
/* loaded from: classes3.dex */
public abstract class k extends s {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(150001, com.byazt.kd.j.hp(new Supplier<View>() { // from class: com.byazt.qt.k.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public View get() {
                return k.this.getExpressAdView();
            }
        }));
        hpVarHp.hp(150002, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.k.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(k.this.getImageMode());
            }
        }));
        hpVarHp.hp(150003, com.byazt.kd.j.hp(new Supplier<j>() { // from class: com.byazt.qt.k.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public j get() {
                return k.this.getDislikeInfo();
            }
        }));
        hpVarHp.hp(150004, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.k.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(k.this.getInteractionType());
            }
        }));
        hpVarHp.hp(150005, com.byazt.kd.j.hp(new Supplier<Map<String, Object>>() { // from class: com.byazt.qt.k.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return k.this.getMediaExtraInfo();
            }
        }));
        return hpVarHp.l();
    }

    public abstract void destroy();

    public abstract eb getDislikeDialog(Activity activity);

    public abstract j getDislikeInfo();

    public abstract View getExpressAdView();

    public abstract int getImageMode();

    public abstract int getInteractionType();

    public abstract String getLifecycleId();

    public abstract Map<String, Object> getMediaExtraInfo();

    public abstract com.byazt.qa.w getMediationManager();

    public abstract void registerClickableRects(JSONObject jSONObject);

    public abstract void render();

    public abstract void setCanInterruptVideoPlay(boolean z2);

    public abstract void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar);

    public abstract void setDislikeDialog(Dialog dialog, Integer[] numArr);

    public abstract void setDownloadListener(com.byazt.gu.jx jxVar);

    public abstract void setExpressInteractionListener(com.byazt.qrd.hp hpVar);

    public abstract void setExpressInteractionListener(com.byazt.qrd.l lVar);

    public abstract void setSlideIntervalTime(int i2);

    public abstract void setVideoAdListener(com.byazt.qrd.jx jxVar);

    public abstract void showInteractionExpressAd(Activity activity);

    public abstract void unRegisterRects();

    public abstract void uploadDislikeEvent(String str);

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
        switch (iIntValue) {
            case 150101:
                setExpressInteractionListener(new com.byazt.qrd.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 150102:
                setExpressInteractionListener(new com.byazt.qrd.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 150103:
                setDownloadListener(new com.byazt.gu.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 150104:
                render();
                return null;
            case 150105:
                destroy();
                return null;
            case 150106:
                setDislikeCallback((Activity) pluginValueSetL.objectValue(0, Activity.class), new com.byazt.cg.hp((Function) pluginValueSetL.objectValue(1, Function.class)));
                return null;
            case 150107:
                Dialog dialog = (Dialog) pluginValueSetL.objectValue(0, Dialog.class);
                Integer[] numArr = (Integer[]) pluginValueSetL.arrayValue(1, Integer.class);
                if (numArr == null) {
                    numArr = new Integer[0];
                }
                setDislikeDialog(dialog, numArr);
                return null;
            case 150108:
                return getDislikeDialog((Activity) pluginValueSetL.objectValue(0, Activity.class));
            case 150109:
                pluginValueSetL.objectValue(0, Activity.class);
                return null;
            case 150110:
                setSlideIntervalTime(pluginValueSetL.intValue(0));
                return null;
            case 150111:
                setVideoAdListener(new com.byazt.qrd.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 150112:
                setCanInterruptVideoPlay(pluginValueSetL.booleanValue(0));
                return null;
            case 150113:
                return getMediationManager();
            case 150114:
                uploadDislikeEvent((String) pluginValueSetL.objectValue(0, String.class));
                return null;
            case 150115:
                registerClickableRects((JSONObject) pluginValueSetL.objectValue(0, JSONObject.class));
                return null;
            case 150116:
                unRegisterRects();
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
