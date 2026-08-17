package com.byazt.hg;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.ExitInstallListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION, 28})
/* loaded from: classes2.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final ExitInstallListener hp;

    public hp(ExitInstallListener exitInstallListener) {
        this.hp = exitInstallListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp != null && com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987) == 223101) {
            this.hp.onExitInstall();
        }
        return null;
    }
}
