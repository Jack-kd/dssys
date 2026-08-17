package com.byazt.jz;

import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMModuleRegister;

@com.byazt.kj.hp(hp = {0, 1, 40, 670})
/* loaded from: classes.dex */
public final class d {

    /* renamed from: l, reason: collision with root package name */
    public static final int f21857l = 7643;
    public static final Boolean hp = Boolean.TRUE;
    public static boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public static int f21856j = 7643;

    /* renamed from: w, reason: collision with root package name */
    public static String f21860w = "7.6.4.3";

    /* renamed from: a, reason: collision with root package name */
    public static int f21854a = 1000;
    public static boolean eb = true;

    /* renamed from: s, reason: collision with root package name */
    public static String f21859s = "main";

    /* renamed from: q, reason: collision with root package name */
    public static boolean f21858q = false;

    /* renamed from: e, reason: collision with root package name */
    public static String f21855e = "6.6.0.0";

    public static String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(f21859s);
        sb.append(hp() ? "_plugin" : "");
        sb.append(f21858q ? "_open" : "_close");
        return sb.toString();
    }

    public static String eb() {
        return hp("com.byted.pangle", 7643);
    }

    public static boolean hp() {
        return true;
    }

    public static boolean j() {
        return false;
    }

    public static boolean jx() {
        return com.byazt.dnb.eb.l();
    }

    public static boolean l() {
        return false;
    }

    public static boolean s() {
        return TextUtils.equals(UMModuleRegister.INNER, f21859s);
    }

    public static boolean w() {
        return com.byazt.cwe.l.hp().isTTVideoOk();
    }

    public static String hp(String str, int i2) {
        return "";
    }
}
