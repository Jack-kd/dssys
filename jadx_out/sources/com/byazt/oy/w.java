package com.byazt.oy;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1518, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static long f24275a = 5242880;
    public static long eb = 31457280;
    public static volatile String hp = "";

    /* renamed from: j, reason: collision with root package name */
    public static long f24276j = 512000;
    public static volatile String jx = "";

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f24277l = "";

    /* renamed from: q, reason: collision with root package name */
    public static final JSONObject f24278q = new JSONObject();

    /* renamed from: s, reason: collision with root package name */
    public static long f24279s = 10485760;

    /* renamed from: w, reason: collision with root package name */
    public static long f24280w = 50;

    public static void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hp = str;
    }
}
