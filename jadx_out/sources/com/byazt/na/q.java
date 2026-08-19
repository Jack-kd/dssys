package com.byazt.na;

import android.graphics.Bitmap;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 2, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public final String f23456a;

    /* renamed from: e, reason: collision with root package name */
    public final String f23457e;
    public final String eb;
    public final int[][] gu;
    public final int hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f23458j;
    public final JSONArray jl;
    public final String jx;

    /* renamed from: k, reason: collision with root package name */
    public final l f23459k;

    /* renamed from: l, reason: collision with root package name */
    public final int f23460l;

    /* renamed from: q, reason: collision with root package name */
    public final List<jx> f23461q;

    /* renamed from: s, reason: collision with root package name */
    public final String f23462s;

    /* renamed from: u, reason: collision with root package name */
    public Bitmap f23463u;

    /* renamed from: v, reason: collision with root package name */
    public final String f23464v;

    /* renamed from: w, reason: collision with root package name */
    public final String f23465w;
    public final hp zy;

    @com.byazt.kj.hp(hp = {0, 1, 2, 3})
    public static class hp {
        public C0316hp hp = null;

        /* renamed from: l, reason: collision with root package name */
        public boolean f23466l;

        @com.byazt.kj.hp(hp = {0, 1, 2, 701})
        /* renamed from: com.byazt.na.q$hp$hp, reason: collision with other inner class name */
        public static class C0316hp {
            public float hp = 5.0f;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR})
    public static class jx {

        /* renamed from: a, reason: collision with root package name */
        public int f23467a;

        /* renamed from: e, reason: collision with root package name */
        public String f23468e;
        public String eb;
        public hp gu;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public String f23469j;
        public hp jl;
        public String jx;

        /* renamed from: k, reason: collision with root package name */
        public int f23470k;

        /* renamed from: l, reason: collision with root package name */
        public int f23471l;

        /* renamed from: q, reason: collision with root package name */
        public int f23472q;

        /* renamed from: s, reason: collision with root package name */
        public int f23473s;

        /* renamed from: w, reason: collision with root package name */
        public String f23474w;
        public int zy;

        @com.byazt.kj.hp(hp = {0, 1, 2, 1445})
        public static class hp {
            public int hp;

            /* renamed from: l, reason: collision with root package name */
            public String f23475l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, 731})
    public static class l {
        public int hp;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f23476l;
    }

    public q(int i2, int i3, String str, String str2, String str3, String str4, List<jx> list, String str5, int[][] iArr, JSONArray jSONArray, String str6, String str7, hp hpVar, l lVar, String str8) {
        this.hp = i2;
        this.f23460l = i3;
        this.jx = str;
        this.f23458j = str2;
        this.f23465w = str3;
        this.f23456a = str4;
        this.eb = str6;
        this.f23462s = str7;
        this.f23461q = list;
        this.f23457e = str5;
        this.gu = iArr;
        this.jl = jSONArray;
        this.zy = hpVar;
        this.f23459k = lVar;
        this.f23464v = str8;
    }

    public String a() {
        return this.f23462s;
    }

    public hp e() {
        return this.zy;
    }

    public String eb() {
        return this.f23457e;
    }

    public l gu() {
        return this.f23459k;
    }

    public int hp() {
        return this.hp;
    }

    public String j() {
        return this.f23456a;
    }

    public String jl() {
        return this.jx;
    }

    public List<jx> jx() {
        return this.f23461q;
    }

    public String k() {
        return this.f23465w;
    }

    public int l() {
        return this.f23460l;
    }

    public JSONArray q() {
        return this.jl;
    }

    public int[][] s() {
        return this.gu;
    }

    public String u() {
        return this.f23464v;
    }

    public Bitmap v() {
        return this.f23463u;
    }

    public String w() {
        return this.eb;
    }

    public String zy() {
        return this.f23458j;
    }

    public void hp(Bitmap bitmap) {
        this.f23463u = bitmap;
    }
}
