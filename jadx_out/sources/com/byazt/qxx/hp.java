package com.byazt.qxx;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS, 28})
/* loaded from: classes3.dex */
public abstract class hp implements l {
    public SparseArray<Method> hp = new SparseArray<>();

    /* renamed from: l, reason: collision with root package name */
    public Object f25076l;

    @Override // com.byazt.qxx.l
    public <T> T call(int i2, Object... objArr) {
        Object obj;
        Method method = this.hp.get(i2);
        if (method == null || (obj = this.f25076l) == null) {
            hp();
            return null;
        }
        try {
            return obj instanceof Class ? (T) method.invoke(null, objArr) : (T) method.invoke(obj, objArr);
        } catch (Throwable th) {
            hp();
            th.getMessage();
            return null;
        }
    }

    public abstract String hp();

    @Override // com.byazt.qxx.l
    public void hp(int i2, Method method) {
        this.hp.put(i2, method);
    }

    @Override // com.byazt.qxx.l
    public void hp(Object obj) {
        this.f25076l = obj;
    }
}
