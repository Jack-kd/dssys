package com.byazt.ktf;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 959, 28})
/* loaded from: classes.dex */
public class hp {
    public static Boolean hp;

    private static boolean hp() {
        if (hp == null) {
            try {
                MediationConstant.AdIsReadyStatus adIsReadyStatus = MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
                hp = Boolean.TRUE;
            } catch (Throwable unused) {
                hp = Boolean.FALSE;
            }
        }
        return hp.booleanValue();
    }

    public static Integer hp(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        try {
            if (hp()) {
                if (obj == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API) {
                    return 1;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_READY) {
                    return 2;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
                    return 3;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
                    return 4;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
