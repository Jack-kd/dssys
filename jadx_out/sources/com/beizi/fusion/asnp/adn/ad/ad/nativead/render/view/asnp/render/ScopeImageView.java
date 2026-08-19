package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeRoundImageView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.speed.SpeedModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.je;
import com.beizi.fusion.ke;
import com.beizi.fusion.pf;
import com.beizi.fusion.qc;
import com.beizi.fusion.qo;

/* loaded from: classes2.dex */
public class ScopeImageView extends ScopeRoundImageView implements je, ke {

    /* renamed from: g, reason: collision with root package name */
    private String f12862g;

    /* renamed from: h, reason: collision with root package name */
    protected RenderModel f12863h;

    /* renamed from: i, reason: collision with root package name */
    protected AssetModel f12864i;

    /* renamed from: j, reason: collision with root package name */
    protected SpeedModel f12865j;

    /* renamed from: k, reason: collision with root package name */
    private ScopeExpressContainer f12866k;

    public class a implements qc {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ je.a f12867a;

        public a(je.a aVar) {
            this.f12867a = aVar;
        }

        @Override // com.beizi.fusion.qc
        public void a() {
            ScopeImageView.this.b(this.f12867a);
        }

        @Override // com.beizi.fusion.qc
        public void b() {
            if (ScopeImageView.this.e()) {
                return;
            }
            ScopeImageView.this.a(this.f12867a);
        }
    }

    public ScopeImageView(@NonNull Context context) {
        super(context);
    }

    private boolean c() {
        SpeedModel speedModel = this.f12865j;
        return speedModel != null && speedModel.isAnimation();
    }

    private boolean d() {
        SpeedModel speedModel = this.f12865j;
        return speedModel != null && speedModel.isPlaceHolder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        SpeedModel speedModel = this.f12865j;
        return speedModel != null && speedModel.isImageSpeed();
    }

    @Override // com.beizi.fusion.je
    public void bindAssetModel(AssetModel assetModel) {
        this.f12864i = assetModel;
    }

    @Override // com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        this.f12863h = renderModel;
        ViewModel viewModel = renderModel.getViewModel();
        if (viewModel != null) {
            setBorderColor(viewModel.getBorderColor());
            setRectRadius(qo.h(viewModel.getBorderRadius()));
            setBorderWidth(qo.i(viewModel.getBorderSize()));
        }
    }

    @Override // com.beizi.fusion.ke
    public void bindRenderSpeedPriority(SpeedModel speedModel) {
        this.f12865j = speedModel;
    }

    public void fillContent(je.a aVar) {
        String imageURL;
        String placeHolder;
        ViewModel viewModel = this.f12863h.getViewModel();
        if (viewModel == null) {
            b(aVar);
            return;
        }
        AssetModel assetModel = this.f12864i;
        if (assetModel == null || assetModel.getImage() == null) {
            imageURL = viewModel.getImageURL();
            placeHolder = "";
        } else {
            imageURL = this.f12864i.getImage().getUrl();
            placeHolder = this.f12864i.getImage().getPlaceHolder();
        }
        if (TextUtils.isEmpty(imageURL)) {
            if (TextUtils.isEmpty(viewModel.getAssetsId())) {
                a(aVar);
                return;
            } else {
                b(aVar);
                return;
            }
        }
        pf.a(getContext()).b(imageURL).a(viewModel.useGaussianBlur() && b()).a(d() ? placeHolder : "").c(c()).a(R.drawable.asnp_ad_guarantee).b(true).a(new a(aVar)).a(this);
        if (e()) {
            a(aVar);
        }
    }

    @Override // com.beizi.fusion.je
    public ScopeExpressContainer getExpressRoot() {
        return this.f12866k;
    }

    @Override // com.beizi.fusion.je
    public int getLayer() {
        return this.f12863h.getLayer();
    }

    @Override // com.beizi.fusion.je
    public String getScopeViewID() {
        return this.f12862g;
    }

    @Override // com.beizi.fusion.je
    public void onViewDestroy() {
    }

    public void onViewPause(boolean z2) {
    }

    public void onViewResume(boolean z2) {
    }

    @Override // com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        this.f12866k = scopeExpressContainer;
    }

    @Override // com.beizi.fusion.je
    public void setScopeViewID(String str) {
        this.f12862g = str;
        setId(qo.i(str));
    }

    public ScopeImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private boolean b() {
        ViewGroup.LayoutParams layoutParams;
        AssetModel assetModel = this.f12864i;
        if (assetModel == null || assetModel.getImage() == null) {
            return false;
        }
        int imageWidth = this.f12864i.getImage().getImageWidth();
        int imageHeight = this.f12864i.getImage().getImageHeight();
        if (imageWidth <= 0 || imageHeight <= 0 || (layoutParams = getLayoutParams()) == null) {
            return false;
        }
        int i2 = layoutParams.width;
        int i3 = layoutParams.height;
        if (i2 <= 0 || i3 <= 0) {
            return false;
        }
        float fAbs = Math.abs((((float) (i2 * 1.0d)) / i3) - (((float) (imageWidth * 1.0d)) / imageHeight));
        if (fAbs > 0.15f) {
            return true;
        }
        if (fAbs > 0.1f) {
            setScaleType(ImageView.ScaleType.CENTER_CROP);
            return false;
        }
        setScaleType(ImageView.ScaleType.FIT_XY);
        return false;
    }

    public ScopeImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(je.a aVar) {
        if (aVar != null) {
            aVar.b(this.f12863h.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(je.a aVar) {
        if (aVar != null) {
            aVar.a(this.f12863h.getId());
        }
    }
}
