package com.byazt.ton;

@com.byazt.kj.hp(hp = {0, 1, 1140, 34})
/* loaded from: classes3.dex */
public class l {
    public static boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f25970l;

    public static void hp(String str) {
        if (!f25970l) {
            com.byazt.ry.j.hp(str, "sp_multi_info").put("is_support_multi_process", true);
        }
        hp = true;
        f25970l = true;
    }

    public static void l(String str) {
        if (f25970l) {
            com.byazt.ry.j.hp(str, "sp_multi_info").put("is_support_multi_process", false);
        }
        hp = false;
    }

    public static boolean hp() {
        if (!f25970l) {
            hp = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "sp_multi_info").get("is_support_multi_process", false);
            f25970l = true;
        }
        return hp;
    }
}
