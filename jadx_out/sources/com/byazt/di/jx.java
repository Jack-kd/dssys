package com.byazt.di;

import android.text.TextUtils;
import com.byazt.zg.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 30})
/* loaded from: classes2.dex */
public class jx {
    public static String hp;

    /* renamed from: l, reason: collision with root package name */
    public static String f19147l;

    private static String a() {
        String string = com.byazt.lto.hp.hp().getString("server_dist_host", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        if (TextUtils.equals(string, hp) && !TextUtils.isEmpty(f19147l)) {
            return f19147l;
        }
        hp = string;
        f19147l = null;
        if (!TextUtils.isEmpty(string)) {
            f19147l = com.byazt.zg.hp.l(hp, com.byazt.zg.l.hp());
        }
        if (TextUtils.isEmpty(f19147l)) {
            return null;
        }
        String str = "https://" + f19147l;
        f19147l = str;
        return str;
    }

    public static String hp() {
        return ud.hp(w() + "/api/ad/union/mediation/config/");
    }

    public static String j() {
        return ud.hp(w() + "/api/ad/union/mediation/reward_video/reward/");
    }

    public static String jx() {
        return ud.hp(w() + "/api/ad/union/mediation/exchange/");
    }

    public static String l() {
        return ud.hp("https://" + l.l().v());
    }

    private static String w() {
        String strA = a();
        return !TextUtils.isEmpty(strA) ? strA : "https://gromore.pangolin-sdk-toutiao.com";
    }
}
