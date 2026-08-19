package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1768, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends hp {
    public s(Context context, com.byazt.jb.hp hpVar, String str) {
        super(context, hpVar, str);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        Intent intent = new Intent(com.byazt.oy.w.jx + ".intent.action.OPEN_FILEMANAGER");
        intent.putExtra("CurrentDir", this.jx);
        intent.putExtra("first_position", 1);
        intent.putExtra("CurrentMode", 1);
        intent.putExtra("com.iqoo.secure", true);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        return intent;
    }
}
