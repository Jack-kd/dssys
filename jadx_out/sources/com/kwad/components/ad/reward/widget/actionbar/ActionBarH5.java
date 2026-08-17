package com.kwad.components.ad.reward.widget.actionbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.helper.SlideConvertHelper;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.widget.d;
import com.kwad.sdk.widget.h;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public class ActionBarH5 extends FrameLayout implements d {
    private TextView FS;
    private a FT;
    private View FU;
    private TextView gX;
    private AdTemplate mAdTemplate;

    public interface a {
        void P(boolean z2);
    }

    public ActionBarH5(Context context) {
        super(context);
        B(context);
    }

    private void B(Context context) {
        m.inflate(context, R.layout.ksad_video_actionbar_h5, this);
        this.FS = (TextView) findViewById(R.id.ksad_h5_ad_desc);
        this.gX = (TextView) findViewById(R.id.ksad_h5_open_btn);
        this.FU = findViewById(R.id.ksad_download_bar_cover);
    }

    private void d(View view, final boolean z2) {
        com.kwad.components.core.e.d.a.a(new a.C0529a(view.getContext()).aJ(this.mAdTemplate).aN(view == this.FU ? 1 : 2).a(new a.b() { // from class: com.kwad.components.ad.reward.widget.actionbar.ActionBarH5.1
            @Override // com.kwad.components.core.e.d.a.b
            public final void onAdClicked() {
                if (ActionBarH5.this.FT != null) {
                    ActionBarH5.this.FT.P(z2);
                }
            }
        }));
    }

    public final void a(@NonNull AdTemplate adTemplate, a aVar) {
        this.mAdTemplate = adTemplate;
        this.FT = aVar;
        AdInfo adInfoEO = e.eO(adTemplate);
        this.FS.setText(com.kwad.sdk.core.response.helper.a.aA(adInfoEO));
        this.gX.setText(com.kwad.sdk.core.response.helper.a.aK(adInfoEO));
        setClickable(true);
        this.FU.setClickable(true);
        new h(this.FU, this);
        new h(this, this);
    }

    public ActionBarH5(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        B(context);
    }

    public ActionBarH5(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        B(context);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        d(view, true);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (SlideConvertHelper.a(this.mAdTemplate, f2, f3, f4, f5)) {
            d(view, false);
        }
    }
}
