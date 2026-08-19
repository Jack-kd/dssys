package com.byazt.na;

import android.content.Context;
import android.os.Trace;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static long[] f23514a = null;

    /* renamed from: e, reason: collision with root package name */
    public static com.byazt.uz.w f23515e = null;
    public static int eb = 0;
    public static volatile com.byazt.uz.s gu = null;
    public static boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f23516j = true;
    public static volatile com.byazt.uz.eb jl = null;
    public static boolean jx = true;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f23517l = false;

    /* renamed from: q, reason: collision with root package name */
    public static com.byazt.uz.a f23518q;

    /* renamed from: s, reason: collision with root package name */
    public static int f23519s;

    /* renamed from: w, reason: collision with root package name */
    public static String[] f23520w;

    public static void hp(String str) {
        if (f23517l) {
            int i2 = eb;
            if (i2 == 20) {
                f23519s++;
                return;
            }
            f23520w[i2] = str;
            f23514a[i2] = System.nanoTime();
            Trace.beginSection(str);
            eb++;
        }
    }

    public static float l(String str) {
        int i2 = f23519s;
        if (i2 > 0) {
            f23519s = i2 - 1;
            return 0.0f;
        }
        if (!f23517l) {
            return 0.0f;
        }
        int i3 = eb - 1;
        eb = i3;
        if (i3 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(f23520w[i3])) {
            Trace.endSection();
            return (System.nanoTime() - f23514a[eb]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f23520w[eb] + i.f2495E);
    }

    public static com.byazt.uz.s hp(Context context) {
        com.byazt.uz.s sVar;
        com.byazt.uz.s sVar2 = gu;
        if (sVar2 != null) {
            return sVar2;
        }
        synchronized (com.byazt.uz.s.class) {
            try {
                sVar = gu;
                if (sVar == null) {
                    com.byazt.uz.eb ebVarL = l(context);
                    com.byazt.uz.a lVar = f23518q;
                    if (lVar == null) {
                        lVar = new com.byazt.uz.l();
                    }
                    sVar = new com.byazt.uz.s(ebVarL, lVar);
                    gu = sVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sVar;
    }

    public static com.byazt.uz.eb l(Context context) {
        com.byazt.uz.eb ebVar;
        if (!jx) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        com.byazt.uz.eb ebVar2 = jl;
        if (ebVar2 != null) {
            return ebVar2;
        }
        synchronized (com.byazt.uz.eb.class) {
            try {
                ebVar = jl;
                if (ebVar == null) {
                    com.byazt.uz.w wVar = f23515e;
                    if (wVar == null) {
                        wVar = new com.byazt.uz.w() { // from class: com.byazt.na.w.1
                            @Override // com.byazt.uz.w
                            public File hp() {
                                return new File(com.byazt.rz.l.l(applicationContext), "lottie_network_cache");
                            }
                        };
                    }
                    ebVar = new com.byazt.uz.eb(wVar);
                    jl = ebVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ebVar;
    }

    public static boolean hp() {
        return f23516j;
    }
}
