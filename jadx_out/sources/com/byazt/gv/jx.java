package com.byazt.gv;

import com.byazt.nke.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SHARP, 30})
/* loaded from: classes2.dex */
public class jx implements dy {
    public int hp;
    public com.byazt.jn.jx<String, byte[]> jx;

    /* renamed from: l, reason: collision with root package name */
    public int f20613l;

    public jx(int i2, int i3) {
        this.f20613l = i2;
        this.hp = i3;
        this.jx = new com.byazt.jn.jx<String, byte[]>(i2) { // from class: com.byazt.gv.jx.1
            @Override // com.byazt.jn.jx
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int l(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.byazt.nke.hp
    public boolean l(String str) {
        return this.jx.hp((com.byazt.jn.jx<String, byte[]>) str) != null;
    }

    @Override // com.byazt.nke.hp
    public boolean hp(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.jx.hp(str, bArr);
        return true;
    }

    @Override // com.byazt.nke.hp
    public byte[] hp(String str) {
        return this.jx.hp((com.byazt.jn.jx<String, byte[]>) str);
    }

    @Override // com.byazt.nke.hp
    public void hp() {
        hp(0.0d);
    }

    @Override // com.byazt.nke.hp
    public void hp(double d2) {
        this.jx.hp((int) (this.f20613l * d2));
    }
}
