package com.fl.saas;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.arch.core.util.Function;
import com.fl.saas.C1188j;
import com.fl.saas.adx.base.widget.InterceptClickLayout;
import com.fl.saas.adx.base.widget.RoundedFrameLayout;
import com.fl.saas.adx.base.widget.S2SVideoView;
import com.fl.saas.adx.base.widget.ShaderRoundImageView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import com.google.android.material.badge.BadgeDrawable;

/* loaded from: classes3.dex */
public class Q0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f30017a;

    /* renamed from: b, reason: collision with root package name */
    private final View f30018b;

    /* renamed from: c, reason: collision with root package name */
    private final RoundedFrameLayout f30019c;

    /* renamed from: d, reason: collision with root package name */
    private final FrameLayout f30020d;

    /* renamed from: e, reason: collision with root package name */
    private final TextView f30021e;

    /* renamed from: f, reason: collision with root package name */
    private final TextView f30022f;

    /* renamed from: g, reason: collision with root package name */
    private S2SVideoView f30023g;

    /* renamed from: h, reason: collision with root package name */
    private final c f30024h;

    /* renamed from: i, reason: collision with root package name */
    private View f30025i;

    /* renamed from: j, reason: collision with root package name */
    private FrameLayout f30026j;

    /* renamed from: k, reason: collision with root package name */
    private ImageView f30027k;

    /* renamed from: l, reason: collision with root package name */
    private int f30028l;

    /* renamed from: m, reason: collision with root package name */
    private int f30029m;

    /* renamed from: n, reason: collision with root package name */
    private int f30030n;

    /* renamed from: o, reason: collision with root package name */
    private int f30031o;

    /* renamed from: p, reason: collision with root package name */
    private b f30032p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f30033q = false;

    public class a implements FLImageLoader.OnBitmapLoadListener {
        public a() {
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoadFailed(String str, String str2) {
            if (Q0.this.f30032p != null) {
                Q0.this.f30032p.a();
            }
        }

        @Override // com.fl.saas.adx.util.FLImageLoader.OnBitmapLoadListener
        public void onBitmapLoaded(String str, Bitmap bitmap, boolean z2) {
            Drawable drawableA = AbstractC1156a0.a(Q0.this.f30017a, bitmap);
            if (drawableA == null) {
                if (Q0.this.f30032p != null) {
                    Q0.this.f30032p.a();
                    return;
                }
                return;
            }
            ImageView imageView = new ImageView(Q0.this.f30017a);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            AbstractC1156a0.a(imageView, drawableA);
            ShaderRoundImageView shaderRoundImageView = new ShaderRoundImageView(Q0.this.f30017a);
            shaderRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            shaderRoundImageView.setAdjustViewBounds(true);
            FrameLayout.LayoutParams layoutParams = Q0.this.f30024h.b() ? new FrameLayout.LayoutParams(-2, -1) : new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            Q0.this.f30019c.addView(shaderRoundImageView, 0, layoutParams);
            Q0.this.f30019c.addView(imageView, 0, ViewHelper.getMatchParent());
            shaderRoundImageView.setImageDrawable(drawableA);
        }
    }

    public interface b {
        void a();

        void onClose();
    }

    public enum c {
        MIXED_TEXT_IMAGE(true, R.layout.fl_adx_template_view_text_img_mixture),
        TEXT_OVERLAY(true, R.layout.fl_adx_template_view_text_float_layer),
        TOP_TEXT_BOTTOM_IMAGE(true, R.layout.fl_adx_template_view_top_text_bottom_img_with_btn),
        TOP_IMAGE_BOTTOM_TEXT(true, R.layout.fl_adx_template_view_top_img_bottom_text_with_btn),
        LEFT_TEXT_RIGHT_IMAGE(false, R.layout.fl_adx_template_view_left_text_right_img),
        LEFT_IMAGE_RIGHT_TEXT(false, R.layout.fl_adx_template_view_left_img_right_text),
        IMAGE_ONLY(true, R.layout.fl_adx_template_view_img);


        /* renamed from: a, reason: collision with root package name */
        private final int f30043a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f30044b;

        c(boolean z2, int i2) {
            this.f30043a = i2;
            this.f30044b = z2;
        }

        public boolean b() {
            return this.f30044b;
        }

        public View a(Context context) {
            return ViewHelper.inflate(context, this.f30043a);
        }

        public static c a(int i2) {
            for (c cVar : values()) {
                if (cVar.ordinal() == i2) {
                    return cVar;
                }
            }
            return MIXED_TEXT_IMAGE;
        }
    }

    public Q0(Context context, c cVar) {
        this.f30017a = context;
        this.f30024h = cVar;
        View viewA = cVar.a(context);
        this.f30018b = viewA;
        RoundedFrameLayout roundedFrameLayout = (RoundedFrameLayout) viewA.findViewById(R.id.fl_template_view_media_container);
        this.f30019c = roundedFrameLayout;
        this.f30020d = (FrameLayout) C1207p0.a(viewA).a(new Function() { // from class: com.fl.saas.B1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return Q0.f((View) obj);
            }
        }).c(roundedFrameLayout);
        TextView textView = (TextView) viewA.findViewById(R.id.fl_template_view_title);
        this.f30021e = textView;
        TextView textView2 = (TextView) viewA.findViewById(R.id.fl_template_view_des);
        this.f30022f = textView2;
        if (cVar == c.TEXT_OVERLAY) {
            if (textView != null) {
                textView.setTextColor(-1);
            }
            if (textView2 != null) {
                textView2.setTextColor(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        try {
            this.f30026j.addView(view, new FrameLayout.LayoutParams(this.f30028l - (this.f30030n * 2), this.f30029m - (this.f30031o * 2)));
            ImageView imageView = this.f30027k;
            if (imageView != null) {
                imageView.bringToFront();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FrameLayout f(View view) {
        return (FrameLayout) view.findViewById(R.id.s2s_template_action_container);
    }

    public Q0 b(String str) {
        return this;
    }

    public Q0 d(String str) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        try {
            int width = this.f30020d.getWidth();
            int height = this.f30020d.getHeight();
            int[] iArrSelfMeasure = ViewHelper.selfMeasure(view);
            int i2 = iArrSelfMeasure[0];
            int i3 = iArrSelfMeasure[1];
            int iDip2px = DeviceUtil.dip2px(5.0f) * 2;
            int i4 = width - iDip2px;
            int i5 = height - iDip2px;
            if (i5 > 0 && i4 > 0) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3);
                layoutParams.gravity = 17;
                if (i4 < i2 || i5 < i3) {
                    float fMin = Math.min(i4 / i2, i5 / i3);
                    view.setScaleX(fMin);
                    view.setScaleY(fMin);
                }
                this.f30020d.addView(view, layoutParams);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public Q0 e(String str) {
        ViewHelper.setTextView(this.f30021e, str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        ViewHelper.removeParent(this.f30025i);
        b bVar = this.f30032p;
        if (bVar != null) {
            bVar.onClose();
        }
    }

    public void a(final View view) {
        if (view == null) {
            return;
        }
        this.f30020d.post(new Runnable() { // from class: com.fl.saas.A1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29855b.c(view);
            }
        });
    }

    public void b(final View view) {
        if (view == null) {
            return;
        }
        this.f30026j.post(new Runnable() { // from class: com.fl.saas.C1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29863b.e(view);
            }
        });
    }

    public View c() {
        if (this.f30025i == null) {
            InterceptClickLayout interceptClickLayout = (InterceptClickLayout) ViewHelper.inflate(this.f30017a, R.layout.fl_adx_template_view);
            int i2 = this.f30030n;
            int i3 = this.f30031o;
            interceptClickLayout.setPadding(i2, i3, i2, i3);
            interceptClickLayout.setLayoutParams(new ViewGroup.LayoutParams(this.f30028l, this.f30029m));
            this.f30026j = (FrameLayout) interceptClickLayout.findViewById(R.id.s2s_template_container);
            this.f30026j.addView(this.f30018b, new FrameLayout.LayoutParams(this.f30028l - (this.f30030n * 2), this.f30029m - (this.f30031o * 2)));
            this.f30025i = interceptClickLayout;
        }
        return this.f30025i;
    }

    public Q0 a() {
        int i2;
        int i3;
        if (this.f30020d == null) {
            return this;
        }
        try {
            this.f30027k = new ImageView(this.f30017a);
            c cVar = this.f30024h;
            if (cVar == c.LEFT_TEXT_RIGHT_IMAGE || cVar == c.LEFT_IMAGE_RIGHT_TEXT) {
                i2 = 16;
                i3 = 6;
            } else {
                i2 = 20;
                i3 = 12;
            }
            float f2 = i2;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(DeviceUtil.dip2px(f2), DeviceUtil.dip2px(f2));
            layoutParams.gravity = BadgeDrawable.TOP_END;
            int iDip2px = DeviceUtil.dip2px(i3);
            layoutParams.setMargins(iDip2px, iDip2px, iDip2px, iDip2px);
            this.f30027k.setImageResource(R.mipmap.fl_adx_ad_dialog_close);
            this.f30027k.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.D1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29865b.d(view);
                }
            });
            this.f30020d.addView(this.f30027k, layoutParams);
            return this;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return this;
        }
    }

    public void b() {
        if (this.f30033q) {
            return;
        }
        this.f30033q = true;
        S2SVideoView s2SVideoView = this.f30023g;
        if (s2SVideoView != null) {
            s2SVideoView.onDestroy();
            this.f30023g = null;
        }
    }

    public Q0 c(String str) {
        ViewHelper.setTextView(this.f30022f, str);
        return this;
    }

    private void a(String str) {
        FLImageLoader.getInstance(this.f30017a).loadBitmap(str, new a());
    }

    public Q0 b(C1188j c1188j) {
        if (c1188j == null) {
            return this;
        }
        C1188j.c cVar = c1188j.f30453P0;
        if (cVar == null || cVar.f30574b != 2 || TextUtils.isEmpty(c1188j.f30546t1)) {
            a(c1188j.f30534p1);
            return this;
        }
        a(c1188j);
        return this;
    }

    private void a(C1188j c1188j) {
        S2SVideoView s2SVideoView = new S2SVideoView(this.f30017a);
        this.f30023g = s2SVideoView;
        s2SVideoView.setVideo(c1188j);
        this.f30019c.addView(this.f30023g, ViewHelper.getMatchParent());
    }

    public Q0 b(int i2, int i3) {
        float f2;
        int mobileWidth = DeviceUtil.getMobileWidth();
        if (mobileWidth >= i2 && i2 > 0) {
            mobileWidth = i2;
        }
        this.f30028l = mobileWidth;
        if (this.f30024h.b()) {
            f2 = 1.78f;
            if (i3 <= i2) {
                if (i3 <= 0) {
                    i3 = Math.round(i2 / f2);
                }
            }
            this.f30029m = Math.round(i2 / f2);
            return this;
        }
        f2 = 19.0f;
        if (i3 > i2) {
            i2 *= 5;
            this.f30029m = Math.round(i2 / f2);
            return this;
        }
        if (i3 <= 0) {
            i2 *= 5;
            i3 = Math.round(i2 / f2);
        }
        this.f30029m = i3;
        return this;
    }

    public Q0 a(Bitmap bitmap) {
        if (bitmap == null) {
            return this;
        }
        ShaderRoundImageView shaderRoundImageView = new ShaderRoundImageView(this.f30017a);
        shaderRoundImageView.setRadius(DeviceUtil.dip2px(2.0f));
        shaderRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        shaderRoundImageView.setAdjustViewBounds(true);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, DeviceUtil.dip2px(12.0f));
        layoutParams.gravity = 85;
        int iDip2px = DeviceUtil.dip2px(4.0f);
        layoutParams.setMargins(iDip2px, iDip2px, iDip2px, iDip2px);
        shaderRoundImageView.setImageBitmap(bitmap);
        this.f30020d.addView(shaderRoundImageView, layoutParams);
        return this;
    }

    public void a(b bVar) {
        this.f30032p = bVar;
    }

    public Q0 a(int i2, int i3) {
        this.f30030n = i2;
        this.f30031o = i3;
        return this;
    }
}
