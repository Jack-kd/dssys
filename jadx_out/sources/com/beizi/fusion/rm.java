package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class rm {

    /* renamed from: a, reason: collision with root package name */
    private static int f15992a;

    public enum a {
        LOG_LEVEL_ERROR(2),
        LOG_LEVEL_WARN(4),
        LOG_LEVEL_DEBUG(8),
        LOG_LEVEL_STACK(16),
        LOG_LEVEL_RENDER(32),
        LOG_LEVEL_ALL(268435455);


        /* renamed from: a, reason: collision with root package name */
        private final int f16000a;

        a(int i2) {
            this.f16000a = i2;
        }

        public int b() {
            return this.f16000a;
        }
    }

    public static void a(Context context) throws IOException {
        ol.a().a(context, "Scope_LogConfig.properties");
        int iB = ol.a().b();
        if (iB > 0) {
            if (iB > 5) {
                f15992a = a.LOG_LEVEL_ALL.b();
            } else {
                f15992a = 1 << iB;
            }
        }
    }

    public static void b(String str, String str2) {
        if (a(a.LOG_LEVEL_ERROR)) {
            Log.e("biz_beizi_adn_log", c(str, str2));
        }
    }

    private static String c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "biz_beizi_adn_log";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        return String.format("tag: %s msg: %s", str, str2);
    }

    public static void d(String str, String str2) {
        c(str, str2);
    }

    public static void e(String str, String str2) {
        if (a(a.LOG_LEVEL_RENDER)) {
            Log.e("biz_beizi_adn_log", c(str, str2));
        }
    }

    public static void f(String str, String str2) {
        if (a(a.LOG_LEVEL_RENDER)) {
            c(str, str2);
        }
    }

    public static boolean a(a aVar) {
        int i2 = f15992a;
        return i2 != 0 && i2 >= aVar.b();
    }

    public static void a(Throwable th) {
        if (!a(a.LOG_LEVEL_STACK) || th == null) {
            return;
        }
        th.printStackTrace();
    }

    public static void a(String str, String str2) {
        if (a(a.LOG_LEVEL_DEBUG)) {
            c(str, str2);
        }
    }
}
