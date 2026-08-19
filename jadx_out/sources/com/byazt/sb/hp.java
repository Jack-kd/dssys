package com.byazt.sb;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.dnb.s;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.qp.RoundImageView;
import com.byazt.uid.eb;
import com.byazt.ws.l;
import com.byazt.xs.jx;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1179, 28})
/* loaded from: classes3.dex */
public class hp extends jx<RoundImageView> {
    public int gb;
    public String hp;

    public hp(Context context) {
        super(context);
        this.gb = 25;
    }

    private void s() {
        if (TextUtils.isEmpty(this.hp)) {
            return;
        }
        ((RoundImageView) this.f27788w).setImageDrawable(null);
        if (!this.hp.startsWith("local://")) {
            l.hp(this.hp).type(2).to(new b() { // from class: com.byazt.sb.hp.2
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u uVar) {
                    Object result = uVar.getResult();
                    if (result == null || !(result instanceof Bitmap)) {
                        return;
                    }
                    hp.this.hp((Bitmap) result);
                }
            }, 4);
        } else {
            v.hp(this.f27777l, this.hp.replace("local://", ""), new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.sb.hp.1
                @Override // com.byazt.oxb.hp
                public void hp(Bitmap bitmap) {
                    hp.this.l(bitmap);
                }
            }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public RoundImageView hp() {
        RoundImageView roundImageView = new RoundImageView(this.f27777l);
        roundImageView.hp(this);
        return roundImageView;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        s();
        ((RoundImageView) this.f27788w).setScaleType(ImageView.ScaleType.FIT_XY);
        ((RoundImageView) this.f27788w).setBorderColor(this.su);
        ((RoundImageView) this.f27788w).setCornerRadius(this.f27778m);
        ((RoundImageView) this.f27788w).setBorderWidth(this.ea);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Bitmap bitmap) {
        final Bitmap bitmapHp = com.byazt.sq.l.hp(this.f27777l, bitmap, 25);
        if (bitmapHp != null) {
            s.hp(new Runnable() { // from class: com.byazt.sb.hp.3
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.f27788w != null) {
                        ((RoundImageView) hp.this.f27788w).setImageBitmap(bitmapHp);
                    }
                }
            });
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        if (str.equals("blurRate")) {
            try {
                this.gb = Integer.parseInt(str2);
            } catch (Exception unused) {
            }
        } else if (str.equals("src")) {
            this.hp = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final Bitmap bitmap) {
        s.hp(new eb("UG_decode_img") { // from class: com.byazt.sb.hp.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Bitmap bitmap2 = bitmap;
                    if (bitmap2 != null) {
                        hp.this.hp(bitmap2);
                    }
                } catch (Exception unused) {
                }
            }
        });
    }
}
