package com.byazt.qt;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 302})
/* loaded from: classes3.dex */
public abstract class zy extends s {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(140001, com.byazt.kd.j.hp(new Supplier<jl>() { // from class: com.byazt.qt.zy.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public jl get() {
                return zy.this.getVideoCoverImage();
            }
        }));
        hpVarHp.hp(140002, com.byazt.kd.j.hp(new Supplier<Bitmap>() { // from class: com.byazt.qt.zy.11
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Bitmap get() {
                return zy.this.getAdLogo();
            }
        }));
        hpVarHp.hp(140003, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.zy.12
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return zy.this.getTitle();
            }
        }));
        hpVarHp.hp(140004, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.zy.13
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return zy.this.getDescription();
            }
        }));
        hpVarHp.hp(140018, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.zy.14
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return zy.this.getButtonText();
            }
        }));
        hpVarHp.hp(140005, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.zy.15
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(zy.this.getAppScore());
            }
        }));
        hpVarHp.hp(140006, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.zy.16
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(zy.this.getAppCommentNum());
            }
        }));
        hpVarHp.hp(140007, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.zy.17
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(zy.this.getAppSize());
            }
        }));
        hpVarHp.hp(140008, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.zy.18
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return zy.this.getSource();
            }
        }));
        hpVarHp.hp(140009, com.byazt.kd.j.hp(new Supplier<jl>() { // from class: com.byazt.qt.zy.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public jl get() {
                return zy.this.getIcon();
            }
        }));
        hpVarHp.hp(140010, com.byazt.kd.j.hp(new Supplier<List<jl>>() { // from class: com.byazt.qt.zy.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public List<jl> get() {
                return zy.this.getImageList();
            }
        }));
        hpVarHp.hp(140011, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.zy.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(zy.this.getInteractionType());
            }
        }));
        hpVarHp.hp(140012, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.zy.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(zy.this.getImageMode());
            }
        }));
        hpVarHp.hp(140013, com.byazt.kd.j.hp(new Supplier<j>() { // from class: com.byazt.qt.zy.6
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public j get() {
                return zy.this.getDislikeInfo();
            }
        }));
        hpVarHp.hp(140014, com.byazt.kd.j.hp(new Supplier<jx>() { // from class: com.byazt.qt.zy.7
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public jx get() {
                return zy.this.getComplianceInfo();
            }
        }));
        hpVarHp.hp(140015, com.byazt.kd.j.hp(new Supplier<w>() { // from class: com.byazt.qt.zy.8
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public w get() {
                return zy.this.getDownloadStatusController();
            }
        }));
        hpVarHp.hp(140016, com.byazt.kd.j.hp(new Supplier<View>() { // from class: com.byazt.qt.zy.9
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public View get() {
                return zy.this.getAdView();
            }
        }));
        hpVarHp.hp(140017, com.byazt.kd.j.hp(new Supplier<Map<String, Object>>() { // from class: com.byazt.qt.zy.10
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return zy.this.getMediaExtraInfo();
            }
        }));
        return hpVarHp.l();
    }

    public abstract void destroy();

    public abstract Bitmap getAdLogo();

    public abstract View getAdView();

    public abstract int getAppCommentNum();

    public abstract int getAppScore();

    public abstract int getAppSize();

    public abstract String getButtonText();

    public abstract jx getComplianceInfo();

    public abstract String getDescription();

    public abstract eb getDislikeDialog(Activity activity);

    public abstract eb getDislikeDialog(Dialog dialog, Integer[] numArr);

    public abstract j getDislikeInfo();

    public abstract w getDownloadStatusController();

    public abstract jl getIcon();

    public abstract List<jl> getImageList();

    public abstract int getImageMode();

    public abstract int getInteractionType();

    public abstract String getLifecycleId();

    public abstract Map<String, Object> getMediaExtraInfo();

    public abstract com.byazt.qa.w getMediationManager();

    public abstract String getSource();

    public abstract String getTitle();

    public abstract jl getVideoCoverImage();

    public abstract void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.pt.hp hpVar, com.byazt.tl.j jVar);

    public abstract void registerViewForInteraction(ViewGroup viewGroup, View view, com.byazt.pt.hp hpVar);

    public abstract void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, com.byazt.pt.hp hpVar);

    public abstract void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, com.byazt.pt.hp hpVar);

    public abstract void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, com.byazt.pt.hp hpVar);

    public abstract void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, com.byazt.pt.hp hpVar);

    public abstract void render();

    public abstract void setActivityForDownloadApp(Activity activity);

    public abstract void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar);

    public abstract void setDislikeDialog(Dialog dialog, Integer[] numArr);

    public abstract void setDownloadListener(com.byazt.gu.jx jxVar);

    public abstract void setEasyPlayWidgetListener(com.byazt.pt.l lVar);

    public abstract void setExpressRenderListener(com.byazt.pt.jx jxVar);

    public abstract void showInteractionExpressAd(Activity activity);

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
            case 140101:
                return getDislikeDialog((Activity) pluginValueSetL.objectValue(0, Activity.class));
            case 140102:
                Dialog dialog = (Dialog) pluginValueSetL.objectValue(0, Dialog.class);
                Integer[] numArr = (Integer[]) pluginValueSetL.arrayValue(1, Integer.class);
                if (numArr == null) {
                    numArr = new Integer[0];
                }
                return getDislikeDialog(dialog, numArr);
            case 140103:
                registerViewForInteraction((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (View) pluginValueSetL.objectValue(1, View.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(2, Function.class)));
                return null;
            case 140104:
                registerViewForInteraction((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (List) pluginValueSetL.objectValue(1, List.class), (List) pluginValueSetL.objectValue(2, List.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(3, Function.class)));
                return null;
            case 140105:
                registerViewForInteraction((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (List) pluginValueSetL.objectValue(1, List.class), (List) pluginValueSetL.objectValue(2, List.class), (View) pluginValueSetL.objectValue(3, View.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(4, Function.class)));
                return null;
            case 140106:
                registerViewForInteraction((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (List) pluginValueSetL.objectValue(1, List.class), (List) pluginValueSetL.objectValue(2, List.class), (List) pluginValueSetL.objectValue(3, List.class), (View) pluginValueSetL.objectValue(4, View.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(5, Function.class)));
                return null;
            case 140107:
                registerViewForInteraction((ViewGroup) pluginValueSetL.objectValue(0, ViewGroup.class), (List<View>) pluginValueSetL.objectValue(1, List.class), (List<View>) pluginValueSetL.objectValue(2, List.class), (List<View>) pluginValueSetL.objectValue(3, List.class), (List<View>) pluginValueSetL.objectValue(4, List.class), (View) pluginValueSetL.objectValue(5, View.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(6, Function.class)));
                return null;
            case 140108:
                setDownloadListener(new com.byazt.gu.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 140109:
                setActivityForDownloadApp((Activity) pluginValueSetL.objectValue(0, Activity.class));
                return null;
            case 140110:
                render();
                return null;
            case 140111:
                setExpressRenderListener(new com.byazt.pt.jx((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 140112:
                setDislikeCallback((Activity) pluginValueSetL.objectValue(0, Activity.class), new com.byazt.cg.hp((Function) pluginValueSetL.objectValue(1, Function.class)));
                return null;
            case 140113:
                Dialog dialog2 = (Dialog) pluginValueSetL.objectValue(0, Dialog.class);
                Integer[] numArr2 = (Integer[]) pluginValueSetL.arrayValue(1, Integer.class);
                if (numArr2 == null) {
                    numArr2 = new Integer[0];
                }
                setDislikeDialog(dialog2, numArr2);
                return null;
            case 140114:
                destroy();
                return null;
            case 140115:
                pluginValueSetL.objectValue(0, Activity.class);
                return null;
            case 140116:
                return getMediationManager();
            case 140117:
                registerViewForInteraction((Activity) pluginValueSetL.objectValue(0, Activity.class), (ViewGroup) pluginValueSetL.objectValue(1, ViewGroup.class), (List<View>) pluginValueSetL.objectValue(2, List.class), (List<View>) pluginValueSetL.objectValue(3, List.class), (List<View>) pluginValueSetL.objectValue(4, List.class), new com.byazt.pt.hp((Function) pluginValueSetL.objectValue(5, Function.class)), new com.byazt.tl.j((Function) pluginValueSetL.objectValue(6, Function.class)));
                return null;
            case 140118:
                uploadDislikeEvent((String) pluginValueSetL.objectValue(0, String.class));
                return null;
            case 140119:
                setEasyPlayWidgetListener(new com.byazt.pt.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
