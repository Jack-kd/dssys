package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class f1 {
    public static fc a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        switch (str) {
            case "complain":
                return new e1();
            case "conditionclose":
                return new l1();
            case "close":
                return new d1();
            case "voiceswitch":
                return new k1();
            case "downloadInfo":
                return new h1();
            default:
                if (i2 == 0) {
                    return new g1();
                }
                if (i2 == 1) {
                    return new i1();
                }
                if (i2 == 2) {
                    return new j1();
                }
                return null;
        }
    }
}
