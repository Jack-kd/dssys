package com.meishu.sdk.platform.ms.splash;

import android.hardware.SensorManager;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class e extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ShakeUtil f33162a;

    public e(ShakeUtil shakeUtil) {
        this.f33162a = shakeUtil;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            if (this.f33162a.f33099c == null && AdSdk.getContext() != null) {
                this.f33162a.f33099c = (SensorManager) AdSdk.getContext().getSystemService("sensor");
            }
            ShakeUtil shakeUtil = this.f33162a;
            SensorManager sensorManager = shakeUtil.f33099c;
            if (sensorManager != null) {
                int i2 = shakeUtil.f33097a;
                if (i2 == 2 || i2 == 6) {
                    if (shakeUtil.f33107k == null) {
                        shakeUtil.f33107k = sensorManager.getDefaultSensor(4);
                    }
                    ShakeUtil shakeUtil2 = this.f33162a;
                    shakeUtil2.f33099c.registerListener(shakeUtil2.f33111o, shakeUtil2.f33107k, 2);
                } else if (i2 == 1 || i2 == 4) {
                    if (shakeUtil.f33108l == null) {
                        shakeUtil.f33108l = sensorManager.getDefaultSensor(9);
                    }
                    ShakeUtil shakeUtil3 = this.f33162a;
                    if (shakeUtil3.f33109m == null) {
                        shakeUtil3.f33109m = shakeUtil3.f33099c.getDefaultSensor(1);
                    }
                    ShakeUtil shakeUtil4 = this.f33162a;
                    if (shakeUtil4.f33107k == null) {
                        shakeUtil4.f33107k = shakeUtil4.f33099c.getDefaultSensor(4);
                    }
                    ShakeUtil shakeUtil5 = this.f33162a;
                    shakeUtil5.f33099c.registerListener(shakeUtil5.f33111o, shakeUtil5.f33108l, 1);
                    ShakeUtil shakeUtil6 = this.f33162a;
                    shakeUtil6.f33099c.registerListener(shakeUtil6.f33111o, shakeUtil6.f33107k, 2);
                    ShakeUtil shakeUtil7 = this.f33162a;
                    shakeUtil7.f33099c.registerListener(shakeUtil7.f33111o, shakeUtil7.f33109m, 2);
                } else if (i2 == 3 || i2 == 5 || i2 == 7 || i2 == 8) {
                    if (shakeUtil.f33107k == null) {
                        shakeUtil.f33107k = sensorManager.getDefaultSensor(4);
                    }
                    ShakeUtil shakeUtil8 = this.f33162a;
                    shakeUtil8.f33099c.registerListener(shakeUtil8.f33111o, shakeUtil8.f33107k, 2);
                    ShakeUtil shakeUtil9 = this.f33162a;
                    if (shakeUtil9.f33108l == null) {
                        shakeUtil9.f33108l = shakeUtil9.f33099c.getDefaultSensor(9);
                    }
                    ShakeUtil shakeUtil10 = this.f33162a;
                    shakeUtil10.f33099c.registerListener(shakeUtil10.f33111o, shakeUtil10.f33108l, 1);
                    ShakeUtil shakeUtil11 = this.f33162a;
                    if (shakeUtil11.f33109m == null) {
                        shakeUtil11.f33109m = shakeUtil11.f33099c.getDefaultSensor(1);
                    }
                    ShakeUtil shakeUtil12 = this.f33162a;
                    shakeUtil12.f33099c.registerListener(shakeUtil12.f33111o, shakeUtil12.f33109m, 2);
                }
                ShakeUtil shakeUtil13 = this.f33162a;
                if (shakeUtil13.f33110n) {
                    shakeUtil13.f33099c.unregisterListener(shakeUtil13.f33111o);
                    LogUtil.dev("ShakeUtil", "initSensorPause");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
