package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 34})
/* loaded from: classes2.dex */
public class l implements q {
    public byte[] hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.nke.eb f19888l;

    public l(byte[] bArr, com.byazt.nke.eb ebVar) {
        this.hp = bArr;
        this.f19888l = ebVar;
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        q wVar;
        int iW = jxVar.w();
        jxVar.hp(this.hp.length);
        if (iW == 2) {
            wVar = com.byazt.qkc.hp.hp(this.hp) ? new w(this.hp, this.f19888l) : (this.f19888l != null || jxVar.q()) ? new s(1001, "not image format", null) : new gu();
        } else if (iW != 3) {
            boolean zL = com.byazt.qkc.hp.l(this.hp);
            if (zL) {
                byte[] bArr = this.hp;
                wVar = new k(bArr, bArr, this.f19888l, zL);
            } else if (com.byazt.qkc.hp.hp(this.hp)) {
                wVar = new w(this.hp, this.f19888l);
            } else {
                byte[] bArr2 = this.hp;
                wVar = new k(bArr2, bArr2, this.f19888l, zL);
            }
        } else {
            byte[] bArr3 = this.hp;
            wVar = new k(bArr3, bArr3, this.f19888l, com.byazt.qkc.hp.l(bArr3));
        }
        jxVar.hp(wVar);
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "image_type";
    }
}
