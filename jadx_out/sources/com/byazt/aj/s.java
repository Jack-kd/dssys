package com.byazt.aj;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: e, reason: collision with root package name */
    public static volatile int f18030e = 0;
    public static volatile String gu = null;
    public static Context hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f18031j = false;
    public static String jx = "default";

    /* renamed from: l, reason: collision with root package name */
    public static long f18032l;

    /* renamed from: s, reason: collision with root package name */
    public static volatile ConcurrentHashMap<Integer, String> f18034s;

    /* renamed from: w, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static com.byazt.bb.hp f18035w;

    /* renamed from: a, reason: collision with root package name */
    public static com.byazt.bb.l f18029a = new com.byazt.bb.l();
    public static l eb = new l();

    /* renamed from: q, reason: collision with root package name */
    public static com.byazt.bb.s f18033q = null;

    public static long a() {
        return f18032l;
    }

    public static int e() {
        return f18030e;
    }

    public static String eb() {
        return jx;
    }

    public static String gu() {
        return gu;
    }

    public static com.byazt.bb.hp hp() {
        return f18035w;
    }

    public static Context j() {
        return hp;
    }

    public static com.byazt.bb.s jx() {
        if (f18033q == null) {
            synchronized (s.class) {
                f18033q = new com.byazt.bb.s(hp);
            }
        }
        return f18033q;
    }

    public static l l() {
        return eb;
    }

    public static ConcurrentHashMap<Integer, String> q() {
        return f18034s;
    }

    public static boolean s() {
        return f18031j;
    }

    public static com.byazt.bb.l w() {
        return f18029a;
    }

    public static void hp(Context context, w wVar) {
        f18032l = System.currentTimeMillis();
        hp = context;
        f18035w = new com.byazt.bb.hp(context, wVar);
    }
}
