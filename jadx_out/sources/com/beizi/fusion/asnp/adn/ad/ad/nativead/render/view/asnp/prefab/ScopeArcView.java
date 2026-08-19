package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.SlideModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTitleModel;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.xn;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes2.dex */
public class ScopeArcView extends ScopeSimpleView {

    /* renamed from: e, reason: collision with root package name */
    private c f12751e;

    /* renamed from: f, reason: collision with root package name */
    private d f12752f;

    /* renamed from: g, reason: collision with root package name */
    private final Paint f12753g;

    /* renamed from: h, reason: collision with root package name */
    private final Paint f12754h;

    /* renamed from: i, reason: collision with root package name */
    private final Paint f12755i;

    /* renamed from: j, reason: collision with root package name */
    private final Paint f12756j;

    /* renamed from: k, reason: collision with root package name */
    private final Paint f12757k;

    /* renamed from: l, reason: collision with root package name */
    private final Path f12758l;

    /* renamed from: m, reason: collision with root package name */
    private Drawable f12759m;

    /* renamed from: n, reason: collision with root package name */
    private float f12760n;

    /* renamed from: o, reason: collision with root package name */
    private float f12761o;

    /* renamed from: p, reason: collision with root package name */
    private float f12762p;

    /* renamed from: q, reason: collision with root package name */
    private float f12763q;

    /* renamed from: r, reason: collision with root package name */
    private float f12764r;

    /* renamed from: s, reason: collision with root package name */
    private float f12765s;

    /* renamed from: t, reason: collision with root package name */
    private float f12766t;

    /* renamed from: u, reason: collision with root package name */
    private ValueAnimator f12767u;

    /* renamed from: v, reason: collision with root package name */
    private ValueAnimator f12768v;

