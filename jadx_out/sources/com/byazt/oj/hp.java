package com.byazt.oj;

import android.app.Activity;
import android.app.Dialog;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.qt.eb;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1810, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(268101, com.byazt.kd.j.hp(new Supplier<j>() { // from class: com.byazt.oj.hp.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public j get() {
                return hp.this.getNativeAdAppInfo();
            }
        }));
        return hpVarHp.l();
    }

    public abstract String getActionText();

    public abstract int getAdImageMode();

    public abstract String getDescription();

    public abstract jx getDislikeDialog(Activity activity);

    public abstract jx getDislikeDialog(Activity activity, Map<String, Object> map);

    public abstract eb getDislikeDialog(Dialog dialog, Integer[] numArr);

    public abstract eb getDislikeDialog2(Activity activity);

    public abstract com.byazt.qt.j getDislikeInfo();

    public abstract String getIconUrl();

    public abstract List<String> getImageList();

    public abstract String getImageUrl();

    public abstract int getInteractionType();

    public abstract j getNativeAdAppInfo();

    public abstract String getSource();

    public abstract double getStarRating();

    public abstract String getTitle();

    public abstract boolean hasDislike();

    public abstract void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.tl.j jVar);

    public abstract void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar);

    public abstract void setDislikeDialog(Dialog dialog, Integer[] numArr);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    @Override // java.util.function.Function
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
            case 268001:
                return getTitle();
            case 268002:
                return getDescription();
            case 268003:
                return getIconUrl();
            case 268004:
                return getImageUrl();
            case 268005:
                return getActionText();
            case 268006:
                return Double.class.cast(Double.valueOf(getStarRating()));
            case 268007:
                return getImageList();
            case 268008:
                return getSource();
            case 268009:
                return Integer.class.cast(Integer.valueOf(getAdImageMode()));
            case 268010:
                return Integer.class.cast(Integer.valueOf(getInteractionType()));
            case 268011:
                registerView((Activity) pluginValueSetL.objectValue(0, Activity.class), (ViewGroup) pluginValueSetL.objectValue(1, ViewGroup.class), (List) pluginValueSetL.objectValue(2, List.class), (List) pluginValueSetL.objectValue(3, List.class), (List) pluginValueSetL.objectValue(4, List.class), new com.byazt.tl.j((Function) pluginValueSetL.objectValue(5, Function.class)));
                return null;
            case 268012:
                return Boolean.class.cast(Boolean.valueOf(hasDislike()));
            default:
                switch (iIntValue) {
                    case 268016:
                        setDislikeCallback((Activity) pluginValueSetL.objectValue(0, Activity.class), new com.byazt.cg.hp((Function) pluginValueSetL.objectValue(1, Function.class)));
                        return null;
                    case 268017:
                        setDislikeDialog((Dialog) pluginValueSetL.objectValue(0, Dialog.class), (Integer[]) pluginValueSetL.arrayValue(1, Integer.class));
                        return null;
                    case 268018:
                        return getDislikeDialog2((Activity) pluginValueSetL.objectValue(0, Activity.class));
                    case 268019:
                        return getDislikeDialog((Dialog) pluginValueSetL.objectValue(0, Dialog.class), (Integer[]) pluginValueSetL.arrayValue(1, Integer.class));
                    case 268020:
                        return getDislikeInfo();
                    default:
                        switch (iIntValue) {
                            case 268102:
                                return getDislikeDialog((Activity) pluginValueSetL.objectValue(0, Activity.class));
                            case 268103:
                                return getDislikeDialog((Activity) pluginValueSetL.objectValue(0, Activity.class), (Map<String, Object>) pluginValueSetL.objectValue(1, Map.class));
                            default:
                                return null;
                        }
                }
        }
    }
}
