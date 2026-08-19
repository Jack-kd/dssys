package com.byazt.oda;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static volatile float hp = -1.0f;

    /* renamed from: j, reason: collision with root package name */
    public static volatile int f23983j = -1;
    public static volatile float jx = -1.0f;

    /* renamed from: l, reason: collision with root package name */
    public static volatile int f23984l = -1;

    /* renamed from: w, reason: collision with root package name */
    public static volatile int f23985w = -1;

    public static void hp(Context context) {
        Resources resources;
        if (context == null || (resources = context.getResources()) == null) {
            return;
        }
        if (hp()) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            hp = displayMetrics.density;
            f23984l = displayMetrics.densityDpi;
            jx = displayMetrics.scaledDensity;
            f23983j = displayMetrics.widthPixels;
            f23985w = displayMetrics.heightPixels;
        }
        if (resources.getConfiguration() != null) {
            if (resources.getConfiguration().orientation == 1) {
                if (f23983j > f23985w) {
                    int i2 = f23983j;
                    f23983j = f23985w;
                    f23985w = i2;
                    return;
                }
                return;
            }
            if (f23983j < f23985w) {
                int i3 = f23983j;
                f23983j = f23985w;
                f23985w = i3;
            }
        }
    }

    public static int j(Context context) {
        hp(context);
        return f23985w;
    }

    public static int jx(Context context) {
        hp(context);
        return f23983j;
    }

    public static int l(Context context) {
        hp(context);
        return f23984l;
    }

    private static boolean hp() {
        return hp < 0.0f || f23984l < 0 || jx < 0.0f || f23983j < 0 || f23985w < 0;
    }
}
