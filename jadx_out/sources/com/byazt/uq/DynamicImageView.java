package com.byazt.uq;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.ebw.AnimationImageView;
import com.byazt.fub.zy;
import com.byazt.nke.b;
import com.byazt.nke.e;
import com.byazt.nke.k;
import com.byazt.nke.ns;
import com.byazt.nke.u;
import com.byazt.nw.s;
import com.byazt.sq.a;
import com.byazt.vt.UpieImageView;
import com.byazt.wnd.DynamicLottieView;
import com.byazt.wnd.GifView;
import com.byazt.wnd.TTRoundRectImageView;
import com.byazt.yj.q;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.be;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, 85, 1393})
/* loaded from: classes3.dex */
public class DynamicImageView extends DynamicBaseWidgetImp {
    public String hp;

    @com.byazt.kj.hp(hp = {0, 1, 85, 1248})
    public static class hp implements e {
        public final WeakReference<Context> hp;

        public hp(Context context) {
            this.hp = new WeakReference<>(context);
        }

        @Override // com.byazt.nke.e
        public Bitmap coverterTo(Bitmap bitmap) {
            Context context = this.hp.get();
            if (context != null) {
                return com.byazt.sq.l.hp(context, bitmap, 25);
            }
            return null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 85, 108})
    public static class l implements b<Bitmap> {
        public WeakReference<View> hp;

        /* renamed from: l, reason: collision with root package name */
        public Resources f26322l;

        public l(View view, Resources resources) {
            this.hp = new WeakReference<>(view);
            this.f26322l = resources;
        }

        @Override // com.byazt.nke.b
        public void onFailed(int i2, String str, Throwable th) {
        }

        @Override // com.byazt.nke.b
        public void onSuccess(u<Bitmap> uVar) {
            Bitmap result;
            View view = this.hp.get();
            if (view == null || (result = uVar.getResult()) == null || uVar.getOriginResult() == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(this.f26322l, result));
        }
    }

