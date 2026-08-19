package com.byazt.jkd;

import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 150})
/* loaded from: classes.dex */
public class q {
    public static final AtomicInteger hp = new AtomicInteger(com.byazt.rz.l.l(sz.getContext(), "sync_switch", 0).getInt("status", 1));
    public static PluginValueSet jx;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.jz.jx f21590l;

    public static boolean hp() {
        return hp.get() == 1;
    }

    public static void hp(int i2) {
        com.byazt.jz.jx jxVar;
        if (i2 == 1 || i2 == 2) {
            com.byazt.rz.l.l(sz.getContext(), "sync_switch", 0).edit().putInt("status", i2).apply();
            AtomicInteger atomicInteger = hp;
            int i3 = atomicInteger.get();
            atomicInteger.set(i2);
            if (i3 != 2 || i2 != 1 || (jxVar = f21590l) == null || jxVar.isInitSuccess()) {
                return;
            }
            try {
                f21590l.init(sz.getContext(), jx, new com.byazt.hde.jx((Function) jx.objectValue(15, Function.class)));
                f21590l = null;
                jx = null;
            } catch (Throwable th) {
                u.hp("SdkSwitch", "init sdk error", th);
            }
        }
    }
}
