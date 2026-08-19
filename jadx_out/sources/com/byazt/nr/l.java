package com.byazt.nr;

import android.content.Context;
import android.os.Build;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import androidx.core.view.PointerIconCompat;
import com.byazt.yb.w;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 34})
/* loaded from: classes3.dex */
public class l implements w {
    private static boolean l(Context context, TelephonyManager telephonyManager) throws NoSuchMethodException, SecurityException {
        ServiceState serviceState;
        if (context == null || Build.VERSION.SDK_INT < 29 || context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            return false;
        }
        try {
            int iHp = hp();
            if (iHp == -1) {
                serviceState = telephonyManager.getServiceState();
            } else {
                Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getServiceStateForSubscriber", Integer.TYPE);
                declaredMethod.setAccessible(true);
                serviceState = (ServiceState) declaredMethod.invoke(telephonyManager, Integer.valueOf(iHp));
            }
            return hp(serviceState);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.yb.w
    public boolean hp(Context context, TelephonyManager telephonyManager) {
        return l(context, telephonyManager);
    }

    private static int hp() {
        return SubscriptionManager.getDefaultDataSubscriptionId();
    }

    private static boolean hp(ServiceState serviceState) throws NoSuchMethodException, SecurityException {
        try {
            Method method = serviceState.getClass().getMethod("getNrState", null);
            if (method != null) {
                method.setAccessible(true);
                int iIntValue = ((Integer) method.invoke(serviceState, null)).intValue();
                return iIntValue == 3 || iIntValue == 2;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
