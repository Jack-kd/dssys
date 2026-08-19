package com.byazt.ub;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface w {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, 8})
    public static final class hp {

        @Nullable
        public final String hp;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final boolean f26138l;

        public hp(@Nullable String str, boolean z2, long j2) {
            this.hp = str;
            this.f26138l = z2;
            this.jx = j2;
        }
    }

    @AnyThread
    void hp(@NonNull hp hpVar);
}
