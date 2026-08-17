package com.byazt.qca;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedList;
import java.util.Queue;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FEED_PACKET_UNTIL_EMPTY, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: j, reason: collision with root package name */
    public final Queue<Long> f24559j = new LinkedList();
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f24560l;

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public boolean l() {
        synchronized (hp.class) {
            try {
                if (this.f24560l > 0 && this.jx > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (this.f24559j.size() >= this.f24560l) {
                        while (this.f24559j.size() > this.f24560l) {
                            this.f24559j.poll();
                        }
                        if (Math.abs(jCurrentTimeMillis - this.f24559j.peek().longValue()) <= this.jx) {
                            return true;
                        }
                        this.f24559j.poll();
                        this.f24559j.offer(Long.valueOf(jCurrentTimeMillis));
                    } else {
                        this.f24559j.offer(Long.valueOf(jCurrentTimeMillis));
                    }
                    return false;
                }
                return false;
            } finally {
            }
        }
    }

    public void hp(long j2, long j3) {
        synchronized (hp.class) {
            try {
                if (this.f24560l != j2 || this.jx != j3) {
                    this.f24560l = j2;
                    this.jx = j3;
                    this.f24559j.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
