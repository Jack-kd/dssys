package com.byazt.y;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 34})
/* loaded from: classes3.dex */
public class l {
    public static final hp hp = new C0414l();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 123})
    public static class hp {
        private hp() {
        }

        public <T> void hp(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 1376})
    @TargetApi(11)
    /* renamed from: com.byazt.y.l$l, reason: collision with other inner class name */
    public static class C0414l extends hp {
        private C0414l() {
            super();
        }

        @Override // com.byazt.y.l.hp
        public <T> void hp(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    public static <T> void hp(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        hp.hp(asyncTask, tArr);
    }
}
