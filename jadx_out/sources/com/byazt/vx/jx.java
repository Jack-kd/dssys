package com.byazt.vx;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.ik.a;

@com.byazt.kj.hp(hp = {0, 1, 1122, 30})
/* loaded from: classes3.dex */
public class jx {
    public static boolean hp() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb = new StringBuilder("abi-support: ");
        sb.append(strArr == null ? "null" : strArr.toString());
        a.hp(sb.toString());
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && str.toLowerCase().contains("arm64-v8a")) {
                return true;
            }
        }
        return false;
    }

    public static boolean jx() {
        a.l("isOA8A: true");
        return true;
    }

    public static boolean l() {
        return jx() && !hp();
    }
}
