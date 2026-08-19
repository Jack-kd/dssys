package com.byazt.cd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 30})
/* loaded from: classes2.dex */
public final class jx {
    public final com.byazt.raq.a eb;

    /* renamed from: q, reason: collision with root package name */
    public final int f18798q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.raq.a f18799s;
    public static final com.byazt.raq.a hp = com.byazt.raq.a.hp(":");

    /* renamed from: l, reason: collision with root package name */
    public static final com.byazt.raq.a f18796l = com.byazt.raq.a.hp(":status");
    public static final com.byazt.raq.a jx = com.byazt.raq.a.hp(":method");

    /* renamed from: j, reason: collision with root package name */
    public static final com.byazt.raq.a f18795j = com.byazt.raq.a.hp(":path");

    /* renamed from: w, reason: collision with root package name */
    public static final com.byazt.raq.a f18797w = com.byazt.raq.a.hp(":scheme");

    /* renamed from: a, reason: collision with root package name */
    public static final com.byazt.raq.a f18794a = com.byazt.raq.a.hp(":authority");

    public jx(String str, String str2) {
        this(com.byazt.raq.a.hp(str), com.byazt.raq.a.hp(str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof jx) {
            jx jxVar = (jx) obj;
            if (this.eb.equals(jxVar.eb) && this.f18799s.equals(jxVar.f18799s)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.eb.hashCode() + 527) * 31) + this.f18799s.hashCode();
    }

    public String toString() {
        return com.byazt.ru.jx.hp("%s: %s", this.eb.hp(), this.f18799s.hp());
    }

    public jx(com.byazt.raq.a aVar, String str) {
        this(aVar, com.byazt.raq.a.hp(str));
    }

    public jx(com.byazt.raq.a aVar, com.byazt.raq.a aVar2) {
        this.eb = aVar;
        this.f18799s = aVar2;
        this.f18798q = aVar.eb() + 32 + aVar2.eb();
    }
}
