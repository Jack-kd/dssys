package com.byazt.ktf;

import com.bytedance.sdk.openadsdk.TTAdLoadType;

@com.byazt.kj.hp(hp = {0, 1, 959, 54})
/* loaded from: classes.dex */
public class a {
    public static Boolean hp;

    private static boolean hp() {
        if (hp == null) {
            try {
                TTAdLoadType tTAdLoadType = TTAdLoadType.UNKNOWN;
                hp = Boolean.TRUE;
            } catch (Throwable unused) {
                hp = Boolean.FALSE;
            }
        }
        return hp.booleanValue();
    }

    public static int hp(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (hp()) {
            try {
                if (TTAdLoadType.LOAD == obj) {
                    return 3;
                }
                if (TTAdLoadType.PRELOAD == obj) {
                    return 1;
                }
                TTAdLoadType tTAdLoadType = TTAdLoadType.UNKNOWN;
            } catch (Throwable unused) {
            }
        }
        return -1;
    }
}
