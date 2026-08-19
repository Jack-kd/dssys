package com.byazt.pd;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 34})
/* loaded from: classes3.dex */
public abstract class l {
    public j hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f24349l;

    public l(Context context, String str) {
        try {
            this.f24349l = context == null ? sz.getContext() : context.getApplicationContext();
            if (this.hp == null) {
                this.hp = new j(this.f24349l, str);
            }
        } catch (Throwable unused) {
        }
    }

    public j hp() {
        return this.hp;
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.getClass();
        switch (str) {
        }
        return false;
    }
}
