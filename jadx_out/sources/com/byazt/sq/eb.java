package com.byazt.sq;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1453, 94})
/* loaded from: classes3.dex */
public class eb {
    public static boolean hp(String str) {
        return TextUtils.equals(str, "fullscreen_interstitial_ad") || TextUtils.equals(str, "rewarded_video");
    }

    public static boolean l(String str) {
        return com.byazt.wkx.j.hp() && hp(str);
    }
}
