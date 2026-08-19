package com.byazt.y;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 45})
/* loaded from: classes3.dex */
public class e {
    public static Map<String, hp> hp = Collections.synchronizedMap(new HashMap());

    public interface hp {
        void hp();

        void hp(String str);
    }

    public static void hp(String[] strArr, hp hpVar) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        hp(strValueOf, hpVar);
        TTDelegateActivity.hp(strValueOf, strArr);
    }

    private static hp jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.remove(str);
    }

    public static boolean l(String str) {
        return com.byazt.t.jl.w().hp(com.byazt.t.jl.getContext(), str);
    }

    public static void hp(String str) {
        hp hpVarJx;
        if (TextUtils.isEmpty(str) || (hpVarJx = jx(str)) == null) {
            return;
        }
        hpVarJx.hp();
    }

    public static void hp(String str, String str2) {
        hp hpVarJx;
        if (TextUtils.isEmpty(str) || (hpVarJx = jx(str)) == null) {
            return;
        }
        hpVarJx.hp(str2);
    }

    private static void hp(String str, hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        hp.put(str, hpVar);
    }
}
