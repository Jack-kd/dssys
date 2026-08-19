package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.baidu.mobads.sdk.internal.an;
import com.baidu.mobads.sdk.internal.c;

/* loaded from: classes2.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11021a = "PluginLoader";

    /* renamed from: b, reason: collision with root package name */
    private static ClassLoader f11022b;

    public interface a {
        void a();
    }

    public static void a(double d2, an.b bVar, a aVar) {
        u uVar = (u) c.a().a(c.a.f11276a).a();
        if (uVar != null) {
            uVar.startLoadRemotePhp(d2, bVar);
        } else if (aVar != null) {
            aVar.a();
        }
    }

    public static void b(int i2) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.b(i2);
        }
    }

    public static Activity c() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            return vVar.c();
        }
        return null;
    }

    public static boolean d() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            return vVar.d();
        }
        return false;
    }

    public static boolean e() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            return vVar.e();
        }
        return false;
    }

    public static boolean f() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            return vVar.f();
        }
        az.c().e("未能初始化小说sdk，请检查小说包和广告sdk是否匹配");
        return false;
    }

    public static void g() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.g();
        }
    }

    public static void h() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a();
        }
    }

    public static void b() {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.b();
        }
    }

    public static boolean a() {
        return co.f11353d.booleanValue();
    }

    public static ClassLoader a(String str, String str2, String str3, ClassLoader classLoader) {
        u uVar;
        if (!a()) {
            return classLoader;
        }
        if (f11022b == null && (uVar = (u) c.a().a(c.a.f11276a).a()) != null) {
            f11022b = uVar.getClassLoaderFromJar(str, str2, str3, classLoader);
        }
        return f11022b;
    }

    public static void b(int i2, int i3) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(i2, i3);
        }
    }

    public static void a(Context context, String str, String str2) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(context, str, str2);
        }
    }

    public static void a(w wVar) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(wVar);
        }
    }

    public static void a(int i2) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(i2);
        }
    }

    public static void a(int i2, boolean z2) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(i2, z2);
        }
    }

    public static View a(Context context) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            return vVar.a(context);
        }
        return null;
    }

    public static void a(Context context, String str) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(context, str);
        }
    }

    public static void a(boolean z2) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(z2);
        }
    }

    public static void a(int i2, int i3) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.b(i2, i3);
        }
    }

    public static void a(boolean z2, int i2, int i3, int i4) {
        v vVar = (v) c.a().a(c.a.f11277b).a();
        if (vVar != null) {
            vVar.a(z2, i2, i3, i4);
        }
    }
}
