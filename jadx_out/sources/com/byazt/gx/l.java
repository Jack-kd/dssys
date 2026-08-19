package com.byazt.gx;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.baidu.mobads.sdk.internal.ax;
import com.byazt.na.j;
import com.byazt.na.q;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import com.byazt.zs.hp;
import com.byazt.zs.w;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 210, 34})
/* loaded from: classes2.dex */
public class l extends jx<UgenLottieView> {
    public ImageView.ScaleType ad;
    public boolean db;
    public String gb;

    @Deprecated
    public boolean gh;

    /* renamed from: h, reason: collision with root package name */
    public ImageView.ScaleType f20623h;
    public String hp;

    /* renamed from: i, reason: collision with root package name */
    public int f20624i;
    public float jb;
    public float nc;
    public final Map<String, Integer> pg;
    public boolean qa;
    public HashMap<String, Bitmap> xv;

    /* renamed from: z, reason: collision with root package name */
    public String f20625z;

    @com.byazt.kj.hp(hp = {0, 1, 210, 22})
    /* renamed from: com.byazt.gx.l$1, reason: invalid class name */
    public class AnonymousClass1 implements j {
        public AnonymousClass1() {
        }

        @Override // com.byazt.na.j
        public Bitmap hp(final q qVar) {
            final String strHp;
            if (qVar == null) {
                return null;
            }
            String strK = qVar.k();
            String strZy = qVar.zy();
            if (!TextUtils.isEmpty(strK) && TextUtils.isEmpty(strZy)) {
                strHp = com.byazt.ss.l.hp(strK, l.this.f27775j);
            } else if (!TextUtils.isEmpty(strZy) && TextUtils.isEmpty(strK)) {
                strHp = com.byazt.ss.l.hp(strZy, l.this.f27775j);
            } else if (TextUtils.isEmpty(strZy) || TextUtils.isEmpty(strK)) {
                strHp = null;
            } else {
                strHp = com.byazt.ss.l.hp(strK, l.this.f27775j) + com.byazt.ss.l.hp(strZy, l.this.f27775j);
            }
            if (TextUtils.isEmpty(strHp)) {
                return null;
            }
            Bitmap bitmap = l.this.xv.get(strHp);
            if (bitmap != null) {
                return bitmap;
            }
            Integer num = l.this.pg.get(strHp);
            if (num == null || num.intValue() == 2) {
                l.this.pg.put(strHp, 1);
            } else if (num.intValue() == 1) {
                return null;
            }
            ((UgenLottieView) l.this.f27788w).hp(strHp, new com.byazt.wf.q() { // from class: com.byazt.gx.l.1.1
                @Override // com.byazt.wf.q
                public void hp(Bitmap bitmap2) {
                    l.this.hp(qVar, strHp, bitmap2);
                }

                @Override // com.byazt.wf.q
                public void hp() {
                    w.hp().l().hp(l.this.f27782q, strHp, new hp.InterfaceC0439hp() { // from class: com.byazt.gx.l.1.1.1
                        @Override // com.byazt.zs.hp.InterfaceC0439hp
                        public void hp(Bitmap bitmap2) {
                            C02611 c02611 = C02611.this;
                            l.this.hp(qVar, strHp, bitmap2);
                        }
                    });
                }
            });
            return l.this.xv.get(strHp);
        }
    }

    public l(Context context) {
        super(context);
        this.f20625z = "images";
        this.jb = 1.0f;
        this.pg = new ConcurrentHashMap();
        this.f20623h = ImageView.ScaleType.FIT_CENTER;
        this.ad = ImageView.ScaleType.FIT_XY;
        this.xv = new HashMap<>();
    }

    private String gu(String str) {
        return (!TextUtils.isEmpty(str) && str.contains(ax.f11061a)) ? str.contains("shake_phone") ? "lottie_json/shake_phone.json" : str.contains("swipe_right") ? "lottie_json/swipe_right.json" : "" : "";
    }

