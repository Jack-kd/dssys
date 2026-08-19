package com.byazt.rt;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.byazt.tgw.e;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 1531, 28})
/* loaded from: classes3.dex */
public final class hp {
    public static String hp(String str) {
        return TextUtils.isEmpty(str) ? str : str.equalsIgnoreCase(MediationConstant.ADN_GDT) ? MediationConstant.ADN_GDT : str.equalsIgnoreCase(MediationConstant.ADN_PANGLE) ? MediationConstant.ADN_PANGLE : str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL) ? MediationConstant.ADN_MINTEGRAL : str.equalsIgnoreCase(MediationConstant.ADN_UNITY) ? MediationConstant.ADN_UNITY : str.equalsIgnoreCase("baidu") ? "baidu" : str.equalsIgnoreCase(MediationConstant.ADN_KS) ? MediationConstant.ADN_KS : str.equalsIgnoreCase("sigmob") ? "sigmob" : str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN) ? MediationConstant.ADN_KLEVIN : str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) ? MediationConstant.ADN_XIAOMI : str;
    }

    public static int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.startsWith(MediationConstant.ADN_GDT)) {
            return 3;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_PANGLE)) {
            return 1;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL)) {
            return 4;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_UNITY)) {
            return 5;
        }
        if (str.equalsIgnoreCase("baidu")) {
            return 6;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KS)) {
            return 7;
        }
        if (str.equalsIgnoreCase("sigmob")) {
            return 8;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN)) {
            return 9;
        }
        return str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) ? 10 : -1;
    }

    public static String hp(int i2) {
        if (i2 == 3) {
            return MediationConstant.ADN_GDT;
        }
        if (i2 == 1) {
            return MediationConstant.ADN_PANGLE;
        }
        if (i2 == 4) {
            return MediationConstant.ADN_MINTEGRAL;
        }
        if (i2 == 5) {
            return MediationConstant.ADN_UNITY;
        }
        if (i2 == 6) {
            return "baidu";
        }
        if (i2 == 7) {
            return MediationConstant.ADN_KS;
        }
        if (i2 == 8) {
            return "sigmob";
        }
        if (i2 == 9) {
            return MediationConstant.ADN_KLEVIN;
        }
        if (i2 == 10) {
            return MediationConstant.ADN_XIAOMI;
        }
        if (i2 == -1) {
            return "custom";
        }
        return "";
    }

    public static String l(int i2) {
        switch (i2) {
            case 1:
                return i.o.f2699c;
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                return i.o.f2697a;
            case 6:
            default:
                return "UnKnow";
            case 7:
                return "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                return "InterstitialFull";
        }
    }

    public static String hp(int i2, int i3) {
        switch (i2) {
            case 1:
                return i.o.f2699c;
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                if (i3 == 4) {
                    return i.o.f2697a;
                }
                if (i3 == 5) {
                    return "Draw";
                }
                if (i3 == 3) {
                    return i.o.f2699c;
                }
                return i.o.f2697a;
            case 6:
            default:
                return null;
            case 7:
                if (i3 == 6) {
                    return "RewardVideo";
                }
                return i3 == 7 ? "FullVideo" : i3 == 8 ? "Interstitial" : "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                if (i3 == 1) {
                    return "Interstitial";
                }
                if (i3 == 2) {
                    return "FullVideo";
                }
                return null;
        }
    }

    public static String hp(int i2, int i3, e eVar) {
        switch (i2) {
            case 1:
                return i.o.f2699c;
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                if (i3 != 4) {
                    if (i3 == 5) {
                        return "NativeDraw";
                    }
                    if (i3 == 3) {
                        return i.o.f2699c;
                    }
                    return "Native-自渲染";
                }
                if (eVar == null) {
                    return "Native-自渲染";
                }
                int iE = eVar.e();
                if (TextUtils.equals(eVar.xs(), "baidu") && (iE == 1 || iE == 2)) {
                    return "Native-自渲染";
                }
                if (iE != 1 && iE != 3) {
                    return "Native-自渲染";
                }
                return "Native-模板渲染";
            case 6:
            default:
                return null;
            case 7:
                if (i3 == 6) {
                    return "Reward_RewardVideo";
                }
                if (i3 == 7) {
                    return "Reward_FullVideo";
                }
                if (i3 != 8) {
                    return "Reward_RewardVideo";
                }
                return "Reward_Interstitial";
            case 8:
                return "FullVideo";
            case 9:
                return "NativeDraw";
            case 10:
                if (i3 == 1) {
                    return "InterstitialFull—Interstitial";
                }
                if (i3 == 2) {
                    return "InterstitialFull—FullVideo";
                }
                return null;
        }
    }
}
