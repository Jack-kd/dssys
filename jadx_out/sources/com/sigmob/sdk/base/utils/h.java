package com.sigmob.sdk.base.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.exceptions.IntentNotResolvableException;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36587a = "h";

    private h() {
    }

    public static Intent a(Context context, Class<?> cls, Bundle bundle) {
        Intent intent = new Intent(context, cls);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (v.b(bundle)) {
            intent.putExtras(bundle);
        }
        return intent;
    }

    public static void b(Context context, Intent intent) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        String str = "Unable to open intent: " + intent;
        if (com.sigmob.sdk.base.o.a().m() != 0) {
            a(context, intent, str);
            return;
        }
        if (a(context, intent)) {
            a(context, intent, str);
            return;
        }
        throw new IntentNotResolvableException("Could not handle application specific action: " + intent.toString() + "\n\tYou may be running in the emulator or another device which does not have the required application.");
    }

    private static void c(Context context, Intent intent) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        try {
            intent.addFlags(872415232);
            Activity activityI = com.sigmob.sdk.b.i();
            if (activityI == null) {
                activityI = com.sigmob.sdk.b.c();
            }
            if (activityI == null) {
                context.startActivity(intent);
            } else {
                activityI.startActivity(intent);
            }
        } catch (Throwable th) {
            SigmobLog.e("error ", th);
            throw new IntentNotResolvableException(th);
        }
    }

    public static boolean d(Context context, String str) {
        if (context != null && !s.a((CharSequence) str)) {
            try {
                boolean zB = v.b(context.getPackageManager().getApplicationInfo(str, 0));
                SigmobLogger.d(f36587a, "installedWithAInfo: enable = " + zB, new Object[0]);
                return zB;
            } catch (Exception e2) {
                SigmobLogger.e(f36587a, "installedWithAInfo: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return false;
    }

    public static boolean e(Context context, String str) {
        if (context != null && !s.a((CharSequence) str)) {
            try {
                boolean zB = v.b(context.getPackageManager().getLaunchIntentForPackage(str));
                SigmobLogger.d(f36587a, "installedWithLInfo: enable = " + zB, new Object[0]);
                return zB;
            } catch (Exception e2) {
                SigmobLogger.e(f36587a, "installedWithLInfo: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return false;
    }

    public static boolean f(Context context, String str) {
        if (context != null && !s.a((CharSequence) str)) {
            try {
                boolean zB = v.b(context.getPackageManager().getPackageInfo(str, 0));
                SigmobLogger.d(f36587a, "installedWithPInfo: enable = " + zB, new Object[0]);
                return zB;
            } catch (Exception e2) {
                SigmobLogger.e(f36587a, "installedWithPInfo: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return false;
    }

    private static Uri a(Intent intent) {
        Preconditions.NoThrow.checkNotNull(intent);
        return Uri.parse(BaseConstants.MARKET_PREFIX + intent.getPackage());
    }

    public static void b(Context context, Uri uri, String str) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(uri);
        a(context, new Intent("android.intent.action.VIEW", uri), str);
    }

    public static boolean c(Context context, String str) throws IntentNotResolvableException {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null) {
            c(context, launchIntentForPackage);
            return true;
        }
        throw new IntentNotResolvableException("Could not handle application specific action: " + str + "\n\tYou may be running in the emulator or another.");
    }

    public static String a(Context context, Uri uri, List<String> list) {
        if (uri == null || uri.getScheme() == null || !uri.getScheme().equalsIgnoreCase("market")) {
            return null;
        }
        for (String str : list) {
            if (AppPackageUtil.getPackageVersionCode(context, str) != -1) {
                return str;
            }
        }
        return null;
    }

    public static boolean b(Context context, String str) {
        File externalCacheDir;
        File parentFile;
        File parentFile2;
        try {
            File file = new File("/data/data", str);
            String absolutePath = file.getAbsolutePath();
            boolean zExists = file.exists();
            SigmobLogger.d(f36587a, "handlePackageNameDir: cacheDir = " + absolutePath + ", exists = " + zExists, new Object[0]);
            if (zExists) {
                return true;
            }
        } catch (Exception unused) {
        }
        try {
            externalCacheDir = context.getExternalCacheDir();
        } catch (Exception unused2) {
        }
        if (externalCacheDir == null || (parentFile = externalCacheDir.getParentFile()) == null || (parentFile2 = parentFile.getParentFile()) == null) {
            return false;
        }
        File file2 = new File(parentFile2, str);
        String absolutePath2 = file2.getAbsolutePath();
        boolean zExists2 = file2.exists();
        SigmobLogger.d(f36587a, "handlePackageNameDir: packagePath = " + absolutePath2 + ", exists = " + zExists2, new Object[0]);
        return zExists2;
    }

    public static void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        a(context, broadcastReceiver, intentFilter, true);
    }

    @SuppressLint({"WrongConstant"})
    public static void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, boolean z2) {
        if (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, z2 ? 2 : 4);
        }
    }

    public static void a(Context context, Intent intent, String str) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        try {
            c(context, intent);
        } catch (Throwable th) {
            throw new IntentNotResolvableException(str + "\n" + th.getMessage());
        }
    }

    public static void a(Context context, Uri uri) throws IntentNotResolvableException {
        a(context, uri, (String) null);
    }

    public static void a(Context context, Uri uri, String str) throws IntentNotResolvableException {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (s.b(str)) {
            intent.setPackage(str);
        }
        b(context, intent);
    }

    public static void a(Context context, Uri uri, String str, boolean z2) throws Exception {
        String str2 = f36587a;
        SigmobLogger.d(str2, "launchApp: uri = " + uri + ", packageName = " + str + ", enableSmallWindow = " + z2, new Object[0]);
        boolean zB = v.b(uri);
        boolean zB2 = s.b(str);
        Activity activityI = com.sigmob.sdk.b.i();
        if (activityI == null) {
            activityI = com.sigmob.sdk.b.c();
        }
        if (activityI == null || v.b(Boolean.valueOf(z2))) {
            SigmobLogger.e(str2, "launchApp: error = activity is null.", new Object[0]);
            if (zB && zB2) {
                a(context, uri, str);
                return;
            } else if (zB) {
                a(context, uri);
                return;
            } else {
                c(context, str);
                return;
            }
        }
        Bundle bundle = null;
        Intent intent = zB ? new Intent("android.intent.action.VIEW", uri) : zB2 ? context.getPackageManager().getLaunchIntentForPackage(str) : null;
        if (!v.b(intent) || !a(context, intent)) {
            throw new IntentNotResolvableException("Could not handle application specific action: " + uri + "\n\tYou may be running in the emulator or another device which does not have the required application.");
        }
        SigmobLogger.d(str2, "launchApp: intent = " + intent, new Object[0]);
        intent.setFlags(270532608);
        int i2 = Build.VERSION.SDK_INT;
        ActivityOptions activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(context, 0, 0);
        if (activityOptionsMakeCustomAnimation == null) {
            SigmobLogger.d(str2, "launchApp: options is unavailable.", new Object[0]);
        } else {
            if (i2 >= 33) {
                try {
                    activityOptionsMakeCustomAnimation.getClass().getMethod("setPendingIntentBackgroundActivityLaunchAllowed", Boolean.TYPE).invoke(activityOptionsMakeCustomAnimation, Boolean.TRUE);
                } catch (Exception e2) {
                    SigmobLogger.e(f36587a, "launchApp: error = " + e2.getMessage(), new Object[0]);
                }
            }
            activityOptionsMakeCustomAnimation.getClass().getMethod("setLaunchWindowingMode", Integer.TYPE).invoke(activityOptionsMakeCustomAnimation, 6);
            View decorView = activityI.getWindow().getDecorView();
            WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
            Rect rect = new Rect(0, 0, decorView.getWidth() / 2, decorView.getHeight() / 2);
            rect.offsetTo(rootWindowInsets.getSystemWindowInsetLeft() + 50, rootWindowInsets.getSystemWindowInsetTop() + 50);
            activityOptionsMakeCustomAnimation.setLaunchBounds(rect);
        }
        if (activityOptionsMakeCustomAnimation != null) {
            try {
                bundle = activityOptionsMakeCustomAnimation.toBundle();
            } catch (Throwable th) {
                throw new IntentNotResolvableException(("Unable to open intent: " + intent) + "\n" + th.getMessage());
            }
        }
        activityI.startActivity(intent, bundle);
        if (z2) {
            com.sigmob.sdk.b.j();
        }
    }

    public static void a(Context context, String str, String str2, String str3, int i2, String str4) throws IntentNotResolvableException {
        String str5 = "wechat mini program error: wxAppId = " + str + ", wxAppUsername = " + str2 + ", wxAppPath = " + str3 + ", wxBusinessType = " + i2 + ", wxExtMsg = " + str4;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    if (s.a((CharSequence) str4)) {
                        throw new IntentNotResolvableException(str5);
                    }
                    Class<?> cls = Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
                    Method method = cls.getMethod("createWXAPI", Context.class, String.class);
                    method.setAccessible(true);
                    Object objInvoke = method.invoke(cls, context, str);
                    Class<?> cls2 = Class.forName("com.tencent.mm.opensdk.modelbiz.WXOpenBusinessView$Req");
                    Object objNewInstance = cls2.newInstance();
                    Field declaredField = cls2.getDeclaredField("businessType");
                    declaredField.setAccessible(true);
                    declaredField.set(objNewInstance, "nativeOpenAdCanvas");
                    Field declaredField2 = cls2.getDeclaredField("extInfo");
                    declaredField2.setAccessible(true);
                    declaredField2.set(objNewInstance, str4);
                    Method method2 = objInvoke.getClass().getMethod("sendReq", objNewInstance.getClass().getSuperclass());
                    method2.setAccessible(true);
                    boolean zBooleanValue = ((Boolean) method2.invoke(objInvoke, objNewInstance)).booleanValue();
                    SigmobLog.d("openB:isSendReq " + zBooleanValue);
                    if (!zBooleanValue) {
                        throw new IntentNotResolvableException(str5);
                    }
                    return;
                }
                return;
            }
            if (s.a((CharSequence) str) || s.a((CharSequence) str2) || s.a((CharSequence) str3)) {
                throw new IntentNotResolvableException(str5);
            }
            Class<?> cls3 = Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            Method method3 = cls3.getMethod("createWXAPI", Context.class, String.class);
            method3.setAccessible(true);
            Object objInvoke2 = method3.invoke(cls3, context, str);
            Class<?> cls4 = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance2 = cls4.newInstance();
            Field declaredField3 = cls4.getDeclaredField("userName");
            declaredField3.setAccessible(true);
            declaredField3.set(objNewInstance2, str2);
            Field declaredField4 = cls4.getDeclaredField("path");
            declaredField4.setAccessible(true);
            declaredField4.set(objNewInstance2, str3);
            if (s.b(str4)) {
                Field declaredField5 = cls4.getDeclaredField("extData");
                declaredField5.setAccessible(true);
                declaredField5.set(objNewInstance2, str4);
            }
            Field declaredField6 = cls4.getDeclaredField("miniprogramType");
            declaredField6.setAccessible(true);
            declaredField6.set(objNewInstance2, 0);
            Method method4 = objInvoke2.getClass().getMethod("sendReq", objNewInstance2.getClass().getSuperclass());
            method4.setAccessible(true);
            boolean zBooleanValue2 = ((Boolean) method4.invoke(objInvoke2, objNewInstance2)).booleanValue();
            SigmobLog.d("openB:isSendReq " + zBooleanValue2);
            if (!zBooleanValue2) {
                throw new IntentNotResolvableException(str5);
            }
        } catch (Throwable th) {
            throw new IntentNotResolvableException(th.getMessage());
        }
    }

    public static boolean a(Context context, Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        return com.sigmob.sdk.base.o.a().m() == 0 ? e(context, str) : d(context, str);
    }
}
