package com.meishu.sdk.core.utils;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<Integer, Integer> f31901a;

    /* renamed from: b, reason: collision with root package name */
    public static Sensor f31902b;

    /* renamed from: c, reason: collision with root package name */
    public static Sensor f31903c;

    /* renamed from: d, reason: collision with root package name */
    public static Sensor f31904d;

    /* renamed from: e, reason: collision with root package name */
    public static SensorManager f31905e;

    static {
        HashMap map = new HashMap();
        f31901a = map;
        map.put(4, 1);
        map.put(8, 2);
        map.put(64, 4);
        map.put(256, 6);
        map.put(12, 3);
        map.put(72, 5);
        map.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME), 7);
        map.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME), 8);
    }

    public static void a() {
        try {
            int iA = r.a().a("shake_act_type", 0);
            try {
                if (AdSdk.adConfig() != null) {
                    if (AdSdk.adConfig().getDisableSensorTypes() != null && !AdSdk.adConfig().getDisableSensorTypes().isEmpty()) {
                        List<Integer> disableSensorTypes = AdSdk.adConfig().getDisableSensorTypes();
                        if (disableSensorTypes.contains(1) || disableSensorTypes.contains(9)) {
                            f31904d = null;
                            f31903c = null;
                            iA &= -69;
                        } else if ((iA & 4) != 4 || (iA & 64) != 64) {
                            if (f31905e == null) {
                                f31905e = (SensorManager) AdSdk.getContext().getSystemService("sensor");
                            }
                            if (f31903c == null) {
                                f31903c = f31905e.getDefaultSensor(9);
                            }
                            if (f31904d == null) {
                                f31904d = f31905e.getDefaultSensor(1);
                            }
                        }
                        if (disableSensorTypes.contains(4)) {
                            f31902b = null;
                            iA &= -329;
                        } else if ((iA & 8) != 8 || (iA & 256) != 256) {
                            if (f31905e == null) {
                                f31905e = (SensorManager) AdSdk.getContext().getSystemService("sensor");
                            }
                            if (f31902b == null) {
                                f31902b = f31905e.getDefaultSensor(4);
                            }
                        }
                        try {
                            j.f31916c = iA | MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME;
                            r.a().b("shake_act_type", iA);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    } else {
                        if ((iA & 8) == 8 && (iA & 4) == 4 && (iA & 64) == 64 && (iA & 256) == 256) {
                            return;
                        }
                        if (f31905e == null) {
                            f31905e = (SensorManager) AdSdk.getContext().getSystemService("sensor");
                        }
                        if (f31903c == null) {
                            f31903c = f31905e.getDefaultSensor(9);
                        }
                        if (f31904d == null) {
                            f31904d = f31905e.getDefaultSensor(1);
                        }
                        if (f31902b == null) {
                            f31902b = f31905e.getDefaultSensor(4);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (f31902b != null && f31903c != null && f31904d != null && (iA & 64) != 64) {
                iA |= 64;
                try {
                    j.a(iA);
                    r.a().b("shake_act_type", iA);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            if (f31902b != null && ((iA & 8) != 8 || (iA & 256) != 256)) {
                iA |= MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME;
                try {
                    j.a(iA);
                    r.a().b("shake_act_type", iA);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
            if (f31903c == null || f31904d == null || (iA & 4) == 4) {
                return;
            }
            int i2 = iA | 4;
            try {
                j.a(i2);
                r.a().b("shake_act_type", i2);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
    }

    public static int b(int i2) {
        int i3 = i2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_REOPEN;
        try {
            int iIntValue = ((Integer) ((HashMap) f31901a).get(Integer.valueOf(i3))).intValue();
            if (iIntValue == 0) {
                return 4;
            }
            return iIntValue;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static boolean c(int i2) {
        return d(i2) | e(i2);
    }

    public static boolean d(int i2) {
        return ((i2 & 68) & j.f31916c) != 0;
    }

    public static boolean e(int i2) {
        return ((i2 & MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME) & j.f31916c) != 0;
    }

    public static int a(int i2) {
        if (AdSdk.adConfig() == null || AdSdk.adConfig().getDisableSensorTypes() == null || AdSdk.adConfig().getDisableSensorTypes().isEmpty()) {
            return i2;
        }
        List<Integer> disableSensorTypes = AdSdk.adConfig().getDisableSensorTypes();
        return (disableSensorTypes.contains(1) || disableSensorTypes.contains(9)) ? i2 & (-69) : disableSensorTypes.contains(4) ? i2 & (-329) : i2;
    }

    public static int a(int i2, int i3) {
        int i4 = j.f31916c;
        if ((i4 & 8) != 8 && (i4 & 256) != 256) {
            i2 &= -265;
            if (i2 <= 0) {
                i2 = 2;
            }
        } else if ((i2 & 256) == 256 && (i2 & 8) == 8) {
            i2 &= -9;
        }
        if ((i4 & 4) != 4 && (i2 = i2 & (-69)) <= 0) {
            i2 = 2;
        }
        if (((AdType.FEED_MIX.value() == i3 ? 1007 : 495) & j.f31916c & i2) != 0) {
            return i2;
        }
        return 2;
    }
}
