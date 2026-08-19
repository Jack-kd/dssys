package com.byazt.ya;

import android.content.Context;
import com.byazt.mg.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    public final File hp;

    public void hp() {
        com.byazt.vk.hp.hp(new Runnable() { // from class: com.byazt.ya.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.l();
            }
        });
    }

    @Override // com.byazt.ya.hp
    public File j(String str) {
        return w(str);
    }

    @Override // com.byazt.ya.hp
    public File jx(String str) {
        return w(str);
    }

    public void l() {
        com.byazt.mg.jx.hp().l();
        Context context = j.getContext();
        if (context != null) {
            com.byazt.zt.jx.hp(context).hp(1);
        }
        for (File file : this.hp.listFiles()) {
            try {
                file.delete();
            } catch (Throwable unused) {
            }
        }
    }

    public File w(String str) {
        return new File(this.hp, str);
    }
}
