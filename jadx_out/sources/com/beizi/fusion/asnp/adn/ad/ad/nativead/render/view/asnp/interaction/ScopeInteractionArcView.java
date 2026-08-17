package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.SlideModel;
import com.beizi.fusion.bd;
import com.beizi.fusion.je;
import com.beizi.fusion.o8;
import com.beizi.fusion.pn;
import com.beizi.fusion.zc;

/* loaded from: classes2.dex */
public class ScopeInteractionArcView extends ScopeArcView implements bd {

    /* renamed from: x, reason: collision with root package name */
    private zc f12702x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f12703y;

    public ScopeInteractionArcView(Context context) {
        super(context);
        this.f12703y = false;
    }

    @Override // com.beizi.fusion.bd
    public void bindInteractionForm(zc zcVar) {
        SlideModel slideModel;
        this.f12702x = zcVar;
        RenderModel renderModel = this.f12870b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return;
        }
        InteractionModel interactionModel = this.f12870b.getInteractionModel();
        this.f12702x.a(interactionModel);
        if (interactionModel == null || (slideModel = interactionModel.getSlideModel()) == null) {
            return;
        }
        slideModel.getSlideDirection("Normal");
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView, com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        super.fillContent(aVar);
    }

    @Override // com.beizi.fusion.bd
    public String getActionType() {
        RenderModel renderModel = this.f12870b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12870b.getInteractionModel().getExecution();
    }

    @Override // com.beizi.fusion.bd
    public String getInteractionType() {
        RenderModel renderModel = this.f12870b;
        if (renderModel == null || renderModel.getInteractionModel() == null) {
            return null;
        }
        return this.f12870b.getInteractionModel().getBindEvent();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        zc zcVar = this.f12702x;
        if (zcVar != null) {
            zcVar.a();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeArcView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zc zcVar = this.f12702x;
        if (zcVar != null) {
            zcVar.b();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f12703y = false;
            if (!a(motionEvent.getX(), motionEvent.getY())) {
                return true;
            }
            this.f12703y = true;
        }
        if (motionEvent.getAction() == 1 && !this.f12703y) {
            return true;
        }
        zc zcVar = this.f12702x;
        if (zcVar != null && (zcVar instanceof o8) && ((o8) zcVar).a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        super.onViewPause(z2);
        zc zcVar = this.f12702x;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).a(z2);
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeSimpleView, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        super.onViewResume(z2);
        zc zcVar = this.f12702x;
        if (zcVar == null || !(zcVar instanceof pn)) {
            return;
        }
        ((pn) zcVar).k();
    }

    public ScopeInteractionArcView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12703y = false;
    }

    public ScopeInteractionArcView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12703y = false;
    }
}
