package com.anythink.odopt.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.odopt.api.ATOaidBindHandler;
import com.bun.miitmdid.interfaces.IdSupplier;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: com.anythink.odopt.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.odopt.a.a f10632a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f10633b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f10634c;

        public AnonymousClass1(com.anythink.odopt.a.a aVar, Context context, String str) {
            this.f10632a = aVar;
            this.f10633b = context;
            this.f10634c = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x009e  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 396
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.odopt.a.b.AnonymousClass1.run():void");
        }
    }

    @SuppressLint({"PrivateApi"})
    public static final class a {

        /* renamed from: b, reason: collision with root package name */
        private static Object f10636b;

        /* renamed from: c, reason: collision with root package name */
        private static Class<?> f10637c;

        /* renamed from: d, reason: collision with root package name */
        private static Method f10638d;

        /* renamed from: a, reason: collision with root package name */
        final String f10639a;

        static {
            try {
                Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
                f10637c = cls;
                f10636b = cls.newInstance();
                f10638d = f10637c.getMethod("getOAID", Context.class);
            } catch (Throwable unused) {
            }
        }

        public a(Context context) {
            this.f10639a = a(context, f10638d);
        }

        private static boolean a() {
            return (f10637c == null || f10636b == null) ? false : true;
        }

        private static String a(Context context, Method method) {
            Object obj = f10636b;
            if (obj == null || method == null) {
                return null;
            }
            try {
                Object objInvoke = method.invoke(obj, context);
                if (objInvoke != null) {
                    return (String) objInvoke;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r18, com.anythink.odopt.a.a r19) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.odopt.a.b.a(android.content.Context, com.anythink.odopt.a.a):void");
    }

    private static boolean b() throws ClassNotFoundException {
        String strA = a("ro.ssui.product");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    private static boolean c() throws ClassNotFoundException {
        String strA = a("ro.build.freeme.label");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    private static boolean d() {
        return a("ro.odm.manufacturer").equalsIgnoreCase("PRIZE");
    }

    private static void b(Context context, com.anythink.odopt.a.a aVar) {
        ATOaidBindHandler.handleInitOaidBind(context, aVar);
    }

    private static String b(Context context) {
        try {
            return new a(context).f10639a;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static boolean a() throws ClassNotFoundException {
        String strA = a("ro.build.freeme.label");
        return !TextUtils.isEmpty(strA) && strA.equalsIgnoreCase("FREEMEOS");
    }

    private static boolean a(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String a(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    private static void a(Context context, String str, com.anythink.odopt.a.a aVar) {
        c.a().a(new d(e.bU, new AnonymousClass1(aVar, context, str)));
    }

    private static void a(IdSupplier idSupplier, com.anythink.odopt.a.a aVar) {
        String oaid = idSupplier != null ? idSupplier.getOAID() : "";
        if (TextUtils.isEmpty(oaid)) {
            if (aVar != null) {
                aVar.a("No Support Oaid.");
            }
        } else if (aVar != null) {
            aVar.a(oaid, false);
        }
    }
}
