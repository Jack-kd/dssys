package com.byazt.zn;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static List<ResolveInfo> hp(Intent intent, int i2) {
        return com.byazt.jz.sz.getContext().getPackageManager().queryIntentActivities(intent, i2);
    }
}
