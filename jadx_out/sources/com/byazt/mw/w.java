package com.byazt.mw;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes3.dex */
public enum w {
    TRANSLATE("translate", "translation", SQLiteMTAHelper.TABLE_POINT),
    TRANSLATE_X("translateX", "translationX", "float"),
    TRANSLATE_Y("translateY", "translationY", "float"),
    ROTATE_X("rotateX", "rotationX", "float"),
    ROTATE_Y("rotateY", "rotationY", "float"),
    ROTATE_Z("rotateZ", C1244a.f35650B, "float"),
    SCALE("scale", "scale", SQLiteMTAHelper.TABLE_POINT),
    SCALE_X("scaleX", "scaleX", "float"),
    SCALE_Y("scaleY", "scaleY", "float"),
    ALPHA("opacity", "alpha", "float"),
    BACKGROUND_COLOR("backgroundColor", "backgroundColor", IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL),
    BORDER_RADIUS("borderRadius", "borderRadius", "float"),
    RIPPLE("ripple", "ripple", "float"),
    SHINE("shine", "shine", "float");


    /* renamed from: u, reason: collision with root package name */
    public final String f23321u;

    /* renamed from: v, reason: collision with root package name */
    public final String f23322v;
    public final String xs;

    w(String str, String str2, String str3) {
        this.f23322v = str;
        this.f23321u = str2;
        this.xs = str3;
    }

    public String hp() {
        return this.f23322v;
    }

    public String jx() {
        return this.xs;
    }

    public String l() {
        return this.f23321u;
    }

    public static w hp(String str) {
        str.getClass();
        switch (str) {
            case "translateX":
                return TRANSLATE_X;
            case "translateY":
                return TRANSLATE_Y;
            case "opacity":
                return ALPHA;
            case "ripple":
                return RIPPLE;
            case "scaleX":
                return SCALE_X;
            case "scaleY":
                return SCALE_Y;
            case "scale":
                return SCALE;
            case "translate":
                return TRANSLATE;
            case "backgroundColor":
                return BACKGROUND_COLOR;
            case "borderRadius":
                return BORDER_RADIUS;
            case "rotateX":
                return ROTATE_X;
            case "rotateY":
                return ROTATE_Y;
            case "rotateZ":
                return ROTATE_Z;
            default:
                return TRANSLATE_X;
        }
    }
}
