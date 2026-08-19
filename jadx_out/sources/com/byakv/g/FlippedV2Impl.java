package com.byakv.g;

import android.util.Log;
import androidx.annotation.Keep;
import com.byazt.dnb.eb;
import com.byazt.ik.a;
import com.byazt.ls.jx;
import com.bytedance.pangle.GlobalParam;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@Keep
/* loaded from: classes2.dex */
public class FlippedV2Impl implements jx {
    public static final String TAG = "FlippedV2Impl";

    static {
        eb.hp("pangleflipped");
    }

    private native Method getDeclaredMethod(Object obj, String str, Class<?>[] clsArr);

    @Override // com.byazt.ls.jx
    public void invokeHiddenApiRestrictions() throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        GlobalParam.getInstance().getReporter().hp("zeus_stage_flipped", "v2");
        try {
            Class<?> cls = Class.forName("dalvik.system.VMRuntime");
            Method declaredMethod = getDeclaredMethod(cls, "getRuntime", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Method declaredMethod2 = getDeclaredMethod(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(objInvoke, new String[]{"L"});
        } catch (Exception e2) {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_flipped", "V2 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e2));
            a.w(TAG, "V2 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e2));
        }
    }
}
