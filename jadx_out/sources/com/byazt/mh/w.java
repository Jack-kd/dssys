package com.byazt.mh;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1216, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public int f23055a;
    public int eb;

    /* renamed from: j, reason: collision with root package name */
    public int f23056j;

    /* renamed from: w, reason: collision with root package name */
    public int f23057w;

    public void hp(com.byazt.dk.hp hpVar) throws IOException {
    }

    public void l(com.byazt.dk.hp hpVar) throws IOException {
        int iJ = hpVar.j();
        hp(hpVar);
        int iJ2 = iJ - hpVar.j();
        int i2 = this.f23056j;
        if (iJ2 > i2) {
            throw new IOException("Out of chunk area");
        }
        if (iJ2 < i2) {
            hpVar.hp(i2 - iJ2);
        }
    }

    public static int hp(String str) {
        if (TextUtils.isEmpty(str) || str.length() != 4) {
            return -1159790593;
        }
        return ((str.charAt(3) & 255) << 24) | (str.charAt(0) & 255) | ((str.charAt(1) & 255) << 8) | ((str.charAt(2) & 255) << 16);
    }
}
