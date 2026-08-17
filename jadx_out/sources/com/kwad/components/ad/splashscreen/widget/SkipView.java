package com.kwad.components.ad.splashscreen.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.kwad.components.ad.splashscreen.local.SplashSkipViewModel;
import com.kwad.sdk.R;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.wrapper.m;

/* loaded from: classes4.dex */
public class SkipView extends LinearLayout implements com.kwad.components.ad.splashscreen.widget.b {
    private a Lf;
    private Runnable Lr;
    private final b MV;
    private View MW;
    private TextView MX;
    private TextView MY;
    private int MZ;
    private boolean rp;
    private boolean wV;

    public interface a {
        void ay(int i2);

        void mA();

        void mB();
    }

    public static class b {
        private int Lm;
        private String Nb;
        private String Nc;
        private int Nd;
        private boolean Ne;
        private boolean Nf;

        private b() {
            this.Nb = "跳过";
            this.Nc = "";
            this.Nd = 5;
            this.Lm = 5;
            this.Ne = true;
            this.Nf = true;
        }

        public static /* synthetic */ int d(b bVar) {
            int i2 = bVar.Lm;
            bVar.Lm = i2 - 1;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean oj() {
            return this.Ne && this.Nf;
        }

        public final void aD(int i2) {
            this.Nd = i2;
            this.Lm = i2;
        }

        public final void ag(String str) {
            this.Lm = -1;
            this.Nc = str;
        }

        public final String oh() {
            int i2 = this.Lm;
            if (i2 < 0) {
                return this.Nc;
            }
            if (i2 == 0) {
                return this.Nc + 1;
            }
            return this.Nc + this.Lm;
        }

        public final boolean oi() {
            return this.Lm <= 0;
        }

        public /* synthetic */ b(byte b3) {
            this();
        }
    }

    public SkipView(Context context) {
        this(context, null);
    }

    private void D(AdInfo adInfo) {
        setTimerBtnVisible(com.kwad.sdk.core.response.helper.a.cL(adInfo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ax(int i2) {
        a aVar = this.Lf;
        if (aVar != null) {
            aVar.ay(i2);
        }
    }

    private void az() {
        a(this.MV);
        post(this.Lr);
    }

    private void gb() {
        this.rp = true;
    }

    private void gc() {
        this.rp = false;
    }

    private void init() {
        setOrientation(0);
        m.inflate(getContext(), R.layout.ksad_skip_view, this);
        this.MX = (TextView) findViewById(R.id.ksad_skip_view_skip);
        this.MY = (TextView) findViewById(R.id.ksad_skip_view_timer);
        this.MW = findViewById(R.id.ksad_skip_view_divider);
        setOnClickListener(new View.OnClickListener() { // from class: com.kwad.components.ad.splashscreen.widget.SkipView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (SkipView.this.Lf != null) {
                    SkipView.this.Lf.mA();
                }
            }
        });
        setSkipBtnVisible(true);
        setTimerBtnVisible(true);
    }

    private void og() {
        if (getVisibility() == 0) {
            return;
        }
        setVisibility(0);
        setAlpha(0.0f);
        animate().alpha(1.0f).setDuration(500L).start();
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public final void B(AdInfo adInfo) {
        if (com.kwad.sdk.core.response.helper.a.bi(adInfo)) {
            return;
        }
        gb();
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public final void C(AdInfo adInfo) {
        if (this.wV) {
            og();
        }
        if (com.kwad.sdk.core.response.helper.a.bi(adInfo)) {
            return;
        }
        gc();
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public final int aA(int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = com.kwad.sdk.c.a.a.a(getContext(), 35.0f);
        int width = getWidth();
        setLayoutParams(layoutParams);
        return width;
    }

    public final void ag(String str) {
        if (str == null) {
            return;
        }
        this.MV.ag(str);
        a(this.MV);
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public final void cw() {
        if (getHandler() != null) {
            getHandler().removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        this.MZ = layoutParams.width;
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public void setOnViewListener(a aVar) {
        this.Lf = aVar;
    }

    public void setSkipBtnVisible(boolean z2) {
        this.MV.Ne = z2;
        a(this.MV);
    }

    public void setSkipText(String str) {
        this.MV.Nb = str;
        a(this.MV);
    }

    public void setTimerBtnVisible(boolean z2) {
        this.MV.Nf = z2;
        a(this.MV);
    }

    public void setTimerPrefixText(String str) {
        this.MV.Nc = str;
        a(this.MV);
    }

    public void setTimerSecond(int i2) {
        this.MV.aD(i2);
        a(this.MV);
    }

    public SkipView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SkipView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(m.wrapContextIfNeed(context), attributeSet, i2);
        this.MV = new b((byte) 0);
        this.MZ = -1;
        this.rp = false;
        this.wV = true;
        this.Lr = new Runnable() { // from class: com.kwad.components.ad.splashscreen.widget.SkipView.1
            @Override // java.lang.Runnable
            public final void run() {
                if (SkipView.this.rp) {
                    SkipView.this.postDelayed(this, 300L);
                    return;
                }
                SkipView skipView = SkipView.this;
                skipView.a(skipView.MV);
                SkipView skipView2 = SkipView.this;
                skipView2.ax(skipView2.MV.Nd - SkipView.this.MV.Lm);
                if (!SkipView.this.MV.oi()) {
                    SkipView.this.postDelayed(this, 1000L);
                    b.d(SkipView.this.MV);
                } else if (SkipView.this.Lf != null) {
                    SkipView.this.Lf.mB();
                }
            }
        };
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        if (bVar == null) {
            return;
        }
        if (this.MX != null) {
            if (bVar.Nb != null) {
                this.MX.setText(bVar.Nb);
            }
            this.MX.setVisibility(this.MV.Ne ? 0 : 8);
        }
        String strOh = bVar.oh();
        TextView textView = this.MY;
        if (textView != null) {
            if (strOh != null) {
                textView.setText(strOh);
            }
            this.MY.setVisibility(this.MV.Nf ? 0 : 8);
        }
        if (this.MW != null) {
            boolean zOj = this.MV.oj();
            this.MW.setVisibility(zOj ? 0 : 8);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                if (!zOj) {
                    layoutParams.width = -2;
                    invalidate();
                    return;
                }
                int i2 = this.MZ;
                if (i2 > 0) {
                    layoutParams.width = i2;
                    invalidate();
                }
            }
        }
    }

    @Override // com.kwad.components.ad.splashscreen.widget.b
    public final void a(SplashSkipViewModel splashSkipViewModel, AdInfo adInfo) {
        this.wV = com.kwad.sdk.core.response.helper.a.cK(adInfo);
        setTimerPrefixText(e.a(com.kwad.components.ad.splashscreen.b.a.Hk));
        setTimerSecond(splashSkipViewModel.skipSecond);
        if (!com.kwad.sdk.core.response.helper.a.bi(adInfo)) {
            az();
        }
        setSkipText(com.kwad.sdk.core.response.helper.a.cz(adInfo));
        setVisibility(8);
        D(adInfo);
    }
}
