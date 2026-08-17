package com.byazt.ls;

import android.annotation.SuppressLint;
import android.util.Log;
import com.byazt.ik.a;
import com.bytedance.pangle.GlobalParam;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 1744, 34})
/* loaded from: classes3.dex */
public class l implements jx {
    @Override // com.byazt.ls.jx
    @SuppressLint({"DiscouragedPrivateApi"})
    public void invokeHiddenApiRestrictions() throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_flipped", "v1");
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class<?> cls = Class.forName("dalvik.system.VMRuntime");
            Method method = (Method) declaredMethod.invoke(cls, "getRuntime", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, null);
            Method method2 = (Method) declaredMethod.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            method2.setAccessible(true);
            method2.invoke(objInvoke, new String[]{"L"});
        } catch (Exception e2) {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_flipped", "V1 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e2));
            a.w("FlippedV1Impl", "V1 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e2));
        }
    }
}
