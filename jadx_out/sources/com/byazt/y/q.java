package com.byazt.y;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 150})
/* loaded from: classes3.dex */
public class q {
    public static com.byazt.w.eb hp(Context context, Uri uri) {
        return s.hp(context, uri);
    }

    public static boolean jx(Context context, String str) {
        return s.jx(context, str);
    }

    public static com.byazt.w.eb l(Context context, String str) {
        return s.l(context, str);
    }

    public static com.byazt.w.eb hp(Context context, String str) {
        return s.hp(context, str);
    }

    public static com.byazt.w.eb hp(Context context, com.byazt.w.w wVar, String str) {
        return s.hp(context, wVar, str);
    }

    public static com.byazt.w.eb hp(String str) {
        return l(com.byazt.t.jl.getContext(), str);
    }

    public static com.byazt.w.eb hp(Context context, String str, com.byazt.zv.hp hpVar) {
        return s.hp(context, str, hpVar);
    }

    public static com.byazt.w.eb hp(String str, @NonNull com.byazt.zv.hp hpVar) {
        return s.l(str, hpVar);
    }

    public static com.byazt.w.eb hp(@NonNull com.byazt.zv.l lVar, String str, String str2) {
        return s.hp(lVar, str, str2);
    }
}
