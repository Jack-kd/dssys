package com.byazt.yk;

import com.byazt.ip.IDownloadHttpService;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface n {

    @com.byazt.kj.hp(hp = {0, 1, 90, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM})
    public static class hp implements n {
        @Override // com.byazt.yk.n
        public com.byazt.io.eb hp(Throwable th, String str) {
            return null;
        }

        @Override // com.byazt.yk.n
        public com.byazt.ip.s jx() {
            return null;
        }

        @Override // com.byazt.yk.n
        public IDownloadHttpService l() {
            return null;
        }

        @Override // com.byazt.yk.n
        public boolean hp() {
            return false;
        }

        @Override // com.byazt.yk.n
        public boolean hp(Throwable th) {
            return false;
        }
    }

    com.byazt.io.eb hp(Throwable th, String str);

    boolean hp();

    boolean hp(Throwable th);

    com.byazt.ip.s jx();

    IDownloadHttpService l();
}
