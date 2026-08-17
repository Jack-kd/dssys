package com.byazt.gz;

import com.byazt.pg.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AVPH_DNS_PARSE, 34})
/* loaded from: classes2.dex */
public class l implements dy {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20636a;
    public Class hp;

    /* renamed from: j, reason: collision with root package name */
    public Method f20637j;
    public Method jx;

    /* renamed from: l, reason: collision with root package name */
    public Method f20638l;

    /* renamed from: w, reason: collision with root package name */
    public Method f20639w;

    public l() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        try {
            Class<?> clsLoadClass = getClass().getClassLoader().loadClass("android.os.SystemProperties");
            this.hp = clsLoadClass;
            Method declaredMethod = clsLoadClass.getDeclaredMethod("get", String.class);
            this.f20638l = declaredMethod;
            declaredMethod.setAccessible(true);
            this.f20636a = true;
        } catch (Exception unused) {
            this.hp = null;
            this.f20636a = false;
        }
    }

    private Method hp(String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = this.hp.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.pg.dy
    public String get(String str) {
        return (String) hp(this.f20638l, str);
    }

    @Override // com.byazt.pg.dy
    public boolean getBoolean(String str) {
        if (this.f20639w == null) {
            this.f20639w = hp("getBoolean", String.class, Boolean.TYPE);
        }
        Boolean bool = (Boolean) hp(this.f20639w, str);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // com.byazt.pg.dy
    public int getInt(String str) {
        if (this.jx == null) {
            this.jx = hp("getInt", String.class, Integer.TYPE);
        }
        Integer num = (Integer) hp(this.jx, str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // com.byazt.pg.dy
    public long getLong(String str) {
        if (this.f20637j == null) {
            this.f20637j = hp("getLong", String.class, Long.TYPE);
        }
        Long l2 = (Long) hp(this.f20637j, str);
        if (l2 != null) {
            return l2.longValue();
        }
        return 0L;
    }

    @Override // com.byazt.pg.dy
    public void set(String str, String str2) {
    }

    private <T> T hp(Method method, String str) {
        if (method == null) {
            return null;
        }
        try {
            return (T) method.invoke(this.hp, str);
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean hp() {
        return this.f20636a;
    }
}
