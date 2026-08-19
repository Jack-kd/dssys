package com.byazt.tz;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.byazt.ql.eb;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import com.byazt.zs.hp;
import com.byazt.zs.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 28})
/* loaded from: classes3.dex */
public class hp extends jx<BrokenImage> {
    public float gb;
    public String hp;
    public volatile boolean xv;

    public hp(Context context) {
        super(context);
        this.xv = false;
    }

    private void s() {
        eb ebVar = this.ed;
        if (ebVar != null) {
            ebVar.hp();
        }
        w.hp().l().hp(this.f27782q, this.hp, new hp.InterfaceC0439hp() { // from class: com.byazt.tz.hp.1
            @Override // com.byazt.zs.hp.InterfaceC0439hp
            public void hp(final Bitmap bitmap) {
                if (bitmap == null) {
                    if (hp.this.ed != null) {
                        eb ebVar2 = hp.this.ed;
                        hp hpVar = hp.this;
                        ebVar2.l(hpVar, hpVar.hp);
                        return;
                    }
                    return;
                }
                final Bitmap[] bitmapArr = new Bitmap[1];
                if (hp.this.gb > 0.0f) {
                    bitmapArr[0] = s.hp(hp.this.f27777l, bitmap, (int) hp.this.gb);
                }
                s.hp(new Runnable() { // from class: com.byazt.tz.hp.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BrokenImage brokenImage = (BrokenImage) hp.this.f27788w;
                        Bitmap bitmap2 = bitmapArr[0];
                        if (bitmap2 == null) {
                            bitmap2 = bitmap;
                        }
                        brokenImage.setBitmap(bitmap2);
                    }
                });
                if (hp.this.ed != null) {
                    eb ebVar3 = hp.this.ed;
                    hp hpVar2 = hp.this;
                    ebVar3.hp(hpVar2, hpVar2.hp);
                }
            }
        });
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void a() {
        super.a();
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public BrokenImage hp() {
        BrokenImage brokenImage = new BrokenImage(this.f27777l);
        brokenImage.hp(this);
        return brokenImage;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        s();
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void w() {
        super.w();
    }

    public void hp(final int i2, final int i3, final int i4) {
        if (this.xv) {
            return;
        }
        this.xv = true;
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.tz.hp.2
            @Override // java.lang.Runnable
            public void run() {
                ((BrokenImage) hp.this.f27788w).hp(i2, i3);
                ((BrokenImage) hp.this.f27788w).hp(i4);
            }
        });
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        if (str.equals("imageBlur")) {
            this.gb = com.byazt.xa.jx.hp(str2, -1.0f);
        } else if (str.equals("src")) {
            this.hp = str2;
        }
    }
}
