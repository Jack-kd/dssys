package com.byazt.lc;

import android.app.Activity;
import android.content.res.Resources;
import com.bytedance.pangle.activity.IPluginActivity;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;

@com.byazt.kj.hp(hp = {0, 1, 1769, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(com.byazt.hh.hp hpVar, Activity activity) {
        try {
            FieldUtils.writeField(hpVar, "mTheme", (Object) null);
            FieldUtils.writeField((Object) hpVar, "mThemeResource", (Object) 0);
            int[] iArrHp = hp(activity);
            if (iArrHp == null) {
                return;
            }
            for (int i2 : iArrHp) {
                if (i2 != 0) {
                    hpVar.setWrapperActivityTheme(i2);
                }
            }
        } catch (Exception e2) {
            com.byazt.ik.a.hp(e2);
        }
    }

    private static int[] hp(Activity activity) {
        Resources.Theme theme = activity.getTheme();
        if (theme == null) {
            return null;
        }
        try {
            if (q.e()) {
                Object field = FieldUtils.readField(theme, "mThemeImpl");
                if (field == null) {
                    return null;
                }
                try {
                    Object objInvokeMethod = MethodUtils.invokeMethod(field, "getKey", new Object[0]);
                    if (objInvokeMethod != null) {
                        return (int[]) FieldUtils.readField(objInvokeMethod, "mResId");
                    }
                } catch (Exception unused) {
                }
                Object objInvoke = com.byazt.vw.hp.hp(field.getClass(), "getKey", new Class[0]).invoke(field, null);
                if (objInvoke == null) {
                    ZeusLogger.d(ZeusLogger.TAG_ACTIVITY, "getKey failed!");
                    return null;
                }
                ZeusLogger.d(ZeusLogger.TAG_ACTIVITY, "getKey success by doubleReflector!");
                return (int[]) com.byazt.vw.hp.hp(objInvoke.getClass(), "mResId").get(objInvoke);
            }
            if (q.l()) {
                Object objInvokeMethod2 = MethodUtils.invokeMethod(theme, "getKey", new Object[0]);
                if (objInvokeMethod2 == null) {
                    return null;
                }
                return (int[]) FieldUtils.readField(objInvokeMethod2, "mResId");
            }
            String str = (String) MethodUtils.invokeMethod(theme, "getKey", new Object[0]);
            if (str == null) {
                return null;
            }
            String[] strArrSplit = str.trim().replace("!", "").split(" ");
            int[] iArr = new int[strArrSplit.length];
            for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                iArr[i2] = Integer.parseInt(strArrSplit[i2], 16);
            }
            return iArr;
        } catch (Throwable th) {
            ZeusLogger.d(ZeusLogger.TAG_ACTIVITY, "getKey exception!" + th.getMessage());
            return null;
        }
    }

    public static void hp(IPluginActivity iPluginActivity, Activity activity) {
        try {
            FieldUtils.writeField(iPluginActivity, "mTheme", (Object) null);
            FieldUtils.writeField((Object) iPluginActivity, "mThemeResource", (Object) 0);
            int[] iArrHp = hp(activity);
            if (iArrHp == null) {
                return;
            }
            for (int i2 : iArrHp) {
                if (i2 != 0) {
                    iPluginActivity.setProxyTheme2Plugin(i2);
                }
            }
        } catch (Exception e2) {
            com.byazt.ik.a.hp(e2);
        }
    }
}
