package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTitleModel;
import com.beizi.fusion.bm;
import com.beizi.fusion.hn;
import com.beizi.fusion.je;
import com.beizi.fusion.le;
import com.beizi.fusion.qo;

/* loaded from: classes2.dex */
public class ScopeSlideView extends ScopeInteractionViewGroup implements le {

    /* renamed from: f, reason: collision with root package name */
    private ImageView f12722f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f12723g;

    /* renamed from: h, reason: collision with root package name */
    private hn f12724h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f12725i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f12726j;

    /* renamed from: k, reason: collision with root package name */
    private String f12727k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f12728l;

    /* renamed from: m, reason: collision with root package name */
    private RelativeLayout f12729m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScopeSlideView.this.a(ScopeSlideView.this.getLayoutParams());
            ScopeSlideView.this.a();
            ScopeSlideView.this.e();
        }
    }

    public class b extends hn {

        /* renamed from: b, reason: collision with root package name */
        private final String f12731b;

        public b(int i2, int i3, String str) {
            super(i2, i3, 1000L);
            this.f12731b = str;
            a(-1, 1);
        }

        @Override // com.beizi.fusion.hn
        public void a(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (ScopeSlideView.this.f12723g == null || ScopeSlideView.this.f12722f == null) {
                return;
            }
            ScopeSlideView.this.f12723g.layout(iIntValue, ScopeSlideView.this.f12723g.getTop(), ScopeSlideView.this.f12723g.getWidth() + iIntValue, ScopeSlideView.this.f12723g.getBottom());
            if ("slideleft".equalsIgnoreCase(this.f12731b)) {
                ScopeSlideView.this.f12722f.layout(iIntValue, ScopeSlideView.this.f12722f.getTop(), ScopeSlideView.this.f12722f.getRight(), ScopeSlideView.this.f12722f.getBottom());
            } else {
                ScopeSlideView.this.f12722f.layout(ScopeSlideView.this.f12722f.getLeft(), ScopeSlideView.this.f12722f.getTop(), iIntValue, ScopeSlideView.this.f12722f.getBottom());
            }
        }
    }

    public class c extends hn {

        /* renamed from: b, reason: collision with root package name */
        private final String f12733b;

        public /* synthetic */ c(ScopeSlideView scopeSlideView, int i2, int i3, String str, a aVar) {
            this(i2, i3, str);
        }

        @Override // com.beizi.fusion.hn
        public void a(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (ScopeSlideView.this.f12723g == null || ScopeSlideView.this.f12722f == null) {
                return;
            }
            ScopeSlideView.this.f12723g.layout(ScopeSlideView.this.f12723g.getLeft(), iIntValue, ScopeSlideView.this.f12723g.getRight(), ScopeSlideView.this.f12723g.getHeight() + iIntValue);
            if ("slideup".equalsIgnoreCase(this.f12733b)) {
                ScopeSlideView.this.f12722f.layout(ScopeSlideView.this.f12722f.getLeft(), iIntValue, ScopeSlideView.this.f12722f.getRight(), ScopeSlideView.this.f12722f.getBottom());
            } else {
                ScopeSlideView.this.f12722f.layout(ScopeSlideView.this.f12722f.getLeft(), ScopeSlideView.this.f12722f.getTop(), ScopeSlideView.this.f12722f.getRight(), iIntValue);
            }
        }

        private c(int i2, int i3, String str) {
            super(i2, i3, 1000L);
            this.f12733b = str;
            a(-1, 1);
        }
    }

    public ScopeSlideView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        hn hnVar = this.f12724h;
        if (hnVar != null) {
            hnVar.c();
        }
    }

    private void f() {
        String strC = c("Normal");
        if (this.f12725i != null) {
            if (TextUtils.isEmpty(strC)) {
                this.f12725i.setVisibility(8);
            } else {
                this.f12725i.setText(strC);
            }
        }
        String strD = d("Normal");
        if (this.f12726j != null) {
            if (TextUtils.isEmpty(strD)) {
                this.f12726j.setVisibility(8);
            } else {
                this.f12726j.setText(strD);
            }
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        super.fillContent(aVar);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionViewGroup, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        d();
        f();
        post(new a());
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        c();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        e();
    }

    @Override // com.beizi.fusion.le
    public void setRenderWithDownload(boolean z2) {
        this.f12728l = z2;
    }

    @Override // com.beizi.fusion.le
    public void updateByInteractiveStatus(String str) {
        f();
    }

    public ScopeSlideView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void b() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.asnp_interaction_slide_view, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        addView(viewInflate, layoutParams);
        this.f12729m = (RelativeLayout) viewInflate.findViewById(R.id.guild_layout);
        this.f12722f = (ImageView) viewInflate.findViewById(R.id.slide_basic_line);
        this.f12723g = (ImageView) viewInflate.findViewById(R.id.slide_guide_icon);
        this.f12725i = (TextView) viewInflate.findViewById(R.id.main_title);
        this.f12726j = (TextView) viewInflate.findViewById(R.id.sub_title);
    }

    private void c() {
        hn hnVar = this.f12724h;
        if (hnVar != null) {
            hnVar.b();
        }
    }

    private String d(String str) {
        RenderModel renderModel = this.f12927b;
        return (renderModel == null || renderModel.getViewModel() == null) ? "" : a(a(this.f12927b.getViewModel().getInteractiveSubTitle()), str);
    }

    public ScopeSlideView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    private int a(TextView textView) {
        if (textView == null || textView.getVisibility() == 8) {
            return 0;
        }
        return bm.a.a(getContext(), textView);
    }

    public ScopeSlideView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    private String c(String str) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            return a(a(this.f12927b.getViewModel().getInteractiveTitle()), str);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup.LayoutParams layoutParams) {
        RenderModel renderModel;
        if (layoutParams == null || (renderModel = this.f12927b) == null || renderModel.getInteractionModel() == null) {
            return;
        }
        int iA = (layoutParams.height - a(this.f12725i)) - a(this.f12726j);
        String animationType = this.f12927b.getViewModel().getAnimationType();
        this.f12727k = animationType;
        if (TextUtils.isEmpty(animationType)) {
            this.f12727k = "slideup";
        }
        ViewGroup.LayoutParams layoutParams2 = this.f12729m.getLayoutParams();
        layoutParams2.width = layoutParams.width;
        layoutParams2.height = iA;
        if (!TextUtils.isEmpty(this.f12727k)) {
            if (b(this.f12727k) && "slidedown".equalsIgnoreCase(this.f12727k)) {
                this.f12722f.setRotation(180.0f);
            }
            if (a(this.f12727k)) {
                if ("slideright".equalsIgnoreCase(this.f12727k)) {
                    this.f12722f.setRotation(90.0f);
                }
                if ("slideleft".equalsIgnoreCase(this.f12727k)) {
                    this.f12722f.setRotation(270.0f);
                }
            }
        }
        this.f12729m.setLayoutParams(layoutParams2);
    }

    private void d() {
        if (this.f12927b.getViewModel() != null) {
            String textColor = this.f12927b.getViewModel().getTextColor();
            if (!qo.d(textColor)) {
                textColor = "#FFFFFFFF";
            }
            int fontSize = this.f12927b.getViewModel().getFontSize();
            if (fontSize == 0) {
                fontSize = 20;
            }
            TextView textView = this.f12725i;
            if (textView != null) {
                textView.setTextColor(Color.parseColor(textColor));
                this.f12725i.setTextSize(2, fontSize);
                this.f12725i.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
            TextView textView2 = this.f12726j;
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(textColor));
                this.f12726j.setTextSize(2, fontSize - 4);
                this.f12726j.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
        }
    }

    private boolean b(String str) {
        return "slidedown".equalsIgnoreCase(str) || "slideup".equalsIgnoreCase(str);
    }

    private boolean a(String str) {
        return "slideleft".equalsIgnoreCase(str) || "slideright".equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            r13 = this;
            java.lang.String r0 = r13.f12727k
            int r1 = r0.hashCode()
            r2 = -2119261172(0xffffffff81aea40c, float:-6.41529E-38)
            java.lang.String r3 = "slideup"
            java.lang.String r4 = "slidedown"
            java.lang.String r5 = "slideleft"
            java.lang.String r6 = "slideright"
            if (r1 == r2) goto L5d
            r2 = -795991597(0xffffffffd08e21d3, float:-1.907665E10)
            if (r1 == r2) goto L59
            r2 = -795763400(0xffffffffd0919d38, float:-1.9543998E10)
            if (r1 == r2) goto L3f
            r2 = 1106799371(0x41f86b0b, float:31.052267)
            if (r1 == r2) goto L23
            goto L77
        L23:
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L77
            android.widget.ImageView r0 = r13.f12722f
            int r0 = r0.getLeft()
            android.widget.ImageView r1 = r13.f12722f
            int r1 = r1.getRight()
            android.widget.ImageView r2 = r13.f12723g
            int r2 = r2.getWidth()
        L3b:
            int r1 = r1 - r2
        L3c:
            r9 = r0
            r10 = r1
            goto L8a
        L3f:
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L77
            android.widget.ImageView r0 = r13.f12722f
            int r0 = r0.getRight()
            android.widget.ImageView r1 = r13.f12723g
            int r1 = r1.getWidth()
            int r0 = r0 - r1
            android.widget.ImageView r1 = r13.f12722f
            int r1 = r1.getLeft()
            goto L3c
        L59:
            r0.equals(r4)
            goto L77
        L5d:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L77
            android.widget.ImageView r0 = r13.f12722f
            int r0 = r0.getBottom()
            android.widget.ImageView r1 = r13.f12723g
            int r1 = r1.getHeight()
            int r0 = r0 - r1
            android.widget.ImageView r1 = r13.f12722f
            int r1 = r1.getTop()
            goto L3c
        L77:
            android.widget.ImageView r0 = r13.f12722f
            int r0 = r0.getTop()
            android.widget.ImageView r1 = r13.f12722f
            int r1 = r1.getBottom()
            android.widget.ImageView r2 = r13.f12723g
            int r2 = r2.getHeight()
            goto L3b
        L8a:
            java.lang.String r0 = r13.f12727k
            boolean r0 = r5.equalsIgnoreCase(r0)
            if (r0 != 0) goto L9a
            java.lang.String r0 = r13.f12727k
            boolean r0 = r6.equalsIgnoreCase(r0)
            if (r0 == 0) goto La3
        L9a:
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeSlideView$b r0 = new com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeSlideView$b
            java.lang.String r1 = r13.f12727k
            r0.<init>(r9, r10, r1)
            r13.f12724h = r0
        La3:
            java.lang.String r0 = r13.f12727k
            boolean r0 = r3.equalsIgnoreCase(r0)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = r13.f12727k
            boolean r0 = r4.equalsIgnoreCase(r0)
            if (r0 == 0) goto Lb4
            goto Lb5
        Lb4:
            return
        Lb5:
            com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeSlideView$c r7 = new com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeSlideView$c
            java.lang.String r11 = r13.f12727k
            r12 = 0
            r8 = r13
            r7.<init>(r8, r9, r10, r11, r12)
            r8.f12724h = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeSlideView.a():void");
    }

    private String a(StatusParamModel statusParamModel, String str) {
        if (statusParamModel != null) {
            if ("Normal".equals(str)) {
                return statusParamModel.getNormal();
            }
            if ("Passive".equals(str)) {
                return statusParamModel.getPassivation();
            }
            if ("Cooling".equals(str)) {
                return statusParamModel.getCool();
            }
            return "";
        }
        return "";
    }

    private StatusParamModel a(StatusTitleModel statusTitleModel) {
        if (statusTitleModel == null) {
            return null;
        }
        if (this.f12728l) {
            return statusTitleModel.getDownload();
        }
        return statusTitleModel.getNormal();
    }
}
