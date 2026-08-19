package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
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
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeIndicateArrowView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
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
public class ScopeShakeView extends ScopeInteractionViewGroup implements le {

    /* renamed from: f, reason: collision with root package name */
    private ImageView f12712f;

    /* renamed from: g, reason: collision with root package name */
    private ScopeIndicateArrowView f12713g;

    /* renamed from: h, reason: collision with root package name */
    private RelativeLayout f12714h;

    /* renamed from: i, reason: collision with root package name */
    private AnimatorSet f12715i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f12716j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f12717k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f12718l;

    /* renamed from: m, reason: collision with root package name */
    private String f12719m;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewModel f12720a;

        public a(ViewModel viewModel) {
            this.f12720a = viewModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMin = Math.min(ScopeShakeView.this.f12714h.getMeasuredHeight(), ScopeShakeView.this.f12714h.getMeasuredWidth());
            xn.a(ScopeShakeView.this.getContext(), ScopeShakeView.this.f12714h, this.f12720a.getBgColor(), qo.i(this.f12720a.getBorderSize()), this.f12720a.getBorderColor(), xn.a(this.f12720a.getBorderRadius(), iMin));
            ScopeShakeView.this.b(iMin, this.f12720a);
            ScopeShakeView.this.a(iMin, this.f12720a);
            ScopeShakeView.this.a(iMin);
        }
    }

    public ScopeShakeView(Context context) {
        super(context);
        this.f12716j = false;
        this.f12719m = "";
    }

    private void c() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.asnp_interaction_shake_view, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(viewInflate, layoutParams);
        this.f12714h = (RelativeLayout) viewInflate.findViewById(R.id.adscope_isv_container_rl);
        this.f12712f = (ImageView) viewInflate.findViewById(R.id.adscope_isv_img_iv);
        this.f12713g = (ScopeIndicateArrowView) viewInflate.findViewById(R.id.adscope_isv_indicate_arrow_view);
        this.f12717k = (TextView) viewInflate.findViewById(R.id.adscope_isv_title);
        this.f12718l = (TextView) viewInflate.findViewById(R.id.adscope_isv_sub_title);
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
            TextView textView = this.f12717k;
            if (textView != null) {
                textView.setTextColor(Color.parseColor(textColor));
                this.f12717k.setTextSize(2, fontSize);
                this.f12717k.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
            TextView textView2 = this.f12718l;
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(textColor));
                this.f12718l.setTextSize(2, fontSize - 4);
                this.f12718l.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
        }
    }

    private void e() {
        AnimatorSet animatorSet = this.f12715i;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f12715i = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f12715i = animatorSet2;
        animatorSet2.addListener(new ph(animatorSet2));
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        setBackgroundColor(0);
        RenderModel renderModel = this.f12927b;
        if (renderModel != null) {
            aVar.b(renderModel.getId());
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionViewGroup, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        c();
        b();
        d();
        a();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeInteractionViewGroup, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatorSet animatorSet = this.f12715i;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f12715i = null;
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        e();
        zc zcVar = this.f12708e;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).a(z2);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        if (!z2) {
            a();
        }
        zc zcVar = this.f12708e;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).k();
    }

    public void setMaxProgress(int i2) {
        ScopeIndicateArrowView scopeIndicateArrowView = this.f12713g;
        if (scopeIndicateArrowView != null) {
            scopeIndicateArrowView.setMaxProgress(i2);
        }
    }

    public void setProgress(int i2) {
        ScopeIndicateArrowView scopeIndicateArrowView = this.f12713g;
        if (scopeIndicateArrowView != null) {
            scopeIndicateArrowView.setCurrentProgress(i2);
        }
    }

    @Override // com.beizi.fusion.le
    public void setRenderWithDownload(boolean z2) {
        this.f12716j = z2;
    }

    @Override // com.beizi.fusion.le
    public void updateByInteractiveStatus(String str) {
        if (this.f12719m.equals(str)) {
            return;
        }
        this.f12719m = str;
        c(str);
    }

    private void b() {
        ViewModel viewModel;
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || (viewModel = renderModel.getViewModel()) == null) {
            return;
        }
        this.f12714h.post(new a(viewModel));
    }

    public ScopeShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12716j = false;
        this.f12719m = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (this.f12713g == null || this.f12927b.getInteractionModel() == null) {
            return;
        }
        if (this.f12927b.getInteractionModel().getFeedbackAnimation() != 0) {
            this.f12713g.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f12713g.getLayoutParams();
            int i3 = (int) (i2 * 0.7d);
            layoutParams.width = i3;
            layoutParams.height = i3;
            this.f12713g.setLayoutParams(layoutParams);
            this.f12713g.setLineWidth(i2 / 30);
            return;
        }
        this.f12713g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2, ViewModel viewModel) {
        RelativeLayout relativeLayout = this.f12714h;
        if (relativeLayout != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i2;
            this.f12714h.setLayoutParams(layoutParams);
            if (qo.d(viewModel.getBgColor())) {
                xn.a(getContext(), this.f12714h, viewModel.getBgColor(), 0, null, i2 / 2);
            } else {
                xn.a(getContext(), this.f12714h, "#66333333", 0, null, i2 / 2);
            }
        }
    }

    public ScopeShakeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12716j = false;
        this.f12719m = "";
    }

    public ScopeShakeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f12716j = false;
        this.f12719m = "";
    }

    private void c(String str) {
        String strA = a(str);
        String strB = b(str);
        a(this.f12717k, strA);
        a(this.f12718l, strB);
    }

    private String b(String str) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            return a(a(this.f12927b.getViewModel().getInteractiveSubTitle()), str);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, ViewModel viewModel) {
        ImageView imageView = this.f12712f;
        if (imageView != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            int i3 = (int) (i2 * 0.5d);
            layoutParams.width = i3;
            layoutParams.height = i3;
            this.f12712f.setLayoutParams(layoutParams);
            String imageURL = viewModel.getImageURL();
            if (TextUtils.isEmpty(imageURL)) {
                return;
            }
            pf.a(getContext()).b(imageURL).b(false).a(this.f12712f);
        }
    }

    private void a() {
        try {
            AnimatorSet animatorSet = this.f12715i;
            if (animatorSet == null || !animatorSet.isRunning()) {
                ArrayList arrayList = new ArrayList();
                a(arrayList, 0.0f, 30.0f);
                a(arrayList, 30.0f, 0.0f);
                a(arrayList, 0.0f, -30.0f);
                a(arrayList, -30.0f, 0.0f);
                if (arrayList.isEmpty()) {
                    return;
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.f12715i = animatorSet2;
                animatorSet2.addListener(new ph(animatorSet2));
                this.f12715i.playSequentially(arrayList);
                this.f12715i.start();
            }
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private void a(List list, float f2, float f3) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f12712f, C1244a.f35650B, f2, f3);
            objectAnimatorOfFloat.setDuration(100);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(TextView textView, String str) {
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
    }

    private String a(String str) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            return a(a(this.f12927b.getViewModel().getInteractiveTitle()), str);
        }
        return "";
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
        if (this.f12716j) {
            return statusTitleModel.getDownload();
        }
        return statusTitleModel.getNormal();
    }
}
