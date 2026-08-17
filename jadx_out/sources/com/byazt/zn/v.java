package com.byazt.zn;

import android.text.TextUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 442, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {
    public static volatile String hp;

    /* renamed from: l, reason: collision with root package name */
    public static String f28562l;

    public static void hp(String str) {
        if (com.byazt.lk.hp.hp() != null) {
            com.byazt.lk.hp.hp().hp(str);
        }
        if (TextUtils.isEmpty(str) || str.equals(hp)) {
            return;
        }
        com.byazt.jz.l.hp().put("did", str);
        hp = str;
    }

    public static String hp() {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        String str = com.byazt.jz.l.hp().get("did", f28562l);
        hp = str;
        return str;
    }
}
