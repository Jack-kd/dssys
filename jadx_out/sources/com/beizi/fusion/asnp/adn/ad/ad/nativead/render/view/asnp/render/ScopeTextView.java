package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTextModel;
import com.beizi.fusion.gf;
import com.beizi.fusion.je;
import com.beizi.fusion.qo;
import com.beizi.fusion.te;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.xn;

/* loaded from: classes2.dex */
public class ScopeTextView extends TextView implements je, te, gf {

    /* renamed from: a, reason: collision with root package name */
    private final String f12873a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12874b;

    /* renamed from: c, reason: collision with root package name */
    private String f12875c;

    /* renamed from: d, reason: collision with root package name */
    protected RenderModel f12876d;

    /* renamed from: e, reason: collision with root package name */
    protected AssetModel f12877e;

    /* renamed from: f, reason: collision with root package name */
    private ScopeExpressContainer f12878f;

    /* renamed from: g, reason: collision with root package name */
    private StatusTextModel f12879g;

    /* renamed from: h, reason: collision with root package name */
    private String f12880h;

    public ScopeTextView(@NonNull Context context) {
        super(context);
        this.f12873a = ScrollClickView.DIR_LEFT;
        this.f12874b = ScrollClickView.DIR_RIGHT;
    }

    @Override // com.beizi.fusion.je
    public void bindAssetModel(AssetModel assetModel) {
        this.f12877e = assetModel;
    }

    @Override // com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        this.f12876d = renderModel;
        if (renderModel == null || renderModel.getViewModel() == null) {
            return;
        }
        StatusTextModel titleInfo = renderModel.getViewModel().getTitleInfo();
        this.f12879g = titleInfo;
        if (titleInfo != null) {
            this.f12880h = titleInfo.getNormal();
        }
    }

    public void fillContent(je.a aVar) {
        RenderModel renderModel = this.f12876d;
        if (renderModel == null || renderModel.getViewModel() == null) {
            return;
        }
        ViewModel viewModel = this.f12876d.getViewModel();
        xn.a(getContext(), this, viewModel.getBgColor(), qo.i(viewModel.getBorderSize()), viewModel.getBorderColor(), xn.a(viewModel.getBorderRadius(), getLayoutParams().height));
        setTextConfig(viewModel);
        a();
        aVar.b(this.f12876d.getId());
    }

    @Override // com.beizi.fusion.je
    public ScopeExpressContainer getExpressRoot() {
        return this.f12878f;
    }

    @Override // com.beizi.fusion.je
    public int getLayer() {
        return this.f12876d.getLayer();
    }

    @Override // com.beizi.fusion.je
    public String getScopeViewID() {
        return this.f12875c;
    }

    @Override // com.beizi.fusion.je
    public void onViewDestroy() {
    }

    public void onViewPause(boolean z2) {
    }

    public void onViewResume(boolean z2) {
    }

    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        this.f12878f = scopeExpressContainer;
        ScopeExpressContainer.d.a(scopeExpressContainer, (gf) this);
        ScopeExpressContainer.d.a(scopeExpressContainer, (te) this);
    }

    @Override // com.beizi.fusion.je
    public void setScopeViewID(String str) {
        this.f12875c = str;
        setId(qo.i(str));
    }

    public void setTextConfig(ViewModel viewModel) {
        int lineCount = viewModel.getLineCount();
        if (lineCount > 0) {
            setLines(lineCount);
        }
        setTextSize(2, viewModel.getFontSize());
        if (qo.d(viewModel.getTextColor())) {
            setTextColor(Color.parseColor(viewModel.getTextColor()));
        }
        String textAlign = viewModel.getTextAlign();
        if (TextUtils.isEmpty(textAlign)) {
            return;
        }
        textAlign.getClass();
        if (textAlign.equals(ScrollClickView.DIR_LEFT)) {
            setGravity(19);
        } else if (textAlign.equals(ScrollClickView.DIR_RIGHT)) {
            setGravity(21);
        } else {
            setGravity(17);
        }
    }

    @Override // com.beizi.fusion.te
    public void updateTextWithStatus(final te.a aVar) {
        post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f12937b.a(aVar);
            }
        });
    }

    @Override // com.beizi.fusion.gf
    public void updateTextWithTimer(final String str, final String str2) {
        post(new Runnable() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f12934b.a(str, str2);
            }
        });
    }

    public void a() {
        AssetModel assetModel = this.f12877e;
        String title = (assetModel == null || assetModel.getTitle() == null) ? this.f12876d.getViewModel() != null ? this.f12876d.getViewModel().getTitle() : null : this.f12877e.getTitle().getText();
        if (TextUtils.isEmpty(this.f12880h) && !TextUtils.isEmpty(title)) {
            setText(title);
        }
        updateTextWithStatus(te.a.NORMAL);
    }

    public ScopeTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12873a = ScrollClickView.DIR_LEFT;
        this.f12874b = ScrollClickView.DIR_RIGHT;
    }

    public ScopeTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12873a = ScrollClickView.DIR_LEFT;
        this.f12874b = ScrollClickView.DIR_RIGHT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(te.a aVar) {
        StatusTextModel statusTextModel = this.f12879g;
        if (statusTextModel != null) {
            if (aVar == te.a.NORMAL) {
                this.f12880h = statusTextModel.getNormal();
            } else if (aVar == te.a.SELECTED) {
                this.f12880h = statusTextModel.getSelected();
            } else {
                this.f12880h = statusTextModel.getFinalText();
            }
            if (TextUtils.isEmpty(this.f12880h) || this.f12880h.contains("__")) {
                return;
            }
            setText(this.f12880h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        if (TextUtils.isEmpty(this.f12880h) || !this.f12880h.contains(str)) {
            return;
        }
        setText(a(this.f12880h, str, str2));
    }

    private String a(String str, String str2, String str3) {
        return str.replace(str2, str3);
    }
}
