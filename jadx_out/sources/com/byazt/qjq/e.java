package com.byazt.qjq;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIOTRACK_SMOOTH_CLOCK, 45})
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final int f24737a;

    /* renamed from: e, reason: collision with root package name */
    public final int f24738e;
    public final int eb;
    public final int gu;
    public final int hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f24739j;
    public final int jl;
    public final int jx;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final Map<String, Integer> f24740k;

    /* renamed from: l, reason: collision with root package name */
    public final int f24741l;

    /* renamed from: q, reason: collision with root package name */
    public final int f24742q;

    /* renamed from: s, reason: collision with root package name */
    public final int f24743s;

    /* renamed from: w, reason: collision with root package name */
    public final int f24744w;
    public final int zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIOTRACK_SMOOTH_CLOCK, 773})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f24745a;

        /* renamed from: e, reason: collision with root package name */
        public int f24746e;
        public int eb;
        public int gu;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f24747j;
        public int jl;
        public int jx;

        /* renamed from: k, reason: collision with root package name */
        @NonNull
        public Map<String, Integer> f24748k;

        /* renamed from: l, reason: collision with root package name */
        public int f24749l;

        /* renamed from: q, reason: collision with root package name */
        public int f24750q;

        /* renamed from: s, reason: collision with root package name */
        public int f24751s;

        /* renamed from: w, reason: collision with root package name */
        public int f24752w;
        public int zy;

        public hp(int i2) {
            this.f24748k = Collections.EMPTY_MAP;
            this.hp = i2;
            this.f24748k = new HashMap();
        }

        @NonNull
        public hp a(int i2) {
            this.f24745a = i2;
            return this;
        }

        @NonNull
        public hp e(int i2) {
            this.f24747j = i2;
            return this;
        }

        @NonNull
        public hp eb(int i2) {
            this.f24751s = i2;
            return this;
        }

        @NonNull
        public hp gu(int i2) {
            this.f24752w = i2;
            return this;
        }

        @NonNull
        public hp hp(int i2) {
            this.f24749l = i2;
            return this;
        }

        @NonNull
        public hp j(int i2) {
            this.gu = i2;
            return this;
        }

        @NonNull
        public hp jx(int i2) {
            this.f24746e = i2;
            return this;
        }

        @NonNull
        public hp l(int i2) {
            this.f24750q = i2;
            return this;
        }

        @NonNull
        public hp q(int i2) {
            this.jx = i2;
            return this;
        }

        @NonNull
        public hp s(int i2) {
            this.eb = i2;
            return this;
        }

        @NonNull
        public hp w(int i2) {
            this.jl = i2;
            return this;
        }

        @NonNull
        public hp hp(Map<String, Integer> map) {
            if (map != null) {
                this.f24748k = new HashMap(map);
            }
            return this;
        }

        @NonNull
        public e hp() {
            return new e(this);
        }
    }

    public e(@NonNull hp hpVar) {
        this.hp = hpVar.hp;
        this.f24741l = hpVar.f24749l;
        this.jx = hpVar.jx;
        this.f24739j = hpVar.f24747j;
        this.f24744w = hpVar.f24752w;
        this.f24737a = hpVar.f24745a;
        this.eb = hpVar.eb;
        this.f24743s = hpVar.f24751s;
        this.f24740k = hpVar.f24748k;
        this.f24742q = hpVar.f24746e;
        this.f24738e = hpVar.gu;
        this.gu = hpVar.jl;
        this.jl = hpVar.f24750q;
        this.zy = hpVar.zy;
    }

    public static e hp(com.byazt.tl.j jVar) {
        if (jVar == null) {
            return null;
        }
        hp hpVar = new hp(jVar.hp());
        hpVar.hp(jVar.l()).e(jVar.j()).q(jVar.jx()).jx(jVar.q()).j(jVar.e()).w(jVar.gu()).a(jVar.a()).s(jVar.eb()).gu(jVar.w()).l(jVar.jl()).eb(jVar.s()).hp(jVar.zy());
        return hpVar.hp();
    }

    public static com.byazt.pr.hp hp(e eVar) {
        if (eVar != null) {
            return new com.byazt.pr.hp(eVar);
        }
        return null;
    }
}
