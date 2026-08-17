package com.byazt.u;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF, 34})
/* loaded from: classes3.dex */
public class l {

    public interface hp<T> {
        T l();
    }

    public static <T> T hp(boolean z2, String str, @NonNull hp<T> hpVar) throws JSONException {
        try {
            return hpVar.l();
        } catch (Throwable th) {
            if (th instanceof com.byazt.u.hp) {
                throw th;
            }
            jx.hp().hp(z2, th, str);
            if (TextUtils.isEmpty(str)) {
                throw th;
            }
            return null;
        }
    }

    public static <T> T hp(hp<T> hpVar) {
        return (T) hp(true, null, hpVar);
    }

    public static void hp(final Runnable runnable) {
        hp(new hp<Void>() { // from class: com.byazt.u.l.1
            @Override // com.byazt.u.l.hp
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Void l() {
                runnable.run();
                return null;
            }
        });
    }
}
