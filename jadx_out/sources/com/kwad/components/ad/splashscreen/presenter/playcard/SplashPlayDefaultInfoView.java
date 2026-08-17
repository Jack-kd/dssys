package com.kwad.components.ad.splashscreen.presenter.playcard;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.kwad.components.core.widget.KSCornerImageView;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.am;

/* loaded from: classes4.dex */
public class SplashPlayDefaultInfoView extends FrameLayout {
    private KSCornerImageView KA;
    private ImageView KB;
    private TextView KC;
    private TextView fM;
    private TextView kO;

    public SplashPlayDefaultInfoView(@NonNull Context context) {
        super(context);
        nK();
    }

    private void nK() {
        View.inflate(getContext(), R.layout.ksad_play_card_default_info, this);
        this.KA = (KSCornerImageView) findViewById(R.id.ksad_splash_default_icon);
        this.kO = (TextView) findViewById(R.id.ksad_splash_default_title);
        this.KB = (ImageView) findViewById(R.id.ksad_splash_default_img);
        this.fM = (TextView) findViewById(R.id.ksad_splash_default_desc);
        this.KC = (TextView) findViewById(R.id.ksad_splash_default_tips);
    }

    public final void a(AdTemplate adTemplate, float f2) {
        AdInfo adInfoEO = e.eO(adTemplate);
        a(com.kwad.sdk.core.response.helper.a.dv(adInfoEO) ? c.c(f2) : c.nI());
        this.KA.setRadius(com.kwad.sdk.c.a.a.a(getContext(), r5.nJ()));
        KSImageLoader.loadImage(this.KA, com.kwad.sdk.core.response.helper.a.cv(adInfoEO), adTemplate);
        this.kO.setText(com.kwad.sdk.core.response.helper.a.cs(adInfoEO));
        if (TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aA(adInfoEO))) {
            this.fM.setVisibility(8);
        } else {
            this.fM.setText(com.kwad.sdk.core.response.helper.a.aA(adInfoEO));
        }
    }

    public SplashPlayDefaultInfoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        nK();
    }

    public SplashPlayDefaultInfoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        nK();
    }

    @RequiresApi(api = 21)
    public SplashPlayDefaultInfoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        nK();
    }

    private void a(c cVar) {
        am.a(this, cVar.W(getContext()));
        am.a(this.KA, cVar.X(getContext()));
        am.a(this.kO, cVar.Y(getContext()));
        am.a(this.KB, cVar.Z(getContext()));
        am.a(this.fM, cVar.aa(getContext()));
        am.a(this.KC, cVar.ab(getContext()));
        this.kO.setTextSize(0, cVar.ac(getContext()));
        this.fM.setTextSize(0, cVar.ad(getContext()));
        this.KC.setTextSize(0, cVar.ae(getContext()));
    }
}
