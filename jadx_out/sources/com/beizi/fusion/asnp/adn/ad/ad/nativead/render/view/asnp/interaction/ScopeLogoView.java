package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeTextView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.je;
import com.beizi.fusion.pf;

/* loaded from: classes2.dex */
public class ScopeLogoView extends ScopeInteractionViewGroup {

    /* renamed from: f, reason: collision with root package name */
    private ImageView f12709f;

    public ScopeLogoView(@NonNull Context context) {
        super(context);
    }

    private void a(ViewModel viewModel) {
        if (viewModel != null) {
            ImageView imageView = new ImageView(getContext());
            this.f12709f = imageView;
            imageView.setId(1843);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(9);
            addView(this.f12709f, layoutParams);
            String title = viewModel.getTitle();
            if (!TextUtils.isEmpty(title)) {
                ScopeTextView scopeTextView = new ScopeTextView(getContext());
                scopeTextView.setTextConfig(viewModel);
                scopeTextView.setText(title);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
                layoutParams2.addRule(1, 1843);
                addView(scopeTextView, layoutParams2);
            }
            setPadding(3, 0, 3, 0);
        }
    }

    private void b(ViewModel viewModel) {
        String imageURL = viewModel.getImageURL();
        if (TextUtils.isEmpty(imageURL)) {
            this.f12709f.setImageResource(R.drawable.asnp_ad_logo);
        } else {
            pf.a(this.f12709f.getContext()).b(imageURL).b(false).a(R.drawable.asnp_ad_logo).a(this.f12709f);
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            a(this.f12927b.getViewModel());
            b(this.f12927b.getViewModel());
        }
        super.fillContent(aVar);
    }

    public ScopeLogoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScopeLogoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
