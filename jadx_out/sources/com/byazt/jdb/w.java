package com.byazt.jdb;

import android.os.SystemClock;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 169, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public long f21428a;
    public long eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public long f21430j;
    public long jx;

    /* renamed from: q, reason: collision with root package name */
    public String f21432q;

    /* renamed from: s, reason: collision with root package name */
    public mp f21433s;

    /* renamed from: w, reason: collision with root package name */
    public long f21434w;

    /* renamed from: l, reason: collision with root package name */
    public AtomicBoolean f21431l = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public AtomicLong f21429e = new AtomicLong(0);
    public AtomicInteger gu = new AtomicInteger(0);
    public AtomicLong jl = new AtomicLong(0);
    public volatile boolean zy = false;

    public w(mp mpVar, String str) {
        this.f21433s = mpVar;
        this.f21432q = str;
    }

    private void j(long j2) {
        if (this.f21428a <= 0) {
            this.f21428a = j2;
        }
    }

    private boolean jx(int i2) {
        return i2 == 56 || i2 == 51 || i2 == 52 || i2 == 57 || i2 == 55 || i2 == 53 || i2 == 54;
    }

    private void l(long j2) {
        if (this.f21430j <= 0) {
            this.f21430j = j2;
        }
    }

    private void w(long j2) {
        if (this.eb <= 0) {
            this.eb = j2;
        }
    }

    public void hp(boolean z2) {
        this.zy = z2;
    }

    private void jx(long j2) {
        if (this.f21434w <= 0) {
            this.f21434w = j2;
        }
    }

    public boolean hp() {
        return this.zy;
    }

    private void hp(long j2) {
        if (this.jx <= 0) {
            this.jx = j2;
        }
    }

    private boolean j(int i2) {
        return !this.zy && jx(i2);
    }

    private void l(int i2) throws JSONException {
        this.gu.set(i2);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime == 0) {
            k.hp().hp(this.f21433s, "currentElapsedRealTime");
        }
        switch (i2) {
            case 11:
                this.f21429e.set(jElapsedRealtime);
                this.jl.set(jElapsedRealtime);
                break;
            case 12:
                if (this.jl.get() != 0) {
                    this.f21429e.set(jElapsedRealtime);
                    break;
                }
                break;
            case 13:
                if (this.jl.get() != 0) {
                    hp(jElapsedRealtime, i2);
                    break;
                }
                break;
            case 15:
                if (this.f21429e.get() != 0 && this.gu.get() != 14) {
                    hp(jElapsedRealtime, i2);
                    break;
                }
                break;
        }
    }

    public void hp(int i2) {
        if (j(i2)) {
            return;
        }
        int i3 = this.gu.get();
        this.hp++;
        if (i3 != 13 && i3 != 15 && this.jl.get() != 0) {
            hp(SystemClock.elapsedRealtime(), i2);
        } else if (i3 == 14) {
            k.hp().hp(this.f21433s, "attach");
        }
    }

    private void hp(long j2, int i2) {
        j.hp(String.valueOf(j2 - (this.f21429e.get() == 0 ? this.jl : this.f21429e).get()), this.f21433s, this.f21432q, i2, l());
        this.f21429e.set(0L);
    }

    public Map<String, Long> l() {
        HashMap map = new HashMap();
        try {
            long j2 = this.jx;
            if (j2 > 0) {
                map.put("show_start", Long.valueOf(j2));
                long j3 = this.f21430j;
                if (j3 > 0) {
                    map.put("show_firstQuartile", Long.valueOf(j3));
                    long j4 = this.f21434w;
                    if (j4 > 0) {
                        map.put("show_mid", Long.valueOf(j4));
                        long j5 = this.f21428a;
                        if (j5 > 0) {
                            map.put("show_thirdQuartile", Long.valueOf(j5));
                            long j6 = this.eb;
                            if (j6 > 0) {
                                map.put("show_full", Long.valueOf(j6));
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    public void hp(float f2, int i2) {
        if (j(i2)) {
            return;
        }
        hp(f2);
        l(i2);
    }

    public void hp(float f2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f2 >= 1.0f) {
            hp(jCurrentTimeMillis);
            l(jCurrentTimeMillis);
            jx(jCurrentTimeMillis);
            j(jCurrentTimeMillis);
            w(jCurrentTimeMillis);
            return;
        }
        double d2 = f2;
        if (d2 >= 0.75d) {
            hp(jCurrentTimeMillis);
            l(jCurrentTimeMillis);
            jx(jCurrentTimeMillis);
            j(jCurrentTimeMillis);
            return;
        }
        if (d2 >= 0.5d) {
            hp(jCurrentTimeMillis);
            l(jCurrentTimeMillis);
            jx(jCurrentTimeMillis);
        } else if (d2 >= 0.25d) {
            hp(jCurrentTimeMillis);
            l(jCurrentTimeMillis);
        } else if (f2 > 0.0f) {
            hp(jCurrentTimeMillis);
        }
    }
}