    public DynamicImageView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        if (!TextUtils.isEmpty(this.jl.wt()) && sVar.ec()) {
            DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
            dynamicLottieView.setAnimationsLoop(this.jl.ru());
            dynamicLottieView.setImageLottieTosPath(this.jl.wt());
            dynamicLottieView.setLottieAppNameMaxLength(this.jl.tw());
            dynamicLottieView.setLottieAdTitleMaxLength(this.jl.yj());
            dynamicLottieView.setLottieAdDescMaxLength(this.jl.gd());
            dynamicLottieView.setData(sVar.sz());
            this.f26309v = dynamicLottieView;
        } else if (this.jl.v() > 0.0f) {
            TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
            this.f26309v = tTRoundRectImageView;
            tTRoundRectImageView.setXRound((int) com.byazt.sq.s.hp(context, this.jl.v()));
            ((TTRoundRectImageView) this.f26309v).setYRound((int) com.byazt.sq.s.hp(context, this.jl.v()));
        } else if (!eb() && "arrowButton".equals(sVar.e().getType())) {
            AnimationImageView animationImageView = new AnimationImageView(context);
            animationImageView.setBrickNativeValue(this.jl);
            this.f26309v = animationImageView;
        } else if (com.byazt.sq.e.l(this.jl.gu())) {
            this.f26309v = new GifView(context);
        } else {
            String strGu = this.jl.gu();
            zy renderRequest = dynamicRootView.getRenderRequest();
            if (renderRequest == null || renderRequest.l() == null || !TextUtils.equals(strGu, renderRequest.hp())) {
                this.f26309v = new ImageView(context);
            } else {
                this.f26309v = renderRequest.l();
            }
        }
        this.hp = l(this.jl.gu());
        this.f26309v.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(sVar.e().getType())) {
            if (this.jl.l() > 0 || this.jl.hp() > 0) {
                int iMin = Math.min(this.eb, this.f26307s);
                this.eb = iMin;
                this.f26307s = Math.min(iMin, this.f26307s);
                this.f26306q = (int) (this.f26306q + com.byazt.sq.s.hp(context, this.jl.l() + (this.jl.hp() / 2) + 0.5f));
            } else {
                int iMax = Math.max(this.eb, this.f26307s);
                this.eb = iMax;
                this.f26307s = Math.max(iMax, this.f26307s);
            }
            this.jl.hp(this.eb / 2);
        }
        addView(this.f26309v, new FrameLayout.LayoutParams(this.eb, this.f26307s));
    }

    private void hp(k kVar) {
        kVar.type(3).to(new b() { // from class: com.byazt.uq.DynamicImageView.2
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u uVar) {
                Object result = uVar.getResult();
                if (result instanceof byte[]) {
                    DynamicImageView dynamicImageView = DynamicImageView.this;
                    View view = dynamicImageView.f26309v;
                    if (view instanceof ImageView) {
                        a.l((ImageView) view, (byte[]) result, dynamicImageView.eb, dynamicImageView.f26307s);
                    }
                }
            }
        }, 4);
    }

    private boolean q() {
        String strJl = this.jl.jl();
        if (this.jl.sz()) {
            return true;
        }
        if (TextUtils.isEmpty(strJl)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strJl);
            return Math.abs((((float) this.eb) / (((float) this.f26307s) * 1.0f)) - (((float) jSONObject.optInt("width")) / (((float) jSONObject.optInt("height")) * 1.0f))) > 0.01f;
        } catch (JSONException unused) {
            return false;
        }
    }

    public String l(String str) {
        Map<String, String> mapZy = this.f26303k.getRenderRequest().zy();
        if (mapZy == null || mapZy.size() <= 0) {
            return null;
        }
        return mapZy.get(str);
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = this.f26309v;
        if (view instanceof ImageView) {
            Drawable drawable = ((ImageView) view).getDrawable();
            if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(drawable)) {
                return;
            }
            AbstractC1797b.a(drawable).start();
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View view = this.f26309v;
        if (view instanceof ImageView) {
            Drawable drawable = ((ImageView) view).getDrawable();
            if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(drawable)) {
                return;
            }
            AbstractC1797b.a(drawable).stop();
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        try {
            View view = this.f26309v;
            if (view instanceof UpieImageView) {
                view.setBackgroundColor(this.jl.wv());
                if (q()) {
                    ((UpieImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_CENTER);
                } else {
                    ((UpieImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_XY);
                }
                if ("cover".equals(getImageObjectFit())) {
                    ((UpieImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_CROP);
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.jl.wt())) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        }
        if ("arrowButton".equals(this.zy.e().getType())) {
            v.hp(this.gu, "tt_white_righterbackicon_titlebar", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.uq.DynamicImageView.1
                @Override // com.byazt.oxb.hp
                public void hp(Bitmap bitmap) {
                    ((ImageView) DynamicImageView.this.f26309v).setImageDrawable(new BitmapDrawable(DynamicImageView.this.gu.getResources(), bitmap));
                    if (((ImageView) DynamicImageView.this.f26309v).getDrawable() != null) {
                        ((ImageView) DynamicImageView.this.f26309v).getDrawable().setAutoMirrored(true);
                    }
                }
            }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            this.f26309v.setPadding(0, 0, 0, 0);
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.f26309v.setBackgroundColor(this.jl.wv());
        String strL = this.zy.e().l();
        if (be.f48810m.equals(strL)) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.f26309v).setColorFilter(this.jl.eb());
            v.hp(getContext(), "tt_user", (ImageView) this.f26309v, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            ImageView imageView = (ImageView) this.f26309v;
            int i2 = this.eb;
            imageView.setPadding(i2 / 10, this.f26307s / 5, i2 / 10, 0);
        } else if (strL != null && strL.startsWith("@")) {
            try {
                ((ImageView) this.f26309v).setImageResource(Integer.parseInt(strL.substring(1)));
            } catch (Exception unused2) {
            }
        }
        ns nsVarW = com.byazt.ui.hp.hp().w();
        String strGu = this.jl.gu();
        if (!TextUtils.isEmpty(strGu) && !strGu.startsWith("http:") && !strGu.startsWith("https:")) {
            DynamicRootView dynamicRootView = this.f26303k;
            strGu = q.l(strGu, (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) ? null : this.f26303k.getRenderRequest().o());
        }
        k kVarKey = nsVarW.from(strGu).key(this.hp);
        String strU = this.f26303k.getRenderRequest().u();
        if (!TextUtils.isEmpty(strU)) {
            kVarKey.cacheDir(strU);
        }
        if (q()) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_CENTER);
            kVarKey.config(Bitmap.Config.ARGB_4444).type(2).converter(new hp(this.gu)).to(new l(this.f26309v, getResources()));
        } else {
            if (com.byazt.wkx.j.hp()) {
                kVarKey.to((ImageView) this.f26309v);
            }
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((this.f26309v instanceof ImageView) && "cover".equals(getImageObjectFit())) {
            ((ImageView) this.f26309v).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        if (!com.byazt.wkx.j.hp()) {
            hp(kVarKey);
        }
        return true;
    }
}
