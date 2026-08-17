package com.kwad.components.ad.feed.widget;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.video.a;
import com.kwad.sdk.R;
import com.kwad.sdk.utils.al;

/* loaded from: classes4.dex */
public final class g extends c {
    private final a.InterfaceC0559a iq;

    public g(@NonNull Context context) {
        super(context);
        this.iq = new a.InterfaceC0559a() { // from class: com.kwad.components.ad.feed.widget.g.1
            @Override // com.kwad.components.core.video.a.InterfaceC0559a
            public final void a(int i2, al.a aVar) {
                int i3;
                int i4 = 3;
                boolean z2 = false;
                if (i2 == 1) {
                    i3 = 15;
                } else if (i2 == 2) {
                    i3 = 16;
                } else if (i2 != 3) {
                    i3 = 35;
                } else {
                    i3 = 39;
                    i4 = 1;
                    z2 = true;
                }
                g.this.cp();
                com.kwad.components.core.e.d.a.a(new a.C0529a(g.this.getContext()).aJ(g.this.mAdTemplate).b(g.this.mApkDownloadHelper).aN(i4).as(z2).au(true).aL(5).aM(i3).d(aVar).aw(true).a(new a.b() { // from class: com.kwad.components.ad.feed.widget.g.1.1
                    @Override // com.kwad.components.core.e.d.a.b
                    public final void onAdClicked() {
                        g.this.zN();
                    }
                }));
            }
        };
        setmIsShowComplianceView(false);
        setRadiusDp(4);
    }

    @Override // com.kwad.components.ad.feed.widget.c, com.kwad.components.core.widget.b
    public final void bC() {
        super.bC();
        View viewFindViewById = findViewById(R.id.ksad_feed_biserial_video);
        if (viewFindViewById != null) {
            viewFindViewById.setClipToOutline(true);
        }
    }

    @Override // com.kwad.components.ad.feed.widget.c
    public final void cx() {
        this.ij.setRatio(1.7857143f);
    }

    @Override // com.kwad.components.ad.feed.widget.c
    public final int getDefaultClickArea() {
        return 3;
    }

    @Override // com.kwad.components.core.widget.b
    public final int getLayoutId() {
        return R.layout.ksad_feed_biserial_video;
    }

    @Override // com.kwad.components.ad.feed.widget.c
    public final a.InterfaceC0559a getVideoAdClickListener() {
        return this.iq;
    }

    @Override // com.kwad.components.core.widget.b
    public final void setMargin(int i2) {
        if (com.kwad.sdk.core.config.e.KD()) {
            return;
        }
        setBackgroundColor(-1);
    }
}