    /* renamed from: w, reason: collision with root package name */
    private final int f12769w;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScopeArcView.this.c();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScopeArcView.this.c();
        }
    }

    public enum c {
        SemiArc,
        HandArc
    }

    public static final class d {

        /* renamed from: h, reason: collision with root package name */
        private static final d f12775h = new d(3.0f, "up", "#0000004D", "#E5E5E5FF");

        /* renamed from: a, reason: collision with root package name */
        private final float f12776a;

        /* renamed from: b, reason: collision with root package name */
        private final String f12777b;

        /* renamed from: c, reason: collision with root package name */
        private final long f12778c = 1200;

        /* renamed from: d, reason: collision with root package name */
        private final String f12779d = "跳转至第三方应用或网页";

        /* renamed from: e, reason: collision with root package name */
        private final String f12780e = "滑动或点击";

        /* renamed from: f, reason: collision with root package name */
        private final int[] f12781f;

        /* renamed from: g, reason: collision with root package name */
        private final String f12782g;

        public d(float f2, String str, String str2, String str3) {
            this.f12776a = f2;
            this.f12777b = str;
            this.f12781f = a(str2);
            this.f12782g = str3;
        }

        private int[] a(String str) throws NumberFormatException {
            int i2;
            int i3;
            int i4 = 77;
            int i5 = 0;
            if (!TextUtils.isEmpty(str) && str.startsWith("#")) {
                String strSubstring = str.substring(1);
                if (strSubstring.length() == 6) {
                    i5 = Integer.parseInt(strSubstring.substring(0, 2), 16);
                    i3 = Integer.parseInt(strSubstring.substring(2, 4), 16);
                    i2 = Integer.parseInt(strSubstring.substring(4, 6), 16);
                } else if (strSubstring.length() == 8) {
                    i4 = Integer.parseInt(strSubstring.substring(0, 2), 16);
                    i5 = Integer.parseInt(strSubstring.substring(2, 4), 16);
                    i3 = Integer.parseInt(strSubstring.substring(4, 6), 16);
                    i2 = Integer.parseInt(strSubstring.substring(6, 8), 16);
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                return new int[]{i4, i5, i3, i2};
            }
            return new int[]{0, 0, 0, 77};
        }
    }

    public ScopeArcView(Context context) {
        this(context, null);
    }

    private void setConfig(d dVar) {
        ValueAnimator valueAnimator;
        this.f12752f = dVar;
        b();
        if (!isAttachedToWindow() || (valueAnimator = this.f12767u) == null || !valueAnimator.isStarted()) {
            invalidate();
        } else {
            stopAnimation();
            startAnimation();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView, com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        super.bindRenderModel(renderModel);
        setConfig(a(renderModel));
        this.f12753g.setColor(Color.argb(this.f12752f.f12781f[0], this.f12752f.f12781f[1], this.f12752f.f12781f[2], this.f12752f.f12781f[3]));
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        super.fillContent(aVar);
        RenderModel renderModel = this.f12870b;
        if (renderModel == null || renderModel.getViewModel() == null) {
            return;
        }
        ViewModel viewModel = this.f12870b.getViewModel();
        xn.a(getContext(), this, "#00000000", qo.i(viewModel.getBorderSize()), viewModel.getBorderColor(), xn.a(viewModel.getBorderRadius(), getLayoutParams().height));
        aVar.b(this.f12870b.getId());
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).setClipChildren(false);
        }
        post(new a());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        stopAnimation();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int iA = a(canvas, a());
        super.onDraw(canvas);
        this.f12754h.setStrokeWidth(this.f12752f.f12776a);
        this.f12754h.setColor(Color.parseColor(this.f12752f.f12782g));
        float fMax = Math.max(0.0f, this.f12762p + this.f12763q);
        this.f12758l.reset();
        this.f12758l.addCircle(this.f12760n, this.f12761o, fMax, Path.Direction.CW);
        canvas.drawPath(this.f12758l, this.f12753g);
        canvas.drawPath(this.f12758l, this.f12754h);
        b(canvas);
        if (this.f12751e == c.HandArc) {
            a(canvas);
        }
        canvas.restoreToCount(iA);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        b();
        post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f12844b.c();
            }
        });
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 != 0) {
            stopAnimation();
        } else {
            post(new b());
        }
    }

    public void setDisplayMode(c cVar) {
        this.f12751e = cVar;
    }

    public void startAnimation() {
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        stopAnimation();
        final AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        final DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f12767u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1200L);
        this.f12767u.setRepeatCount(-1);
        this.f12767u.setInterpolator(new LinearInterpolator());
        this.f12767u.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f12845a.a(accelerateDecelerateInterpolator, decelerateInterpolator, valueAnimator);
            }
        });
        if (this.f12751e == c.SemiArc) {
            this.f12767u.start();
        } else if (!ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f12752f.f12777b) && !ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f12752f.f12777b)) {
            this.f12767u.start();
        }
        if (this.f12751e == c.HandArc) {
            ValueAnimator valueAnimatorA = a(1200L);
            this.f12768v = valueAnimatorA;
            valueAnimatorA.start();
        }
    }

    public void stopAnimation() {
        ValueAnimator valueAnimator = this.f12767u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f12767u = null;
        }
        ValueAnimator valueAnimator2 = this.f12768v;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.f12768v = null;
        }
        this.f12763q = 0.0f;
        this.f12764r = 0.3f;
        this.f12753g.setColor(Color.argb(this.f12752f.f12781f[0], this.f12752f.f12781f[1], this.f12752f.f12781f[2], this.f12752f.f12781f[3]));
        this.f12765s = 0.0f;
        this.f12766t = 0.0f;
        invalidate();
    }

    public ScopeArcView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView.b():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!isAttachedToWindow() || getVisibility() != 0 || getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        ValueAnimator valueAnimator = this.f12767u;
        if (valueAnimator == null || !valueAnimator.isStarted()) {
            startAnimation();
        }
    }

    public ScopeArcView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12751e = c.HandArc;
        Paint paint = new Paint(1);
        this.f12753g = paint;
        Paint paint2 = new Paint(1);
        this.f12754h = paint2;
        Paint paint3 = new Paint(1);
        this.f12755i = paint3;
        Paint paint4 = new Paint(1);
        this.f12756j = paint4;
        Paint paint5 = new Paint(1);
        this.f12757k = paint5;
        this.f12758l = new Path();
        this.f12764r = 0.3f;
        this.f12769w = ViewConfiguration.get(context).getScaledTouchSlop();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(Color.argb(76, 0, 0, 0));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(-1);
        paint3.setColor(-1);
        Paint.Align align = Paint.Align.CENTER;
        paint3.setTextAlign(align);
        paint3.setShadowLayer(3.0f, 0.0f, 1.0f, Color.argb(128, 0, 0, 0));
        paint4.setColor(-1);
        paint4.setTextAlign(align);
        paint4.setShadowLayer(3.0f, 0.0f, 1.0f, Color.argb(128, 0, 0, 0));
        paint5.setStyle(style);
        paint5.setColor(Color.rgb(51, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT, 255));
        paint5.setShadowLayer(6.0f, 0.0f, 2.0f, Color.argb(128, 0, 0, 0));
        this.f12759m = getResources().getDrawable(R.drawable.asnp_hand, null);
        b();
    }

    private d a(RenderModel renderModel) {
        String str;
        String slideDirection;
        SlideModel slideModel;
        if (renderModel == null) {
            return d.f12775h;
        }
        ViewModel viewModel = renderModel.getViewModel();
        String str2 = "#E5E5E5FF";
        str = "#0000004D";
        if (viewModel != null) {
            String borderSize = viewModel.getBorderSize();
            String bgColor = viewModel.getBgColor();
            String borderColor = viewModel.getBorderColor();
            float fH = qo.h(borderSize);
            f = fH > 0.0f ? fH : 3.0f;
            str = TextUtils.isEmpty(bgColor) ? "#0000004D" : bgColor;
            if (!TextUtils.isEmpty(borderColor)) {
                str2 = borderColor;
            }
        }
        InteractionModel interactionModel = renderModel.getInteractionModel();
        if (interactionModel != null && (slideModel = interactionModel.getSlideModel()) != null) {
            slideDirection = slideModel.getSlideDirection(PrerollVideoResponse.NORMAL);
        } else {
            slideDirection = "up";
        }
        return new d(f, slideDirection, str, str2);
    }

    public boolean a(float f2, float f3) {
        return ((float) Math.hypot((double) (f2 - this.f12760n), (double) (f3 - this.f12761o))) <= Math.max(0.0f, this.f12762p + this.f12763q) + this.f12752f.f12776a;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.RectF a() {
        /*
            r5 = this;
            r0 = 1105199104(0x41e00000, float:28.0)
            float r0 = r5.a(r0)
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView$c r1 = r5.f12751e
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView$c r2 = com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView.c.HandArc
            if (r1 != r2) goto Lab
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView$d r1 = r5.f12752f
            java.lang.String r1 = com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView.d.c(r1)
            r1.getClass()
            int r2 = r1.hashCode()
            r3 = -1
            switch(r2) {
                case 3739: goto L4a;
                case 96673: goto L3f;
                case 3089570: goto L34;
                case 3317767: goto L29;
                case 108511772: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto L54
        L1e:
            java.lang.String r2 = "right"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L27
            goto L54
        L27:
            r3 = 4
            goto L54
        L29:
            java.lang.String r2 = "left"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L32
            goto L54
        L32:
            r3 = 3
            goto L54
        L34:
            java.lang.String r2 = "down"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3d
            goto L54
        L3d:
            r3 = 2
            goto L54
        L3f:
            java.lang.String r2 = "all"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L48
            goto L54
        L48:
            r3 = 1
            goto L54
        L4a:
            java.lang.String r2 = "up"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L53
            goto L54
        L53:
            r3 = 0
        L54:
            r1 = 1112539136(0x42500000, float:52.0)
            switch(r3) {
                case 0: goto L9c;
                case 1: goto L81;
                case 2: goto L6a;
                case 3: goto L5a;
                case 4: goto L5a;
                default: goto L59;
            }
        L59:
            goto Lab
        L5a:
            r1 = 1116733440(0x42900000, float:72.0)
            float r2 = r5.a(r1)
            float r2 = r2 + r0
            float r1 = r5.a(r1)
            float r1 = r1 + r0
            r3 = r0
            r0 = r2
            r2 = r3
            goto Lae
        L6a:
            r2 = 1120403456(0x42c80000, float:100.0)
            float r2 = r5.a(r2)
            r3 = 1109393408(0x42200000, float:40.0)
            float r3 = r5.a(r3)
            float r2 = r2 + r3
            float r1 = r5.a(r1)
            float r2 = r2 + r1
            float r2 = r2 + r0
            r1 = r0
            r3 = r2
            r2 = r1
            goto Lae
        L81:
            r1 = 1113587712(0x42600000, float:56.0)
            float r2 = r5.a(r1)
            float r2 = r2 + r0
            float r3 = r5.a(r1)
            float r3 = r3 + r0
            float r4 = r5.a(r1)
            float r4 = r4 + r0
            float r1 = r5.a(r1)
            float r0 = r0 + r1
            r1 = r3
            r3 = r0
            r0 = r2
            r2 = r4
            goto Lae
        L9c:
            r2 = 1123024896(0x42f00000, float:120.0)
            float r2 = r5.a(r2)
            float r1 = r5.a(r1)
            float r2 = r2 + r1
            float r2 = r2 + r0
            r1 = r0
            r3 = r1
            goto Lae
        Lab:
            r1 = r0
            r2 = r1
            r3 = r2
        Lae:
            android.graphics.RectF r4 = new android.graphics.RectF
            r4.<init>(r0, r2, r1, r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView.a():android.graphics.RectF");
    }

    private String[] b(RenderModel renderModel) {
        ViewModel viewModel;
        String normal = "跳转至第三方应用或网页";
        String normal2 = "滑动或点击";
        if (renderModel != null && (viewModel = renderModel.getViewModel()) != null) {
            StatusTitleModel interactiveTitle = viewModel.getInteractiveTitle();
            if (interactiveTitle != null) {
                normal = interactiveTitle.getNormal() != null ? interactiveTitle.getNormal().getNormal() : "";
            }
            StatusTitleModel interactiveSubTitle = viewModel.getInteractiveSubTitle();
            if (interactiveSubTitle != null) {
                normal2 = interactiveSubTitle.getNormal() != null ? interactiveSubTitle.getNormal().getNormal() : "";
            }
        }
        return new String[]{normal, normal2};
    }

    private void b(Canvas canvas) {
        String[] strArrB = b(this.f12870b);
        String str = strArrB[0];
        String str2 = strArrB[1];
        float fMin = Math.min(a(30.0f), Math.min(getWidth() / 2.0f, getHeight() / 4.0f));
        String str3 = this.f12752f.f12777b;
        this.f12755i.setTextSize(b(17.0f));
        this.f12755i.setFakeBoldText(true);
        this.f12756j.setTextSize(b(15.0f));
        this.f12756j.setFakeBoldText(false);
        if (this.f12751e == c.HandArc) {
            float height = ((getHeight() * 0.5f) - fMin) - this.f12755i.getFontMetrics().ascent;
            canvas.drawText(str, getWidth() * 0.5f, height, this.f12755i);
            canvas.drawText(str2, getWidth() * 0.5f, height + this.f12755i.getFontSpacing(), this.f12756j);
            return;
        }
        if (!"up".equalsIgnoreCase(str3) && !ScrollClickView.DIR_DOWN.equalsIgnoreCase(str3) && !"all".equalsIgnoreCase(str3)) {
            if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str3)) {
                float fMax = Math.max(fMin, a(22.0f));
                float width = getWidth() * 0.5f;
                float fA = a(8.0f) * 0.5f;
                float f2 = fMax * 0.5f;
                a(canvas, str, width + fA + f2, true);
                a(canvas, str2, (width - fA) - f2, false);
                return;
            }
            float fMax2 = Math.max(fMin, a(22.0f));
            float width2 = getWidth() * 0.5f;
            float fA2 = a(8.0f) * 0.5f;
            float f3 = fMax2 * 0.5f;
            a(canvas, str, (width2 - fA2) - f3, true);
            a(canvas, str2, width2 + fA2 + f3, false);
            return;
        }
        float height2 = ((getHeight() * 0.5f) - fMin) - this.f12755i.getFontMetrics().ascent;
        canvas.drawText(str, getWidth() * 0.5f, height2, this.f12755i);
        canvas.drawText(str2, getWidth() * 0.5f, height2 + this.f12755i.getFontSpacing(), this.f12756j);
    }

    private int a(Canvas canvas, RectF rectF) {
        return canvas.saveLayer(-rectF.left, -rectF.top, getWidth() + rectF.right, getHeight() + rectF.bottom, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(TimeInterpolator timeInterpolator, TimeInterpolator timeInterpolator2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f12763q = a(fFloatValue, 0.0f, a(20.0f), 0.0f, timeInterpolator, timeInterpolator2);
        float fA = a(fFloatValue, 0.3f, 0.45f, 0.3f, timeInterpolator, timeInterpolator2);
        this.f12764r = fA;
        this.f12753g.setColor(Color.argb(a((int) (fA * 255.0f), 0, 255), this.f12752f.f12781f[1], this.f12752f.f12781f[2], this.f12752f.f12781f[3]));
        invalidate();
    }

    private void a(Canvas canvas, String str, float f2, boolean z2) {
        Paint paint = z2 ? this.f12755i : this.f12756j;
        char[] charArray = str.toCharArray();
        if (charArray.length == 0) {
            return;
        }
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f3 = (fontMetrics.descent - fontMetrics.ascent) * 1.08f;
        float height = ((getHeight() - (charArray.length * f3)) * 0.5f) - fontMetrics.ascent;
        for (char c2 : charArray) {
            canvas.drawText(String.valueOf(c2), f2, height, paint);
            height += f3;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(Canvas canvas) {
        float f2;
        float f3;
        float fA = a(50.0f);
        float width = getWidth();
        float height = getHeight();
        float fA2 = a(8.0f);
        String str = this.f12752f.f12777b;
        str.getClass();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 96673:
                if (str.equals("all")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3089570:
                if (str.equals(ScrollClickView.DIR_DOWN)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(ScrollClickView.DIR_LEFT)) {
                    c2 = 2;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(ScrollClickView.DIR_RIGHT)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        float f4 = (width - fA) * 0.5f;
        switch (c2) {
            case 0:
            case 2:
            case 3:
                f2 = (height - fA) * 0.5f;
                break;
            case 1:
                f2 = (height - fA) - fA2;
                break;
            default:
                f2 = fA2 * 0.5f;
                break;
        }
        float f5 = f4 + this.f12765s;
        float f6 = f2 + this.f12766t;
        this.f12759m.setBounds((int) f5, (int) f6, (int) (f5 + fA), (int) (f6 + fA));
        if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(str) || ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str)) {
            f3 = 90.0f;
        } else {
            ScrollClickView.DIR_DOWN.equalsIgnoreCase(str);
            f3 = 0.0f;
        }
        if (f3 != 0.0f) {
            canvas.save();
            canvas.rotate(f3, (r2 + r1) * 0.5f, (r9 + r0) * 0.5f);
            this.f12759m.draw(canvas);
            canvas.restore();
            return;
        }
        this.f12759m.draw(canvas);
    }

    private float b(float f2) {
        return f2 * getResources().getDisplayMetrics().scaledDensity;
    }

    private ValueAnimator a(long j2) {
        final String str = this.f12752f.f12777b;
        final AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        final DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        if ("all".equalsIgnoreCase(str)) {
            long jMax = Math.max(1L, j2 * 2);
            float fA = a(50.0f);
            float f2 = -fA;
            final float[][] fArr = {new float[]{0.0f, f2}, new float[]{0.0f, fA}, new float[]{f2, 0.0f}, new float[]{fA, 0.0f}, new float[]{f2, f2}, new float[]{fA, fA}, new float[]{fA, f2}, new float[]{f2, fA}};
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(jMax);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f12848a.a(fArr, accelerateDecelerateInterpolator, decelerateInterpolator, valueAnimator);
                }
            });
            return valueAnimatorOfFloat;
        }
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setDuration(Math.max(1L, j2));
        valueAnimatorOfFloat2.setRepeatCount(-1);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f12852a.a(str, accelerateDecelerateInterpolator, decelerateInterpolator, valueAnimator);
            }
        });
        return valueAnimatorOfFloat2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float[][] fArr, TimeInterpolator timeInterpolator, TimeInterpolator timeInterpolator2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int length = fArr.length;
        float f2 = fFloatValue * length;
        int iA = a((int) f2, 0, length - 1);
        int i2 = (iA + 1) % length;
        float fA = a(f2 - iA, 0.0f, 1.0f);
        float[] fArr2 = fArr[iA];
        float[] fArr3 = fArr[i2];
        if (iA % 2 != 0) {
            timeInterpolator = timeInterpolator2;
        }
        float interpolation = timeInterpolator.getInterpolation(fA);
        float f3 = fArr2[0];
        this.f12765s = f3 + ((fArr3[0] - f3) * interpolation);
        float f4 = fArr2[1];
        this.f12766t = f4 + ((fArr3[1] - f4) * interpolation);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, TimeInterpolator timeInterpolator, TimeInterpolator timeInterpolator2, ValueAnimator valueAnimator) {
        float fFloatValue;
        fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        str.getClass();
        switch (str) {
            case "up":
                this.f12765s = 0.0f;
                this.f12766t = a(fFloatValue, 0.0f, -a(120.0f), 0.0f, timeInterpolator, timeInterpolator2);
                break;
            case "down":
                this.f12765s = 0.0f;
                this.f12766t = a(fFloatValue, -a(100.0f), a(20.0f), -a(100.0f), timeInterpolator, timeInterpolator2);
                break;
            case "left":
                this.f12765s = a(fFloatValue, a(60.0f), -a(60.0f), a(60.0f), timeInterpolator, timeInterpolator2);
                this.f12766t = 0.0f;
                break;
            case "right":
                this.f12765s = a(fFloatValue, -a(60.0f), a(60.0f), -a(60.0f), timeInterpolator, timeInterpolator2);
                this.f12766t = 0.0f;
                break;
            default:
                this.f12765s = 0.0f;
                this.f12766t = 0.0f;
                break;
        }
        invalidate();
    }

    private float a(float f2) {
        return f2 * getResources().getDisplayMetrics().density;
    }

    private static int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i4, i2));
    }

    private static float a(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }

    private static boolean a(float f2, float f3, float f4, float f5, float f6, float f7) {
        return Math.abs(((f4 - f2) * (f7 - f3)) - ((f5 - f3) * (f6 - f2))) < 1.0E-4f;
    }

    private static float[] a(float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = (f4 - f2) * 2.0f;
        float f10 = (f5 - f3) * 2.0f;
        float f11 = f2 * f2;
        float f12 = ((f4 * f4) - f11) + (f5 * f5);
        float f13 = f3 * f3;
        float f14 = f12 - f13;
        float f15 = (f6 - f2) * 2.0f;
        float f16 = (f7 - f3) * 2.0f;
        float f17 = (((f6 * f6) - f11) + (f7 * f7)) - f13;
        float f18 = (f9 * f16) - (f15 * f10);
        return new float[]{((f16 * f14) - (f10 * f17)) / f18, ((f9 * f17) - (f15 * f14)) / f18, ((float) Math.hypot(r5 - f2, r0 - f3)) - f8};
    }

    private static float a(float f2, float f3, float f4, float f5, TimeInterpolator timeInterpolator, TimeInterpolator timeInterpolator2) {
        if (f2 <= 0.7f) {
            return f3 + ((f4 - f3) * timeInterpolator.getInterpolation(a(f2 / 0.7f, 0.0f, 1.0f)));
        }
        return f4 + ((f5 - f4) * timeInterpolator2.getInterpolation(a((f2 - 0.7f) / 0.3f, 0.0f, 1.0f)));
    }
}
