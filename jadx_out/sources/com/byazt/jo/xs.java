package com.byazt.jo;

import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 1888, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes.dex */
public class xs {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.tw.a f21651j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21652l;

    /* renamed from: w, reason: collision with root package name */
    public mp f21653w;

    @com.byazt.kj.hp(hp = {0, 1, 1888, 672})
    public static class hp {

        /* renamed from: e, reason: collision with root package name */
        public int f21655e;
        public int gu;
        public int jl;

        /* renamed from: k, reason: collision with root package name */
        public JSONArray f21657k;

        /* renamed from: q, reason: collision with root package name */
        public int f21659q;

        /* renamed from: s, reason: collision with root package name */
        public int f21660s;

        /* renamed from: v, reason: collision with root package name */
        public Map<String, Object> f21661v;
        public long hp = 0;

        /* renamed from: l, reason: collision with root package name */
        public long f21658l = 0;
        public long jx = 0;

        /* renamed from: j, reason: collision with root package name */
        public boolean f21656j = false;

        /* renamed from: w, reason: collision with root package name */
        public boolean f21662w = false;

        /* renamed from: a, reason: collision with root package name */
        public int f21654a = 0;
        public int eb = 0;
        public boolean zy = false;

        public int a() {
            return this.eb;
        }

        public int e() {
            return this.f21655e;
        }

        public int eb() {
            return this.f21660s;
        }

        public int gu() {
            return this.gu;
        }

        public void hp(JSONArray jSONArray) {
            this.f21657k = jSONArray;
        }

        public long j() {
            return this.jx;
        }

        public int jl() {
            return this.jl;
        }

        public long jx() {
            return this.f21658l;
        }

        public boolean k() {
            return this.f21656j;
        }

        public long l() {
            return this.hp;
        }

        public int q() {
            long j2 = this.jx;
            if (j2 <= 0) {
                return 0;
            }
            return Math.min((int) ((this.hp * 100) / j2), 100);
        }

        public int s() {
            return this.f21659q;
        }

        public Map<String, Object> u() {
            return this.f21661v;
        }

        public boolean v() {
            return this.f21662w;
        }

        public int w() {
            return this.f21654a;
        }

        public boolean zy() {
            return this.zy;
        }

        public void a(int i2) {
            this.jl = i2;
        }

        public JSONArray hp() {
            return this.f21657k;
        }

        public void j(int i2) {
            this.f21659q = i2;
        }

        public void jx(long j2) {
            this.jx = j2;
        }

        public void l(long j2) {
            this.f21658l = j2;
        }

        public void w(int i2) {
            this.f21655e = i2;
        }

        public void hp(long j2) {
            this.hp = j2;
        }

        public void jx(int i2) {
            this.f21660s = i2;
        }

        public void l(int i2) {
            this.eb = i2;
        }

        public void hp(int i2) {
            this.f21654a = i2;
        }

        public void jx(boolean z2) {
            this.f21662w = z2;
        }

        public void l(boolean z2) {
            this.f21656j = z2;
        }

        public void hp(boolean z2) {
            this.zy = z2;
        }

        public void hp(Map<String, Object> map) {
            this.f21661v = map;
        }
    }

    public xs(long j2, String str, int i2, com.byazt.tw.a aVar, mp mpVar) {
        this.hp = j2;
        this.f21652l = str;
        this.jx = i2;
        this.f21651j = aVar;
        this.f21653w = mpVar;
    }

    public long hp() {
        return this.hp;
    }

    public com.byazt.tw.a j() {
        return this.f21651j;
    }

    public int jx() {
        return this.jx;
    }

    public String l() {
        return this.f21652l;
    }

    public mp w() {
        return this.f21653w;
    }
}
