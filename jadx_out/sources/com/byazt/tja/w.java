package com.byazt.tja;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1570, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public abstract class w {
    public static final String hp = "w";

    /* renamed from: l, reason: collision with root package name */
    public Looper f25880l = Looper.getMainLooper();
    public final Set<String> jx = new HashSet(1);

    @com.byazt.kj.hp(hp = {0, 1, 1570, 1186})
    /* renamed from: com.byazt.tja.w$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[jx.values().length];
            hp = iArr;
            try {
                iArr[jx.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[jx.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[jx.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public abstract void hp();

    public abstract void hp(String str);

    public final synchronized boolean hp(@NonNull String str, int i2) {
        if (i2 == 0) {
            return hp(str, jx.GRANTED);
        }
        return hp(str, jx.DENIED);
    }

    public synchronized boolean l(String str) {
        com.byazt.aw.l.l(hp, "permission not found:".concat(String.valueOf(str)));
        return true;
    }

    public final synchronized boolean hp(@NonNull final String str, jx jxVar) {
        this.jx.remove(str);
        int i2 = AnonymousClass5.hp[jxVar.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                new Handler(this.f25880l).post(new Runnable() { // from class: com.byazt.tja.w.2
                    @Override // java.lang.Runnable
                    public void run() {
                        w.this.hp(str);
                    }
                });
                return true;
            }
            if (i2 == 3) {
                if (l(str)) {
                    if (this.jx.isEmpty()) {
                        new Handler(this.f25880l).post(new Runnable() { // from class: com.byazt.tja.w.3
                            @Override // java.lang.Runnable
                            public void run() {
                                w.this.hp();
                            }
                        });
                        return true;
                    }
                } else {
                    new Handler(this.f25880l).post(new Runnable() { // from class: com.byazt.tja.w.4
                        @Override // java.lang.Runnable
                        public void run() {
                            w.this.hp(str);
                        }
                    });
                    return true;
                }
            }
        } else if (this.jx.isEmpty()) {
            new Handler(this.f25880l).post(new Runnable() { // from class: com.byazt.tja.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.this.hp();
                }
            });
            return true;
        }
        return false;
    }

    public final synchronized void hp(@NonNull String[] strArr) {
        Collections.addAll(this.jx, strArr);
    }
}
