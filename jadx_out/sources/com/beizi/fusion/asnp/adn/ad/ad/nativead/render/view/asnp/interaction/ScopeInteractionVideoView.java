package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bd;
import com.beizi.fusion.dd;
import com.beizi.fusion.kc;
import com.beizi.fusion.o8;
import com.beizi.fusion.pn;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class ScopeInteractionVideoView extends ScopeVideoView implements bd, kc {

    /* renamed from: x, reason: collision with root package name */
    private zc f12706x;

    /* renamed from: y, reason: collision with root package name */
    private dd f12707y;

    public ScopeInteractionVideoView(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.kc
    public void addExtraExecutor(dd ddVar) {
        this.f12707y = ddVar;
    }

    @Override // com.beizi.fusion.bd
    public void bindInteractionForm(zc zcVar) {
        this.f12706x = zcVar;
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return;
        }
        this.f12706x.a(this.f12927b.getInteractionModel());
    }

    @Override // com.beizi.fusion.bd
    public String getActionType() {
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12927b.getInteractionModel().getExecution();
    }

    @Override // com.beizi.fusion.bd
    public String getInteractionType() {
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12927b.getInteractionModel().getBindEvent();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView
    public void h() {
        super.h();
        dd ddVar = this.f12707y;
        if (ddVar != null) {
            ddVar.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        zc zcVar = this.f12706x;
        if (zcVar != null) {
            zcVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zc zcVar = this.f12706x;
        if (zcVar != null) {
            zcVar.b();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        zc zcVar = this.f12706x;
        if (zcVar != null && (zcVar instanceof o8) && ((o8) zcVar).a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView, com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        zc zcVar = this.f12706x;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).a(z2);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView, com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        zc zcVar = this.f12706x;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).k();
    }

    public ScopeInteractionVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeInteractionVideoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeInteractionVideoView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
