package com.byazt.gv;

import android.graphics.Bitmap;
import com.byazt.nke.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SHARP, 34})
/* loaded from: classes2.dex */
public class l implements nu {
    public int hp;
    public com.byazt.jn.jx<String, Bitmap> jx;

    /* renamed from: l, reason: collision with root package name */
    public int f20614l;

    public l(int i2, int i3) {
        this.f20614l = i2;
        this.hp = i3;
        this.jx = new com.byazt.jn.jx<String, Bitmap>(i2) { // from class: com.byazt.gv.l.1
            @Override // com.byazt.jn.jx
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int l(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return l.hp(bitmap);
            }
        };
    }

    @Override // com.byazt.nke.hp
    public boolean l(String str) {
        return this.jx.hp((com.byazt.jn.jx<String, Bitmap>) str) != null;
    }

    @Override // com.byazt.nke.hp
    public boolean hp(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.jx.hp(str, bitmap);
        return true;
    }

    @Override // com.byazt.nke.hp
    public Bitmap hp(String str) {
        return this.jx.hp((com.byazt.jn.jx<String, Bitmap>) str);
    }

    @Override // com.byazt.nke.hp
    public void hp() {
        hp(0.0d);
    }

    @Override // com.byazt.nke.hp
    public void hp(double d2) {
        this.jx.hp((int) (this.f20614l * d2));
    }

    public static int hp(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
