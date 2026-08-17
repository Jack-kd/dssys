package ms.bz.bd.c.Pgl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.ArrayMap;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes5.dex */
public final class pble {
    private static volatile int hp = -1;

    /* renamed from: l, reason: collision with root package name */
    private static volatile String f51973l = "";

    public static int hp(Context context) {
        if (hp <= 0) {
            try {
                hp = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (Throwable unused) {
            }
        }
        return hp;
    }

    public static String l(Context context) {
        try {
            if (f51973l == "") {
                f51973l = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            }
        } catch (Throwable unused) {
        }
        return f51973l;
    }

    @SuppressLint({"PrivateApi"})
    public static Activity hp() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ArrayMap arrayMap;
        try {
            Class<?> cls = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5889dc", new byte[]{37, com.sigmob.sdk.archives.tar.e.f35446L, 79, 95, 84, 125, com.sigmob.sdk.archives.tar.e.f35444J, 87, 104, 121, com.sigmob.sdk.archives.tar.e.f35446L, 116, 106, 78, 79, 125, 32, ek.f49296n, 125, 112, ek.f49296n, com.sigmob.sdk.archives.tar.e.f35444J, 89, 72, 90, 112}));
            Object objInvoke = cls.getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "56584c", new byte[]{39, 33, 84, 94, ek.f49294l, 122, 34, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35454T, 124, 45, 34, 79, com.sigmob.sdk.archives.tar.e.f35453S, 18, com.anythink.core.common.s.a.c.f7561b, 62, 5, 97, 105, 32}), null).invoke(null, null);
            Field declaredField = cls.getDeclaredField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "57efa3", new byte[]{41, 20, 21, 6, 87, com.sigmob.sdk.archives.tar.e.f35444J, 63, 2, 61, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35449O}));
            declaredField.setAccessible(true);
            arrayMap = (ArrayMap) declaredField.get(objInvoke);
        } catch (Exception unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4d4871", new byte[]{36, 111, com.sigmob.sdk.archives.tar.e.f35452R, 75});
        }
        if (arrayMap.size() <= 0) {
            return null;
        }
        for (Object obj : arrayMap.values()) {
            Class<?> cls2 = obj.getClass();
            Field declaredField2 = cls2.getDeclaredField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f41a43", new byte[]{com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35449O, 87, 6, ek.f49294l, 32}));
            declaredField2.setAccessible(true);
            if (!declaredField2.getBoolean(obj)) {
                Field declaredField3 = cls2.getDeclaredField((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "bf0330", new byte[]{114, com.sigmob.sdk.archives.tar.e.f35454T, 87, 78, 26, 46, 117, 94}));
                declaredField3.setAccessible(true);
                return (Activity) declaredField3.get(obj);
            }
        }
        return null;
    }
}
