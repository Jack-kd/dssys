package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeIndicateArrowView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTitleModel;
import com.beizi.fusion.je;
import com.beizi.fusion.le;
import com.beizi.fusion.pf;
import com.beizi.fusion.ph;
import com.beizi.fusion.pn;
import com.beizi.fusion.qo;
import com.beizi.fusion.rm;
import com.beizi.fusion.xn;
import com.beizi.fusion.zc;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ScopeEulerAngleView extends ScopeInteractionViewGroup implements le {
    public static final String EULER_ANGLE_DIRECTION_ANTICLOCKWISE = "2";
    public static final String EULER_ANGLE_DIRECTION_BIDIRECTIONAL = "0";
    public static final String EULER_ANGLE_DIRECTION_CLOCKWISE = "1";
    public static final String EULER_ANGLE_DIRECTION_REGULATORY = "3";

    /* renamed from: f, reason: collision with root package name */
    private final String f12688f;

    /* renamed from: g, reason: collision with root package name */
    private final String f12689g;

    /* renamed from: h, reason: collision with root package name */
    private final String f12690h;

    /* renamed from: i, reason: collision with root package name */
    private RelativeLayout f12691i;

    /* renamed from: j, reason: collision with root package name */
    private ImageView f12692j;

    /* renamed from: k, reason: collision with root package name */
    private ScopeIndicateArrowView f12693k;

    /* renamed from: l, reason: collision with root package name */
    private LinearLayout f12694l;

    /* renamed from: m, reason: collision with root package name */
    private TextView f12695m;

    /* renamed from: n, reason: collision with root package name */
    private TextView f12696n;

    /* renamed from: o, reason: collision with root package name */
    private AnimatorSet f12697o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f12698p;

    /* renamed from: q, reason: collision with root package name */
    private Object f12699q;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewModel f12700a;

        public a(ViewModel viewModel) {
            this.f12700a = viewModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMin = Math.min(ScopeEulerAngleView.this.f12691i.getMeasuredHeight(), ScopeEulerAngleView.this.f12691i.getMeasuredWidth());
            xn.a(ScopeEulerAngleView.this.getContext(), ScopeEulerAngleView.this.f12691i, this.f12700a.getBgColor(), qo.i(this.f12700a.getBorderSize()), this.f12700a.getBorderColor(), xn.a(this.f12700a.getBorderRadius(), iMin));
            ScopeEulerAngleView.this.c(iMin);
            ScopeEulerAngleView.this.a(iMin);
            ScopeEulerAngleView.this.b(iMin);
        }
    }

    public ScopeEulerAngleView(Context context) {
        super(context);
        this.f12688f = "rotationX";
        this.f12689g = "rotationY";
        this.f12690h = C1244a.f35650B;
        this.f12699q = "";
    }

    private void d() {
        AnimatorSet animatorSet = this.f12697o;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f12697o = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f12697o = animatorSet2;
        animatorSet2.addListener(new ph(animatorSet2));
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        if (this.f12927b != null) {
            setBackgroundColor(0);
            aVar.b(this.f12927b.getId());
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionViewGroup, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        c();
        a();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionViewGroup, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatorSet animatorSet = this.f12697o;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f12697o = null;
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewDestroy() {
        AnimatorSet animatorSet = this.f12697o;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f12697o.removeAllListeners();
        }
        this.f12697o = null;
        super.onViewDestroy();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        zc zcVar = this.f12708e;
        if (zcVar != null && (zcVar instanceof pn)) {
            ((pn) zcVar).a(z2);
        }
        d();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        zc zcVar = this.f12708e;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).k();
    }

    public void setCurrentProgress(double d2) {
        try {
            ScopeIndicateArrowView scopeIndicateArrowView = this.f12693k;
            if (scopeIndicateArrowView != null) {
                scopeIndicateArrowView.setCurrentProgress(d2);
            }
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    @Override // com.beizi.fusion.le
    public void setRenderWithDownload(boolean z2) {
        this.f12698p = z2;
    }

    public void startInteractionAnimation(String str, String str2, String str3) {
        try {
            AnimatorSet animatorSet = this.f12697o;
            if (animatorSet == null || !animatorSet.isRunning()) {
                a(str, str2, str3);
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(a(str, "rotationX"));
                arrayList.addAll(a(str2, "rotationY"));
                arrayList.addAll(a(str3, C1244a.f35650B));
                if (arrayList.isEmpty()) {
                    return;
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.f12697o = animatorSet2;
                animatorSet2.addListener(new ph(animatorSet2));
                this.f12697o.playSequentially(arrayList);
                this.f12697o.start();
            }
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    @Override // com.beizi.fusion.le
    public void updateByInteractiveStatus(String str) {
        if (this.f12699q.equals(str)) {
            return;
        }
        this.f12699q = str;
        c(str);
    }

    private void b() {
        View viewInflate = View.inflate(getContext(), R.layout.asnp_interaction_euler_angle_view, null);
        this.f12691i = (RelativeLayout) viewInflate.findViewById(R.id.adscope_ieav_container_rl);
        this.f12692j = (ImageView) viewInflate.findViewById(R.id.adscope_ieav_img_iv);
        ScopeIndicateArrowView scopeIndicateArrowView = (ScopeIndicateArrowView) viewInflate.findViewById(R.id.adscope_ieav_indicate_arrow_view);
        this.f12693k = scopeIndicateArrowView;
        scopeIndicateArrowView.setMaxProgress(100.0d);
        this.f12694l = (LinearLayout) viewInflate.findViewById(R.id.adscope_ieav_title_container_ll);
        this.f12695m = (TextView) viewInflate.findViewById(R.id.adscope_ieav_title_tv);
        this.f12696n = (TextView) viewInflate.findViewById(R.id.adscope_ieav_subtitle_tv);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(viewInflate, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        RelativeLayout relativeLayout = this.f12691i;
        if (relativeLayout != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i2;
            this.f12691i.setLayoutParams(layoutParams);
            String bgColor = this.f12927b.getViewModel().getBgColor();
            int i3 = i2 / 2;
            if (qo.d(bgColor)) {
                xn.a(getContext(), this.f12691i, bgColor, 0, null, i3);
            } else {
                xn.a(getContext(), this.f12691i, "#66333333", 0, null, i3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        ImageView imageView = this.f12692j;
        if (imageView != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            double d2 = i2;
            layoutParams.width = (int) (0.35d * d2);
            layoutParams.height = (int) (d2 * 0.5d);
            this.f12692j.setLayoutParams(layoutParams);
        }
        String imageURL = this.f12927b.getViewModel().getImageURL();
        if (TextUtils.isEmpty(imageURL)) {
            return;
        }
        pf.a(getContext()).b(imageURL).b(false).a(this.f12692j);
    }

    public ScopeEulerAngleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12688f = "rotationX";
        this.f12689g = "rotationY";
        this.f12690h = C1244a.f35650B;
        this.f12699q = "";
    }

    public ScopeEulerAngleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12688f = "rotationX";
        this.f12689g = "rotationY";
        this.f12690h = C1244a.f35650B;
        this.f12699q = "";
    }

    private void c() {
        if (this.f12927b.getViewModel() != null) {
            String textColor = this.f12927b.getViewModel().getTextColor();
            if (!qo.d(textColor)) {
                textColor = "#FFFFFFFF";
            }
            int fontSize = this.f12927b.getViewModel().getFontSize();
            if (fontSize == 0) {
                fontSize = 20;
            }
            TextView textView = this.f12695m;
            if (textView != null) {
                textView.setTextColor(Color.parseColor(textColor));
                this.f12695m.setTextSize(2, fontSize);
                this.f12695m.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
            TextView textView2 = this.f12696n;
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(textColor));
                this.f12696n.setTextSize(2, fontSize - 4);
                this.f12696n.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        try {
            if (this.f12693k == null) {
                return;
            }
            InteractionModel interactionModel = this.f12927b.getInteractionModel();
            if ((interactionModel != null ? interactionModel.getFeedbackAnimation() : 0) == 0) {
                this.f12693k.setVisibility(8);
                return;
            }
            this.f12693k.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f12693k.getLayoutParams();
            int i3 = (int) (i2 * 0.7d);
            layoutParams.width = i3;
            layoutParams.height = i3;
            this.f12693k.setLayoutParams(layoutParams);
            this.f12693k.setLineWidth(i2 / 30);
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private List a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            float f2 = ("rotationX".equalsIgnoreCase(str2) || "rotationY".equalsIgnoreCase(str2)) ? 60.0f : 30.0f;
            ArrayList arrayList = new ArrayList();
            if ("2".equalsIgnoreCase(str)) {
                float f3 = -f2;
                a(arrayList, str2, 0.0f, f3);
                a(arrayList, str2, f3, 0.0f);
                return arrayList;
            }
            if ("1".equalsIgnoreCase(str)) {
                a(arrayList, str2, 0.0f, f2);
                a(arrayList, str2, f2, 0.0f);
                return arrayList;
            }
            a(arrayList, str2, 0.0f, f2);
            a(arrayList, str2, f2, 0.0f);
            float f4 = -f2;
            a(arrayList, str2, 0.0f, f4);
            a(arrayList, str2, f4, 0.0f);
            return arrayList;
        }
        return new ArrayList();
    }

    public ScopeEulerAngleView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f12688f = "rotationX";
        this.f12689g = "rotationY";
        this.f12690h = C1244a.f35650B;
        this.f12699q = "";
    }

    private String b(String str) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            return a(a(this.f12927b.getViewModel().getInteractiveSubTitle()), str);
        }
        return "";
    }

    private void c(String str) {
        boolean z2;
        String strA = a(str);
        String strB = b(str);
        try {
            LinearLayout linearLayout = this.f12694l;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            boolean z3 = true;
            if (this.f12695m == null || TextUtils.isEmpty(strA)) {
                z2 = false;
            } else if (!TextUtils.isEmpty(strA)) {
                this.f12695m.setVisibility(0);
                this.f12695m.setText(strA);
                z2 = false;
            } else {
                this.f12695m.setVisibility(8);
                z2 = true;
            }
            if (this.f12696n == null) {
                z3 = z2;
            } else if (!TextUtils.isEmpty(strB)) {
                this.f12696n.setVisibility(0);
                this.f12696n.setText(strB);
                z3 = z2;
            } else {
                this.f12696n.setVisibility(8);
            }
            if (z3) {
                a();
            }
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private void a(List list, String str, float f2, float f3) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f12692j, str, f2, f3);
            objectAnimatorOfFloat.setDuration(350);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private void a() {
        ViewModel viewModel;
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || (viewModel = renderModel.getViewModel()) == null) {
            return;
        }
        this.f12691i.post(new a(viewModel));
    }

    private void a(String str, String str2, String str3) {
        try {
            if (this.f12693k == null) {
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                this.f12693k.setArrowDirection(0);
                return;
            }
            if (("1".equals(str2) && "1".equals(str3)) || ((TextUtils.isEmpty(str2) && "1".equals(str3)) || (TextUtils.isEmpty(str3) && "1".equals(str2)))) {
                this.f12693k.setArrowDirection(1);
                return;
            }
            if (("2".equals(str2) && "2".equals(str3)) || ((TextUtils.isEmpty(str2) && "2".equals(str3)) || (TextUtils.isEmpty(str3) && "2".equals(str2)))) {
                this.f12693k.setArrowDirection(2);
            } else {
                this.f12693k.setArrowDirection(0);
            }
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private String a(String str) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            return a(a(this.f12927b.getViewModel().getInteractiveTitle()), str);
        }
        return "";
    }

    private StatusParamModel a(StatusTitleModel statusTitleModel) {
        if (statusTitleModel == null) {
            return null;
        }
        if (this.f12698p) {
            return statusTitleModel.getDownload();
        }
        return statusTitleModel.getNormal();
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
}
