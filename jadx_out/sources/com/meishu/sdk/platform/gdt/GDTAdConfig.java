package com.meishu.sdk.platform.gdt;

import android.content.Context;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.b;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.gdt.GDTAdConfig;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.GDTLogger;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import org.json.JSONException;

/* loaded from: classes4.dex */
public class GDTAdConfig extends b {
    public static /* synthetic */ Object a(Object obj, Method method, Object[] objArr) {
        LogUtil.d("GDTAdConfig", "gdt init succ");
        return null;
    }

    @Override // com.meishu.sdk.core.b
    public void onInit(Context context, String str, String str2) throws JSONException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (AdSdk.adConfig().getCanUseSdkPersonalRecommend()) {
            GlobalSetting.setPersonalizedState(0);
        } else {
            GlobalSetting.setPersonalizedState(1);
        }
        if (AdSdk.adConfig().customController() != null) {
            GlobalSetting.setAgreePrivacyStrategy(AdSdk.adConfig().customController().isCanUsePhoneState());
            GlobalSetting.setEnableCollectAppInstallStatus(AdSdk.adConfig().customController().canReadInstalledPackages());
        }
        try {
            if (!AdSdk.adConfig().enableInstallBroadcast()) {
                HashMap map = new HashMap();
                map.put("hieib", Boolean.FALSE);
                GlobalSetting.setConvOptimizeInfo(map);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            try {
                GDTAdSdk.class.getDeclaredMethod("initWithoutStart", Context.class, String.class).invoke(null, context.getApplicationContext(), str);
                GDTAdSdk.class.getDeclaredMethod("start", GDTAdSdk.OnStartListener.class).invoke(null, Proxy.newProxyInstance(GDTAdConfig.class.getClassLoader(), new Class[]{GDTAdSdk.OnStartListener.class}, new InvocationHandler() { // from class: T0.a
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method, Object[] objArr) {
                        return GDTAdConfig.a(obj, method, objArr);
                    }
                }));
            } catch (Throwable unused) {
                GDTAdSdk.class.getDeclaredMethod("init", Context.class, String.class).invoke(null, context.getApplicationContext(), str);
            }
        } catch (Exception unused2) {
        }
        try {
            Object objNewInstance = GDTLogger.class.newInstance();
            Field declaredField = GDTLogger.class.getDeclaredField("DEBUG_ENABLE");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objNewInstance, true);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
