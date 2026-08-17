package com.kwad.components.ad.reward.n;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.kwad.components.ad.widget.KsAppTagsView;
import com.kwad.components.core.widget.KsConvertButton;
import com.kwad.components.core.widget.KsLogoView;
import com.kwad.sdk.R;

/* loaded from: classes4.dex */
public class h extends s implements View.OnClickListener {
    protected ImageView CW;

    @Nullable
    protected KsAppTagsView Da;
    protected KsConvertButton Dr;
    protected TextView Ds;

    @Nullable
    protected TextView Dt;

    @Nullable
    protected TextView Du;
    protected a Dv;

    @LayoutRes
    protected int Dw = R.layout.ksad_reward_apk_info_card_tag_item;
    protected boolean Dx = true;

    @Nullable
    protected KsLogoView mLogoView;

    public interface a {
        void jA();

        void jB();

        void jw();

        void jx();

        void jy();

        void jz();
    }

    private void as(int i2) {
        KsConvertButton ksConvertButton = this.Dr;
        if (ksConvertButton == null) {
            return;
        }
        if (i2 == 1) {
            ksConvertButton.getCornerConf().setAllCorner(true);
        } else if (i2 == 2) {
            ksConvertButton.getCornerConf().cH(false).cK(false).cJ(true).cI(true);
        }
        this.Dr.postInvalidate();
    }

    private void i(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        this.mLogoView = (KsLogoView) viewGroup.findViewById(R.id.ksad_common_app_logo);
        this.CW = (ImageView) viewGroup.findViewById(R.id.ksad_common_app_icon);
        this.Ds = (TextView) viewGroup.findViewById(R.id.ksad_common_app_name);
        this.Da = (KsAppTagsView) viewGroup.findViewById(R.id.ksad_common_app_tags);
        this.Dt = (TextView) viewGroup.findViewById(R.id.ksad_common_app_desc);
        this.Du = (TextView) viewGroup.findViewById(R.id.ksad_common_app_desc2);
        this.Dr = (KsConvertButton) viewGroup.findViewById(R.id.ksad_common_app_action);
    }

    private static int lA() {
        return R.id.ksad_common_app_card_root;
    }

    public final void a(a aVar) {
        this.Dv = aVar;
    }

    public final void h(ViewGroup viewGroup) {
        super.a(viewGroup, jv(), lA());
        i(this.wT);
        ViewGroup viewGroup2 = this.wT;
        if (viewGroup2 != null) {
            viewGroup2.setOnClickListener(this);
            this.Dr.setOnClickListener(this);
            this.CW.setOnClickListener(this);
            this.Ds.setOnClickListener(this);
            TextView textView = this.Dt;
            if (textView != null) {
                textView.setOnClickListener(this);
            }
            TextView textView2 = this.Du;
            if (textView2 != null) {
                textView2.setOnClickListener(this);
            }
            KsAppTagsView ksAppTagsView = this.Da;
            if (ksAppTagsView != null) {
                ksAppTagsView.setOnClickListener(this);
            }
        }
    }

    public int jv() {
        return R.id.ksad_common_app_card_stub;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        if (view.equals(this.Dr)) {
            a aVar2 = this.Dv;
            if (aVar2 != null) {
                aVar2.jw();
                return;
            }
            return;
        }
        if (view.equals(this.CW)) {
            a aVar3 = this.Dv;
            if (aVar3 != null) {
                aVar3.jx();
                return;
            }
            return;
        }
        if (view.equals(this.Ds)) {
            a aVar4 = this.Dv;
            if (aVar4 != null) {
                aVar4.jy();
                return;
            }
            return;
        }
        if (view.equals(this.Dt) || view.equals(this.Du)) {
            a aVar5 = this.Dv;
            if (aVar5 != null) {
                aVar5.jz();
                return;
            }
            return;
        }
        if (view.equals(this.Da)) {
            a aVar6 = this.Dv;
            if (aVar6 != null) {
                aVar6.jA();
                return;
            }
            return;
        }
        if (!view.equals(this.wT) || (aVar = this.Dv) == null) {
            return;
        }
        aVar.jB();
    }

    public final void show() {
        ViewGroup viewGroup = this.wT;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
        }
    }

    @Override // com.kwad.components.ad.reward.n.d
    public final void a(r rVar) {
        super.a(rVar);
        a(com.kwad.components.ad.reward.model.a.a(rVar, this.Dx));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kwad.components.ad.reward.model.a r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L3
            return
        L3:
            int r0 = r6.iy()
            r5.as(r0)
            com.kwad.components.core.widget.KsLogoView r0 = r5.mLogoView
            if (r0 == 0) goto L15
            com.kwad.sdk.core.response.model.AdTemplate r1 = r6.iu()
            r0.bl(r1)
        L15:
            android.widget.TextView r0 = r5.Ds
            java.lang.String r1 = r6.getTitle()
            r0.setText(r1)
            android.widget.TextView r0 = r5.Dt
            if (r0 == 0) goto L29
            java.lang.String r1 = r6.hB()
            r0.setText(r1)
        L29:
            android.widget.TextView r0 = r5.Du
            r1 = 0
            r2 = 8
            if (r0 == 0) goto L59
            java.lang.String r3 = r6.hB()
            r0.setText(r3)
            java.lang.String r0 = r6.hB()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L44
            r0 = r2
            r3 = r0
            goto L4f
        L44:
            boolean r0 = r6.ix()
            if (r0 == 0) goto L4d
            r3 = r1
            r0 = r2
            goto L4f
        L4d:
            r0 = r1
            r3 = r2
        L4f:
            android.widget.TextView r4 = r5.Dt
            if (r4 == 0) goto L56
            r4.setVisibility(r0)
        L56:
            android.widget.TextView r0 = r5.Du
            goto L6a
        L59:
            android.widget.TextView r0 = r5.Dt
            if (r0 == 0) goto L6d
            java.lang.String r3 = r6.hB()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L69
            r3 = r2
            goto L6a
        L69:
            r3 = r1
        L6a:
            r0.setVisibility(r3)
        L6d:
            com.kwad.components.ad.widget.KsAppTagsView r0 = r5.Da
            if (r0 == 0) goto L86
            java.util.List r3 = r6.iw()
            int r4 = r5.Dw
            r0.a(r3, r4)
            com.kwad.components.ad.widget.KsAppTagsView r0 = r5.Da
            boolean r3 = r6.ix()
            if (r3 == 0) goto L83
            r1 = r2
        L83:
            r0.setVisibility(r1)
        L86:
            com.kwad.components.core.widget.KsConvertButton r0 = r5.Dr
            if (r0 == 0) goto L95
            com.kwad.components.core.e.d.d r1 = r6.iv()
            com.kwad.sdk.core.response.model.AdTemplate r2 = r6.iu()
            r0.a(r1, r2)
        L95:
            android.widget.ImageView r0 = r5.CW
            java.lang.String r1 = r6.hA()
            com.kwad.sdk.core.response.model.AdTemplate r6 = r6.iu()
            r2 = 12
            com.kwad.sdk.core.imageloader.KSImageLoader.loadAppIcon(r0, r1, r6, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.reward.n.h.a(com.kwad.components.ad.reward.model.a):void");
    }
}
