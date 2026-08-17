package com.byazt.fw;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.uhg.jl;
import com.byazt.ymw.eb;
import java.io.File;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1447, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static int f20193a = 1;
    public static boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f20194j = false;
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static Context f20195l;

    /* renamed from: w, reason: collision with root package name */
    public static jl f20196w;

    public static Context getContext() {
        return f20195l;
    }

    public static String hp() {
        if (TextUtils.isEmpty(jx)) {
            try {
                File file = new File(eb.hp(getContext(), false, null), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                jx = file.getAbsolutePath();
            } catch (Throwable unused) {
            }
        }
        return jx;
    }

    public static boolean j() {
        return hp;
    }

    public static jl jx() {
        if (f20196w == null) {
            jl.hp hpVar = new jl.hp("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f20196w = hpVar.hp(10000L, timeUnit).l(10000L, timeUnit).jx(10000L, timeUnit).hp();
        }
        return f20196w;
    }

    public static boolean l() {
        return f20194j;
    }

    public static int w() {
        return f20193a;
    }

    public static void hp(Context context, String str) {
        f20195l = context.getApplicationContext();
        jx = str;
    }

    public static void hp(boolean z2) {
        f20194j = z2;
    }

    public static void hp(jl jlVar) {
        f20196w = jlVar;
    }
}
