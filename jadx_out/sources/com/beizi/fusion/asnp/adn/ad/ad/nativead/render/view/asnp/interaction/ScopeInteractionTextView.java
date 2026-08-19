package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.bd;
import com.beizi.fusion.o8;
import com.beizi.fusion.pn;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class ScopeInteractionTextView extends ScopeTextView implements bd {

    /* renamed from: i, reason: collision with root package name */
    private zc f12705i;

    public ScopeInteractionTextView(@NonNull Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.bd
    public void bindInteractionForm(zc zcVar) {
        this.f12705i = zcVar;
        RenderModel renderModel = this.f12876d;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return;
        }
        this.f12705i.a(this.f12876d.getInteractionModel());
    }

    public String getActionType() {
        RenderModel renderModel = this.f12876d;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12876d.getInteractionModel().getExecution();
    }

    public String getInteractionType() {
        RenderModel renderModel = this.f12876d;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12876d.getInteractionModel().getBindEvent();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        zc zcVar = this.f12705i;
        if (zcVar != null) {
            zcVar.a();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zc zcVar = this.f12705i;
        if (zcVar != null) {
            zcVar.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        zc zcVar = this.f12705i;
        if (zcVar != null && (zcVar instanceof o8) && ((o8) zcVar).a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        zc zcVar = this.f12705i;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).a(z2);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        zc zcVar = this.f12705i;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).k();
    }

    public ScopeInteractionTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeInteractionTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
