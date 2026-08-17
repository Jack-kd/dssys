package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bd;
import com.beizi.fusion.o8;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class ScopeInteractionViewGroup extends ScopeViewGroup implements bd {

    /* renamed from: e, reason: collision with root package name */
    protected zc f12708e;

    public ScopeInteractionViewGroup(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.bd
    public void bindInteractionForm(zc zcVar) {
        this.f12708e = zcVar;
        RenderModel renderModel = this.f12927b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return;
        }
        this.f12708e.a(this.f12927b.getInteractionModel());
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

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        zc zcVar = this.f12708e;
        if (zcVar != null) {
            zcVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zc zcVar = this.f12708e;
        if (zcVar != null) {
            zcVar.b();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        zc zcVar = this.f12708e;
        if (zcVar != null && (zcVar instanceof o8) && ((o8) zcVar).a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public ScopeInteractionViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeInteractionViewGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public ScopeInteractionViewGroup(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