    private ImageView.ScaleType jl(String str) {
        ImageView.ScaleType scaleType;
        scaleType = ImageView.ScaleType.FIT_XY;
        str.getClass();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    private ImageView.ScaleType zy(String str) {
        ImageView.ScaleType scaleType;
        scaleType = ImageView.ScaleType.FIT_XY;
        str.getClass();
        switch (str) {
            case "center":
            case "none":
                return ImageView.ScaleType.CENTER;
            case "fit":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    public void rv() {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((UgenLottieView) t2).hp();
        }
    }

    public void s() {
        su();
        ((UgenLottieView) this.f27788w).hp();
    }

    public void su() {
        if (this.hp.startsWith(ax.f11061a)) {
            ((UgenLottieView) this.f27788w).setAnimation(gu(this.hp));
            ((UgenLottieView) this.f27788w).setImageAssetsFolder(this.f20625z);
            return;
        }
        String str = this.gb;
        if (str == null) {
            ((UgenLottieView) this.f27788w).setAnimationFromUrl(this.hp);
        } else if (TextUtils.equals("", str)) {
            ((UgenLottieView) this.f27788w).l(this.hp, (String) null);
        } else {
            ((UgenLottieView) this.f27788w).l(this.hp, this.gb);
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UgenLottieView hp() {
        UgenLottieView ugenLottieView = new UgenLottieView(this.f27777l);
        ugenLottieView.hp(this);
        return ugenLottieView;
    }

    @Override // com.byazt.xs.jx
    public void l() {
        super.l();
        ((UgenLottieView) this.f27788w).setProgress(this.nc);
        if (this.jb <= 0.0f) {
            this.jb = 1.0f;
        }
        ((UgenLottieView) this.f27788w).setSpeed(this.jb);
        ((UgenLottieView) this.f27788w).setAutoPlay(this.qa);
        ((UgenLottieView) this.f27788w).setImageAssetDelegate(new AnonymousClass1());
        if (hq()) {
            ((UgenLottieView) this.f27788w).setScaleType(this.ad);
        } else {
            ((UgenLottieView) this.f27788w).setScaleType(this.f20623h);
        }
        if (hq()) {
            ((UgenLottieView) this.f27788w).setRepeatCount(this.f20624i);
        } else {
            ((UgenLottieView) this.f27788w).hp(this.gh);
        }
        s();
    }

    public void hp(final q qVar, String str, Bitmap bitmap) {
        if (bitmap != null) {
            final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, qVar.hp(), qVar.l(), false);
            this.xv.put(str, bitmapCreateScaledBitmap);
            this.pg.remove(str);
            s.hp(new Runnable() { // from class: com.byazt.gx.l.2
                @Override // java.lang.Runnable
                public void run() {
                    ((UgenLottieView) l.this.f27788w).hp(qVar.jl(), bitmapCreateScaledBitmap);
                }
            });
            return;
        }
        this.pg.put(str, 2);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "scaleMode":
                this.ad = zy(str2);
                break;
            case "scaleType":
                this.f20623h = jl(str2);
                break;
            case "progress":
                this.nc = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "imagePath":
                this.f20625z = str2;
                break;
            case "autoReverse":
                this.db = com.byazt.xa.jx.hp(str2, false);
                break;
            case "md5":
                this.gb = str2;
                break;
            case "src":
                this.hp = str2;
                break;
            case "loop":
                if (hq()) {
                    this.f20624i = com.byazt.xa.jx.hp(str2, 0);
                    break;
                } else {
                    this.gh = com.byazt.xa.jx.hp(str2, false);
                    break;
                }
            case "speed":
                this.jb = com.byazt.xa.jx.hp(str2, 1.0f);
                break;
            case "autoPlay":
                this.qa = com.byazt.xa.jx.hp(str2, false);
                break;
            case "autoplay":
                this.qa = com.byazt.xa.jx.hp(str2, true);
                break;
        }
    }

    public void hp(AnimatorListenerAdapter animatorListenerAdapter) {
        ((UgenLottieView) this.f27788w).hp(animatorListenerAdapter);
    }
}
