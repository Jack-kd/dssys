package com.byazt.gjx;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.core.view.PointerIconCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 737, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static volatile boolean hp = false;

    public static void hp(Context context) {
        if (hp || context == null) {
            return;
        }
        l(context);
        jx(context);
        j(context);
        w(context);
        hp = true;
    }

    private static void j(Context context) {
        int i2;
        Configuration configuration = context.getResources().getConfiguration();
        boolean z2 = true;
        if (configuration != null && ((i2 = configuration.touchscreen) == 1 || i2 == 0)) {
            z2 = false;
        }
        a.hp(PointerIconCompat.TYPE_TEXT, new Object[]{Boolean.valueOf(z2)});
    }

    private static void jx(Context context) {
        int i2;
        int i3;
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (cameraManager != null) {
            try {
                i2 = 0;
                i3 = 0;
                for (String str : cameraManager.getCameraIdList()) {
                    int iIntValue = ((Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING)).intValue();
                    if (iIntValue == 0) {
                        i2++;
                    } else if (iIntValue == 1) {
                        i3++;
                    }
                }
            } catch (Throwable unused) {
                i2 = -1;
            }
            a.hp(1007, new Object[]{Integer.valueOf(Build.VERSION.SDK_INT), Integer.valueOf(i2), Integer.valueOf(i3)});
        }
        i2 = -2;
        i3 = i2;
        a.hp(1007, new Object[]{Integer.valueOf(Build.VERSION.SDK_INT), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    private static void l(Context context) {
        boolean booleanExtra = true;
        double intExtra = -0.1d;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                booleanExtra = intentRegisterReceiver.getBooleanExtra("present", false);
                intExtra = intentRegisterReceiver.getIntExtra("temperature", -1) / 10.0d;
            }
        } catch (Throwable unused) {
        }
        a.hp(1006, new Object[]{Boolean.valueOf(booleanExtra), Double.valueOf(intExtra)});
    }

    private static void w(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        a.hp(PointerIconCompat.TYPE_VERTICAL_TEXT, new Object[]{Integer.valueOf(telephonyManager != null ? telephonyManager.getSimState() : -1)});
    }
}
