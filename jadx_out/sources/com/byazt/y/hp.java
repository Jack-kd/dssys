package com.byazt.y;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 28})
/* loaded from: classes3.dex */
public class hp {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 170})
    /* renamed from: com.byazt.y.hp$hp, reason: collision with other inner class name */
    public static class C0413hp implements InvocationHandler {
        public Object hp;

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if ("startActivity".contains(method.getName())) {
                    hp.hp(objArr);
                }
            } catch (Throwable unused) {
            }
            return method.invoke(this.hp, objArr);
        }

        private C0413hp(Object obj) {
            this.hp = obj;
        }
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.byazt.g.jx.hp(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx() {
        try {
            Field declaredField = Build.VERSION.SDK_INT < 26 ? Class.forName("android.app.ActivityManagerNative").getDeclaredField("gDefault") : Class.forName("android.app.ActivityManager").getDeclaredField("IActivityManagerSingleton");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Field declaredField2 = Class.forName("android.util.Singleton").getDeclaredField("mInstance");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 == null) {
                return;
            }
            declaredField2.set(obj, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{Class.forName("android.app.IActivityManager")}, new C0413hp(obj2)));
        } catch (Throwable unused) {
        }
    }

    public static String l(String str) throws PackageManager.NameNotFoundException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = com.byazt.t.jl.getContext().getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.sourceDir;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static int hp(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return 5;
        }
        return com.byazt.g.jx.hp(str, new File(str2));
    }

    public static void hp() {
        if (com.byazt.t.jl.q().optInt("hook", 0) != 1) {
            return;
        }
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.y.hp.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.wm.w.s();
                hp.jx();
            }
        }, 10000L);
    }

    public static void hp(Object[] objArr) {
        if (com.byazt.t.jl.q().optInt("hook", 0) == 1 && (objArr[1] instanceof String)) {
            Object obj = objArr[2];
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                if ("android.intent.action.VIEW".equals(intent.getAction()) && com.byazt.oy.w.hp.equals(intent.getType())) {
                    if (com.byazt.wm.w.j()) {
                        String strOptString = com.byazt.t.jl.q().optString("hook_vivo_arg", "com.android.settings");
                        if ("null".equals(strOptString)) {
                            return;
                        }
                        objArr[1] = strOptString;
                        return;
                    }
                    if (com.byazt.wm.w.w()) {
                        String strOptString2 = com.byazt.t.jl.q().optString("hook_kllk_arg1", "com." + com.byazt.oy.w.jx + ".market");
                        if (!"null".equals(strOptString2)) {
                            objArr[1] = strOptString2;
                        }
                        String strOptString3 = com.byazt.t.jl.q().optString("hook_kllk_arg2", BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO);
                        String strOptString4 = com.byazt.t.jl.q().optString("hook_kllk_arg3", "m.store." + com.byazt.oy.w.jx + "mobile.com");
                        intent.putExtra(com.byazt.oy.w.jx + "_extra_pkg_name", strOptString3);
                        intent.putExtra("refererHost", strOptString4);
                        if (com.byazt.t.jl.q().optInt("hook_kllk_arg4", 0) == 1) {
                            Intent intent2 = new Intent();
                            intent2.putExtra(com.byazt.oy.w.jx + "_extra_pkg_name", strOptString3);
                            intent2.putExtra("refererHost", strOptString4);
                            intent.putExtra("android.intent.extra.INTENT", intent2);
                            return;
                        }
                        return;
                    }
                    if (com.byazt.wm.w.hp()) {
                        String strOptString5 = com.byazt.t.jl.q().optString("hook_huawei_arg1", "com.huawei.appmarket");
                        if (!"null".equals(strOptString5)) {
                            objArr[1] = strOptString5;
                        }
                        intent.putExtra("caller_package", com.byazt.t.jl.q().optString("hook_huawei_arg2", "com.huawei.appmarket"));
                    }
                }
            }
        }
    }
}
