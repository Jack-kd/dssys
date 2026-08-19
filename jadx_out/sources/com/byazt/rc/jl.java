package com.byazt.rc;

import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 19})
/* loaded from: classes3.dex */
public class jl implements w {
    public final q hp;
    public final w jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.fu.w f25149l;

    public jl(DownloadInfo downloadInfo, l lVar, q qVar) throws BaseException {
        this.hp = qVar;
        this.f25149l = hp(downloadInfo, qVar);
        this.jx = new s(lVar, this);
    }

    public w hp() {
        return this.jx;
    }

    public void j() {
        com.byazt.xq.a.hp(this.f25149l);
    }

    public void jx() throws IOException {
        this.f25149l.jx();
    }

    @Override // com.byazt.rc.w
    public void l(@NonNull hp hpVar) throws IOException {
        this.f25149l.hp(hpVar.hp, 0, hpVar.jx);
        this.hp.l(hpVar.jx);
    }

    public q w() {
        return this.hp;
    }

    private com.byazt.fu.w hp(DownloadInfo downloadInfo, q qVar) throws InterruptedException, IOException, BaseException {
        com.byazt.fu.w wVarHp = com.byazt.xq.a.hp(downloadInfo, downloadInfo.getTempPath(), downloadInfo.getTempName(), com.byazt.jb.hp.hp(downloadInfo.getId()).hp("flush_buffer_size_byte", -1));
        try {
            wVarHp.hp(qVar.w());
            return wVarHp;
        } catch (IOException e2) {
            throw new BaseException(1054, e2);
        }
    }

    public void l() throws IOException {
        this.f25149l.l();
    }
}
