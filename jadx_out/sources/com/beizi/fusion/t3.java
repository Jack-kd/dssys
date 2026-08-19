package com.beizi.fusion;

import android.content.Context;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class t3 {

    /* renamed from: a, reason: collision with root package name */
    private static u3 f16291a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f16292b = false;

    public static void a(Context context, String str, u3 u3Var) {
        f16291a = u3Var;
        b4.j().a(context, str);
    }

    public static boolean b() {
        return f16292b;
    }

    public static void c(String str) {
        b4.j().c(str);
    }

    public static void d(String str) {
        b4.j().d(str);
    }

    public static void e(String str) {
        b4.j().f13046g = str;
    }

    public static void b(String str) {
        b4.j().b(str);
    }

    public static u3 a() {
        return f16291a;
    }

    public static void a(boolean z2) {
        f16292b = z2;
    }

    public static void a(List list) {
        b4.j().a(list);
    }

    public static String a(String str) {
        return b4.j().a(str);
    }
}
