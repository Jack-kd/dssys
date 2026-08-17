package com.byazt.aj;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS, 94})
/* loaded from: classes2.dex */
public final class eb {
    public static boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f18015j = false;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f18016l = false;

    public static synchronized void hp(@NonNull Context context, @NonNull w wVar, boolean z2, boolean z3) {
        hp(context, wVar, z2, false, z3);
    }

    public static synchronized void hp(@NonNull Context context, @NonNull w wVar, boolean z2, boolean z3, boolean z4) {
        hp(context, wVar, z2, z2, z3, z4);
    }

    public static synchronized void hp(@NonNull final Context context, @NonNull w wVar, boolean z2, boolean z3, boolean z4, final boolean z5) {
        try {
            if (hp) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("context must be not null.");
            }
            if (wVar != null) {
                if (!(context instanceof Application)) {
                    context = context.getApplicationContext();
                }
                if (com.byazt.kw.hp.jx(context)) {
                    return;
                }
                s.hp(context, wVar);
                com.byazt.hc.w.hp(context);
                if (z2 || z3) {
                    com.byazt.ev.hp hpVarHp = com.byazt.ev.hp.hp();
                    if (z2) {
                        hpVarHp.hp(new com.byazt.ev.jx(context));
                    }
                    f18016l = true;
                }
                f18015j = z4;
                hp = true;
                jx = z5;
                com.byazt.bb.eb.l().post(new Runnable() { // from class: com.byazt.aj.eb.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.ut.hp.hp().hp(context);
                        com.byazt.ms.j.hp(context);
                        if (z5) {
                            com.byazt.dj.a.hp(context).hp();
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("params must be not null.");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Deprecated
    public static void hp(String str) {
        if (s.w().hp()) {
            com.byazt.ev.hp.hp(str);
        }
    }

    public static void hp(a aVar) {
        s.l().hp(aVar);
    }

    public static void hp(Map<? extends String, ? extends String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        s.l().hp(map);
    }

    public static void hp(final com.byazt.zy.l lVar) {
        com.byazt.bb.eb.l().post(new Runnable() { // from class: com.byazt.aj.eb.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.zy.hp.hp(lVar);
            }
        });
    }

    public static void hp() {
        com.byazt.ev.hp.l();
    }
}
