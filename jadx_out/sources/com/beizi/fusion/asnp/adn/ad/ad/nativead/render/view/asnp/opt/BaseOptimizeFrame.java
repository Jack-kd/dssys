package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.gm;
import com.beizi.fusion.je;
import com.beizi.fusion.yk;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class BaseOptimizeFrame extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    protected final OptimizeModel f12742a;

    /* renamed from: b, reason: collision with root package name */
    private zc f12743b;

    /* renamed from: c, reason: collision with root package name */
    protected View f12744c;

    public BaseOptimizeFrame(@NonNull Context context, OptimizeModel optimizeModel) {
        super(context);
        this.f12742a = optimizeModel;
    }

    public void addToWindow() {
        zc zcVar = this.f12743b;
        if (zcVar != null) {
            zcVar.a();
        }
        View view = this.f12744c;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).addView(this, this.f12744c.getLayoutParams());
            }
        }
    }

    public void bindInteractionForm(zc zcVar) {
        this.f12743b = zcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void linkedTo(View view) {
        ScopeExpressContainer expressRoot;
        this.f12744c = view;
        if (view instanceof ScopeExpressContainer) {
            setTag(gm.a(getContext(), "scope_root_container"), view);
        } else {
            if (!(view instanceof je) || (expressRoot = ((je) view).getExpressRoot()) == null) {
                return;
            }
            setTag(gm.a(getContext(), "scope_root_container"), expressRoot);
        }
    }

    public void onViewHide() {
        zc zcVar = this.f12743b;
        if (zcVar != null) {
            zcVar.b();
        }
    }

    public void onViewReappear() {
        zc zcVar = this.f12743b;
        if (zcVar != null) {
            zcVar.a();
        }
    }

    public void removeFromParent() {
        ScopeExpressContainer.d.a(this);
        zc zcVar = this.f12743b;
        if (zcVar instanceof yk) {
            ((yk) zcVar).e();
        }
    }
}
