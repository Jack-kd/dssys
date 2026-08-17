package com.byazt.rc;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements w {
    public final w hp;

    /* renamed from: l, reason: collision with root package name */
    public final w f25163l;

    public s(w wVar, w wVar2) {
        this.hp = wVar;
        this.f25163l = wVar2;
    }

    @Override // com.byazt.rc.w
    public void l(@NonNull hp hpVar) throws IOException {
        hpVar.f25148l = this.f25163l;
        this.hp.l(hpVar);
    }
}
