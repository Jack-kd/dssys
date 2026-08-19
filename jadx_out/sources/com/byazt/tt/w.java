package com.byazt.tt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 1478, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w extends RuntimeException {
    public static final Method hp;

    /* renamed from: l, reason: collision with root package name */
    public IOException f25997l;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            declaredMethod = null;
        }
        hp = declaredMethod;
    }

    public w(IOException iOException) {
        super(iOException);
        this.f25997l = iOException;
    }

    public IOException hp() {
        return this.f25997l;
    }

    public void hp(IOException iOException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        hp(iOException, this.f25997l);
        this.f25997l = iOException;
    }

    private void hp(IOException iOException, IOException iOException2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = hp;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }
}
