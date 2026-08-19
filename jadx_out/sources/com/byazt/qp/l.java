package com.byazt.qp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.byazt.ql.eb;
import com.byazt.ql.k;
import com.byazt.xa.j;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import com.byazt.zs.hp;
import com.byazt.zs.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, 1349, 34})
/* loaded from: classes3.dex */
public class l extends jx<RoundImageView> {
    public float ad;
    public int db;
    public ImageView.ScaleType gb;
    public float gh;

    /* renamed from: h, reason: collision with root package name */
    public int f25035h;
    public String hp;
    public String pg;
    public boolean xv;

    /* renamed from: z, reason: collision with root package name */
    public float f25036z;

    public l(Context context) {
        super(context);
        this.gb = ImageView.ScaleType.FIT_XY;
        this.f25035h = -1;
        this.ad = -1.0f;
        this.f25036z = -1.0f;
        this.db = 0;
        this.gh = 50.0f;
    }

    private void rv() {
        if (this.ad > 0.0f) {
            eb ebVar = this.ed;
            if (ebVar != null) {
                ebVar.hp();
            }
            w.hp().l().hp(this.f27782q, this.hp, new hp.InterfaceC0439hp() { // from class: com.byazt.qp.l.1
                @Override // com.byazt.zs.hp.InterfaceC0439hp
                public void hp(Bitmap bitmap) {
                    if (bitmap == null) {
                        if (l.this.ed != null) {
                            eb ebVar2 = l.this.ed;
                            l lVar = l.this;
                            ebVar2.l(lVar, lVar.hp);
                            return;
                        }
                        return;
                    }
                    if (l.this.ed != null) {
                        eb ebVar3 = l.this.ed;
                        l lVar2 = l.this;
                        ebVar3.hp(lVar2, lVar2.hp);
                    }
                    final Bitmap bitmapHp = s.hp(l.this.f27777l, bitmap, (int) l.this.ad);
                    if (bitmapHp != null) {
                        s.hp(new Runnable() { // from class: com.byazt.qp.l.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((RoundImageView) l.this.f27788w).setImageBitmap(bitmapHp);
                            }
                        });
                    }
                    l lVar3 = l.this;
                    if (lVar3.xv || lVar3.f25036z > 0.0f) {
                        Bitmap bitmapHp2 = s.hp(l.this.f27777l, bitmap, l.this.f25036z > 0.0f ? (int) l.this.f25036z : 10);
                        if (bitmapHp2 != null) {
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(l.this.f27777l.getResources(), bitmapHp2);
                            s.hp(new Runnable() { // from class: com.byazt.qp.l.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((RoundImageView) l.this.f27788w).setBackground(bitmapDrawable);
                                }
                            });
                        }
                    }
                }
            });
            return;
        }
        eb ebVar2 = this.ed;
        if (ebVar2 != null) {
            ebVar2.hp();
        }
        com.byazt.zs.hp hpVarL = w.hp().l();
        k kVar = this.f27782q;
        String str = this.hp;
        T t2 = this.f27788w;
        hpVarL.hp(kVar, str, (ImageView) t2, ((RoundImageView) t2).getWidth(), ((RoundImageView) this.f27788w).getHeight(), new hp.InterfaceC0439hp() { // from class: com.byazt.qp.l.2
            @Override // com.byazt.zs.hp.InterfaceC0439hp
            public void hp(Bitmap bitmap) {
                if (bitmap == null) {
                    if (l.this.ed != null) {
                        eb ebVar3 = l.this.ed;
                        l lVar = l.this;
                        ebVar3.l(lVar, lVar.hp);
                        return;
                    }
                    return;
                }
                if (l.this.ed != null) {
                    eb ebVar4 = l.this.ed;
                    l lVar2 = l.this;
                    ebVar4.hp(lVar2, lVar2.hp);
                }
            }
        });
        if (this.xv || this.f25036z > 0.0f) {
            w.hp().l().hp(this.f27782q, this.hp, new hp.InterfaceC0439hp() { // from class: com.byazt.qp.l.3
                @Override // com.byazt.zs.hp.InterfaceC0439hp
                public void hp(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    final Bitmap bitmapHp = s.hp(l.this.f27777l, bitmap, l.this.f25036z > 0.0f ? (int) l.this.f25036z : 10);
                    s.hp(new Runnable() { // from class: com.byazt.qp.l.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (bitmapHp != null) {
                                ((RoundImageView) l.this.f27788w).setBackground(new BitmapDrawable(l.this.f27777l.getResources(), bitmapHp));
                            }
                        }
                    });
                }
            });
        }
    }

    private void su() throws NumberFormatException {
        if (TextUtils.isEmpty(this.hp)) {
            return;
        }
        ((RoundImageView) this.f27788w).setImageDrawable(null);
        if (!this.hp.startsWith("local://")) {
            if (!this.hp.startsWith("@")) {
                rv();
                return;
            } else {
                ((RoundImageView) this.f27788w).setImageResource(Integer.parseInt(this.hp.substring(1)));
                return;
            }
        }
        try {
            String strReplace = this.hp.replace("local://", "");
            if (TextUtils.equals(eb(), "raw")) {
                ((RoundImageView) this.f27788w).setImageResource(j.hp(this.f27777l, strReplace));
            } else {
                hp((ImageView) this.f27788w, strReplace);
            }
        } catch (Exception unused) {
        }
    }

    private ImageView.ScaleType gu(String str) {
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
            case "fit":
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void a() {
        super.a();
        Drawable drawable = ((RoundImageView) this.f27788w).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(drawable)) {
            return;
        }
        AbstractC1797b.a(drawable).stop();
    }

    public String eb() {
        return this.pg;
    }

    public void jl(String str) {
        this.hp = str;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException, NumberFormatException {
        super.l();
        su();
        ((RoundImageView) this.f27788w).setScaleType(this.gb);
        ((RoundImageView) this.f27788w).setBorderColor(this.su);
        ((RoundImageView) this.f27788w).setCornerRadius(this.f27778m);
        ((RoundImageView) this.f27788w).setBorderWidth(this.ea);
        int i2 = this.f25035h;
        if (i2 != -1) {
            ((RoundImageView) this.f27788w).setColorFilter(i2);
        }
        ((RoundImageView) this.f27788w).setEraseEnabled(this.db == 1);
        ((RoundImageView) this.f27788w).setEraseRadius(this.gh);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public RoundImageView hp() {
        RoundImageView roundImageView = new RoundImageView(this.f27777l);
        roundImageView.hp(this);
        return roundImageView;
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void w() {
        super.w();
        ((RoundImageView) this.f27788w).post(new Runnable() { // from class: com.byazt.qp.l.4
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawable = ((RoundImageView) l.this.f27788w).getDrawable();
                if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(drawable)) {
                    return;
                }
                AbstractC1797b.a(drawable).start();
            }
        });
    }

    public void hp(ImageView imageView, String str) {
        imageView.setImageResource(j.l(this.f27777l, str));
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        T t2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "scaleMode":
            case "scaleType":
                this.gb = gu(str2);
                break;
            case "imageBlur":
                this.ad = com.byazt.xa.jx.hp(str2, -1.0f);
                break;
            case "eraseRadius":
                float fHp = com.byazt.xa.jx.hp(str2, 50.0f);
                this.gh = fHp;
                T t3 = this.f27788w;
                if (t3 != 0) {
                    ((RoundImageView) t3).setEraseRadius(fHp);
                    break;
                }
                break;
            case "isBgGaussianBlur":
                this.xv = com.byazt.xa.jx.hp(str2, false);
                break;
            case "src":
                this.hp = str2;
                break;
            case "erase":
                int iHp = com.byazt.xa.jx.hp(str2, 0);
                this.db = iHp;
                if (iHp == 1 && (t2 = this.f27788w) != 0) {
                    ((RoundImageView) t2).setEraseEnabled(true);
                    break;
                }
                break;
            case "tintColor":
                this.f25035h = com.byazt.xa.hp.hp(str2);
                break;
            case "imageBgBlur":
                this.f25036z = com.byazt.xa.jx.hp(str2, -1.0f);
                break;
        }
    }

    public void l(Drawable drawable) {
        ((RoundImageView) this.f27788w).setImageDrawable(drawable);
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void hp(String str, Map<String, Object> map) {
        this.eb = (com.byazt.xs.hp) l((jx) this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(nu());
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        hp(this.eb, str, arrayList.toArray());
    }

    private void hp(jx jxVar, String str, Object... objArr) {
        List<jx<View>> listEb;
        if (jxVar == null) {
            return;
        }
        jxVar.hp(str, objArr);
        if (!(jxVar instanceof com.byazt.xs.hp) || (listEb = ((com.byazt.xs.hp) jxVar).eb()) == null || listEb.isEmpty()) {
            return;
        }
        Iterator<jx<View>> it = listEb.iterator();
        while (it.hasNext()) {
            hp(it.next(), str, objArr);
        }
    }
}
