package com.byazt.aa;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.byazt.mk.jx;
import com.byazt.tw.a;
import com.byazt.tw.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_INTERVAL, 28})
/* loaded from: classes2.dex */
public class hp extends MediaDataSource {
    public static final ConcurrentHashMap<String, hp> hp = new ConcurrentHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public final Context f17952j;
    public long jx = -2147483648L;

    /* renamed from: l, reason: collision with root package name */
    public final jx f17953l;

    /* renamed from: w, reason: collision with root package name */
    public final a f17954w;

    public hp(Context context, l lVar, a aVar) {
        this.f17952j = context;
        this.f17954w = aVar;
        this.f17953l = new com.byazt.mk.l(context, lVar, aVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f17954w.getUrl();
        jx jxVar = this.f17953l;
        if (jxVar != null) {
            jxVar.l();
        }
        hp.remove(this.f17954w.getFileNameKey());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.jx == -2147483648L) {
            if (this.f17952j == null || TextUtils.isEmpty(this.f17954w.getUrl())) {
                return -1L;
            }
            this.jx = this.f17953l.jx();
        }
        return this.jx;
    }

    public a hp() {
        return this.f17954w;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j2, byte[] bArr, int i2, int i3) throws IOException {
        return this.f17953l.hp(j2, bArr, i2, i3);
    }

    public static hp hp(Context context, l lVar, a aVar) {
        hp hpVar = new hp(context, lVar, aVar);
        hp.put(aVar.getFileNameKey(), hpVar);
        return hpVar;
    }
}
