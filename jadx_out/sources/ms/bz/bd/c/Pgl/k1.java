package ms.bz.bd.c.Pgl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class k1 {
    static String hp;

    /* renamed from: l, reason: collision with root package name */
    static String f51963l;

    @SuppressLint({"MissingPermission"})
    public static synchronized String hp(Context context) {
        TelephonyManager telephonyManager;
        String str = hp;
        if (str != null) {
            return v1.hp(str);
        }
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable unused) {
        }
        if (telephonyManager == null) {
            throw new NullPointerException("null TM");
        }
        Method declaredMethod = telephonyManager.getClass().getDeclaredMethod(new String(pblr.hp("6765744465766963654964")), null);
        declaredMethod.setAccessible(true);
        hp = (String) declaredMethod.invoke(telephonyManager, null);
        return v1.hp(hp);
    }

    @SuppressLint({"MissingPermission"})
    public static synchronized String l(Context context) {
        TelephonyManager telephonyManager;
        String str = hp;
        if (str != null) {
            return v1.hp(str);
        }
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable unused) {
        }
        if (telephonyManager == null) {
            throw new NullPointerException("null TM");
        }
        Method declaredMethod = telephonyManager.getClass().getDeclaredMethod(new String(pblr.hp("676574537562736372696265724964")), null);
        declaredMethod.setAccessible(true);
        f51963l = (String) declaredMethod.invoke(telephonyManager, null);
        return v1.hp(f51963l);
    }
}
