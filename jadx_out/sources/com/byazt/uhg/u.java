package com.byazt.uhg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public abstract class u implements Closeable {
    public abstract xs a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract a eb();

    public abstract long hp();

    public abstract String hp(String str);

    public abstract String hp(String str, String str2);

    public abstract boolean j();

    public abstract int jx();

    public abstract long l();

    public abstract gu s();

    public abstract String w() throws IOException;
}
