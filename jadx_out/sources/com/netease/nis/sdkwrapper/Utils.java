package com.netease.nis.sdkwrapper;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.varbto.utils.api.UtilConst;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class Utils {
    static {
        System.loadLibrary("secsdk");
    }

    private static String doTypeShort(String str) {
        if (str.startsWith("[")) {
            return str.replace(i.f2495E, ServiceReference.DELIMITER);
        }
        if (str.equals(IAdInterListener.AdProdType.PRODUCT_INTERSTITIAL)) {
            return "I";
        }
        if (str.equals("float")) {
            return "F";
        }
        if (str.equals("long")) {
            return "J";
        }
        if (str.equals("double")) {
            return "D";
        }
        if (str.equals("short")) {
            return "S";
        }
        if (str.equals("char")) {
            return UtilConst.CRASH_CAT_C;
        }
        if (str.equals("boolean")) {
            return "Z";
        }
        if (str.equals("byte")) {
            return UtilConst.CRASH_CAT_B;
        }
        return ("L" + str + ";").replace(i.f2495E, ServiceReference.DELIMITER);
    }

    public static String getFieldSCDesc(Class cls, String str, String str2) throws SecurityException {
        while (cls != null) {
            String strVGetFieldSCDesc = vGetFieldSCDesc(cls, str, str2);
            if (strVGetFieldSCDesc != "") {
                return strVGetFieldSCDesc;
            }
            cls = cls.getSuperclass();
        }
        return "";
    }

    public static Object getStaticFO(String str, String str2) throws NoSuchFieldException {
        try {
            Field field = Class.forName(str.replace('/', '.')).getField(str2);
            Class<?> type = field.getType();
            return type == Integer.TYPE ? Integer.valueOf(field.getInt(null)) : type == Float.TYPE ? Float.valueOf(field.getFloat(null)) : type == Long.TYPE ? Long.valueOf(field.getLong(null)) : type == Double.TYPE ? Double.valueOf(field.getDouble(null)) : type == Short.TYPE ? Short.valueOf(field.getShort(null)) : type == Character.TYPE ? Character.valueOf(field.getChar(null)) : type == Boolean.TYPE ? Boolean.valueOf(field.getBoolean(null)) : type == Byte.TYPE ? Byte.valueOf(field.getByte(null)) : field.get(null);
        } catch (Exception e2) {
            Log.e("Utils", e2.toString());
            return null;
        }
    }

    public static native Object rL(Object[] objArr);

    public static void showRiskMessage(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Toast.makeText(context, str, 0).show();
            return;
        }
        Looper.prepare();
        Toast.makeText(context, str, 0).show();
        Looper.loop();
    }

    private static String vGetFieldSCDesc(Class cls, String str, String str2) throws SecurityException {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                String strReplace = field.getType().toString().replace("class ", "").replace("interface ", "");
                if (Modifier.isStatic(field.getModifiers()) && field.getName().equals(str) && str2.equals(doTypeShort(strReplace))) {
                    return field.getDeclaringClass().getName().replace(i.f2495E, ServiceReference.DELIMITER);
                }
            }
            return "";
        } catch (NoClassDefFoundError unused) {
            return "NoClassDefFoundError";
        }
    }
}
