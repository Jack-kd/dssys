package com.byazt.bki;

import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 732, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public abstract class gu {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18566j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f18567l;

    public int hp() {
        return this.hp;
    }

    @Nullable
    public String j() {
        return this.f18566j;
    }

    @Nullable
    public String jx() {
        return this.jx;
    }

    @Nullable
    public String l() {
        return this.f18567l;
    }

    public String w() {
        switch (this.hp) {
            case 1:
                return MediationConstant.ADN_PANGLE;
            case 2:
            default:
                return "";
            case 3:
                return MediationConstant.ADN_GDT;
            case 4:
                return MediationConstant.ADN_MINTEGRAL;
            case 5:
                return MediationConstant.ADN_UNITY;
            case 6:
                return "baidu";
            case 7:
                return MediationConstant.ADN_KS;
            case 8:
                return "sigmob";
            case 9:
                return MediationConstant.ADN_KLEVIN;
            case 10:
                return MediationConstant.ADN_XIAOMI;
        }
    }
}
