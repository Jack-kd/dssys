package com.byazt.hk;

import android.content.Context;
import com.byazt.hk.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes2.dex */
public final class o implements xs {
    public static Object hp;
    public static Method jx;

    /* renamed from: l, reason: collision with root package name */
    public static Class<?> f20721l;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f20721l = cls;
            hp = cls.newInstance();
            jx = f20721l.getMethod("getOAID", Context.class);
        } catch (Exception e2) {
            com.byazt.gt.e.hp("Api#static reflect exception! " + e2.getMessage());
        }
    }

    public static boolean hp() {
        return (f20721l == null || hp == null || jx == null) ? false : true;
    }

    @Override // com.byazt.hk.xs
    public xs.hp jx(Context context) {
        try {
            xs.hp hpVar = new xs.hp();
            hpVar.f20732l = hp(context, jx);
            return hpVar;
        } catch (Exception e2) {
            com.byazt.gt.e.hp(e2);
            return null;
        }
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        return hp();
    }

    private static String hp(Context context, Method method) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = hp;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(obj, context);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
