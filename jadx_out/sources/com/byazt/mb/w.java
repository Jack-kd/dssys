package com.byazt.mb;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static int hp = -1;

    /* renamed from: j, reason: collision with root package name */
    public static int f22915j = 2;
    public static int jx = 1;

    /* renamed from: l, reason: collision with root package name */
    public static int f22916l = 0;

    /* renamed from: w, reason: collision with root package name */
    public static int f22917w = 3;

    /* renamed from: a, reason: collision with root package name */
    public int f22918a = hp;
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public long f22921s = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f22920q = 0;

    /* renamed from: e, reason: collision with root package name */
    public final List<a> f22919e = new ArrayList();

    public void hp(long j2) {
        this.f22918a = f22916l;
        this.eb = j2;
    }

    public void j(long j2) {
        int i2 = this.f22918a;
        if (i2 == hp || i2 != f22915j) {
            return;
        }
        this.f22918a = jx;
        this.f22919e.add(new a(this.f22921s, j2));
        this.f22921s = 0L;
    }

    public void jx(long j2) {
        int i2;
        int i3 = this.f22918a;
        if (i3 == hp || i3 == (i2 = f22915j) || i3 == f22917w) {
            return;
        }
        this.f22918a = i2;
        this.f22921s = j2;
    }

    public void l(long j2) {
        int i2;
        int i3 = this.f22918a;
        if (i3 == hp || i3 == (i2 = f22917w)) {
            return;
        }
        this.f22918a = i2;
        this.f22920q = j2;
    }

    public long hp(long j2, long j3) {
        long j4;
        long j5;
        long jL;
        long j6 = this.f22920q;
        if (j6 != 0 && j2 > j6) {
            return 0L;
        }
        int i2 = 0;
        for (a aVar : this.f22919e) {
            if (aVar.l() > j2) {
                if (j2 < aVar.hp()) {
                    j5 = i2;
                    jL = aVar.l() - aVar.hp();
                } else {
                    j5 = i2;
                    jL = aVar.l() - j2;
                }
                i2 = (int) (j5 + jL);
            }
        }
        long j7 = this.eb;
        if (j7 < j2) {
            long j8 = this.f22921s;
            if (j8 == 0) {
                j8 = this.f22920q;
                if (j8 == 0) {
                    j4 = j3 - j2;
                }
            } else if (j8 <= j2) {
                return 0L;
            }
            return (j8 - j2) - i2;
        }
        long j9 = this.f22921s;
        if (j9 == 0) {
            j9 = this.f22920q;
            if (j9 == 0) {
                j4 = j3 - j7;
            }
        } else if (j9 <= j7) {
            return 0L;
        }
        return (j9 - j7) - i2;
        return j4 - i2;
    }

    public int hp() {
        return this.f22918a;
    }
}
