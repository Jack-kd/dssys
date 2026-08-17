package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.ClickAreaParams;
import com.beizi.fusion.bl;
import com.beizi.fusion.jn;
import com.beizi.fusion.lf;
import com.beizi.fusion.qo;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.yk;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class AreaOptimizeFrame extends BaseOptimizeFrame {

    /* renamed from: d, reason: collision with root package name */
    private final ClickAreaParams f12738d;

    /* renamed from: e, reason: collision with root package name */
    private bl f12739e;

    public class a implements yk.b {
        public a() {
        }

        @Override // com.beizi.fusion.yk.b
        public void a(View view, MotionEvent motionEvent) {
            lf lfVarF;
            View view2 = AreaOptimizeFrame.this.f12744c;
            if (!(view2 instanceof ScopeExpressContainer) || (lfVarF = ScopeExpressContainer.d.f((ScopeExpressContainer) view2)) == null) {
                return;
            }
            lfVarF.a(view, AreaOptimizeFrame.this.f12744c, motionEvent);
        }
    }

    public class b extends bl {
        public b(long j2, long j3) {
            super(j2, j3);
        }

        @Override // com.beizi.fusion.bl
        public void a(long j2) {
        }

        @Override // com.beizi.fusion.bl
        public void c() {
        }

        @Override // com.beizi.fusion.bl
        public void d() {
            AreaOptimizeFrame.this.f12739e = null;
            AreaOptimizeFrame.this.removeFromParent();
        }
    }

    public AreaOptimizeFrame(@NonNull Context context, @NonNull OptimizeModel optimizeModel) {
        super(context, optimizeModel);
        this.f12738d = optimizeModel.getClickArea();
        b();
    }

    private void b() {
        int duration;
        ClickAreaParams clickAreaParams = this.f12738d;
        if (clickAreaParams == null || (duration = clickAreaParams.getDuration()) <= 0) {
            return;
        }
        this.f12739e = new b(duration, 1000L);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame
    public void addToWindow() {
        ViewGroup viewGroup;
        FrameLayout.LayoutParams layoutParamsA;
        onViewReappear();
        View view = this.f12744c;
        if (view != null) {
            View rootView = view.getRootView();
            if (!(rootView instanceof ViewGroup) || (viewGroup = (ViewGroup) rootView.findViewById(R.id.content)) == null || (layoutParamsA = a()) == null) {
                return;
            }
            viewGroup.addView(this, layoutParamsA);
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame
    public void bindInteractionForm(zc zcVar) {
        super.bindInteractionForm(zcVar);
        if (zcVar instanceof yk) {
            ((yk) zcVar).a((yk.b) new a());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        bl blVar = this.f12739e;
        if (blVar != null) {
            blVar.g();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame
    public void onViewHide() {
        super.onViewHide();
        removeFromParent();
    }

    private FrameLayout.LayoutParams a() {
        ClickAreaParams clickAreaParams;
        int iF;
        int iD;
        if (this.f12744c == null || (clickAreaParams = this.f12738d) == null) {
            return null;
        }
        int reference = clickAreaParams.getReference();
        if (reference == 0) {
            iF = this.f12744c.getWidth();
            iD = this.f12744c.getHeight();
        } else {
            iF = 0;
            iD = 0;
        }
        if (reference == 1) {
            iF = jn.f(this.f12744c.getContext());
            iD = jn.d(this.f12744c.getContext());
        }
        int iA = a(iF, this.f12738d.getWidth());
        int iA2 = a(iD, this.f12738d.getHeight());
        if (iA <= 0 || iA2 <= 0) {
            return null;
        }
        Rect rect = new Rect();
        this.f12744c.getGlobalVisibleRect(rect);
        int[] iArrA = a(this.f12738d.getVerticalSpace(), this.f12738d.getHorizontalSpace(), rect, iA, iA2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA2);
        layoutParams.topMargin = iArrA[0];
        layoutParams.leftMargin = iArrA[1];
        return layoutParams;
    }

    private int[] a(String str, String str2, Rect rect, int i2, int i3) {
        int[] iArr = new int[2];
        if (str.equalsIgnoreCase("top")) {
            iArr[0] = rect.top;
        }
        if (str.equalsIgnoreCase("bottom")) {
            iArr[0] = rect.bottom - i3;
        }
        if (str.equalsIgnoreCase("center")) {
            int i4 = rect.top;
            iArr[0] = (i4 + ((rect.bottom - i4) / 2)) - (i3 / 2);
        }
        if (str2.equalsIgnoreCase(ScrollClickView.DIR_LEFT)) {
            iArr[1] = rect.left;
        }
        if (str2.equalsIgnoreCase(ScrollClickView.DIR_RIGHT)) {
            iArr[1] = rect.right - i2;
        }
        if (str2.equalsIgnoreCase("center")) {
            int i5 = rect.left;
            iArr[1] = (i5 + ((rect.right - i5) / 2)) - (i2 / 2);
        }
        return iArr;
    }

    private int a(int i2, String str) {
        if (qo.f(str)) {
            return (int) (i2 * qo.k(str));
        }
        return qo.i(str);
    }
}
