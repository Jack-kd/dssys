package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.v1.z2;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class HalfScreenATView extends BaseScreenATView {
    public static final String TAG = "HalfScreenATView";

    /* renamed from: C0, reason: collision with root package name */
    public View f43451C0;

    /* renamed from: D0, reason: collision with root package name */
    public int f43452D0;

    public HalfScreenATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void C() {
        BaseEndCardView baseEndCardView;
        PanelView panelView = this.f43290h0;
        if (panelView != null) {
            panelView.notifyHalfScreenEndCardShow();
        }
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        if (this.f43289g0 == null || (baseEndCardView = this.f43291i0) == null || baseEndCardView.getParent() != null || basePlayerView == null) {
            return;
        }
        this.f43289g0.addView(this.f43291i0, 1, basePlayerView.getLayoutParams());
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void F() {
        t tVar = this.f43302t0;
        if (tVar != null) {
            tVar.f43027c = this.f43275P;
            tVar.f43036l = new z2(this);
            tVar.a(getContext(), this.f43451C0);
        }
    }

    public int N() {
        int i2 = this.f43452D0;
        if (i2 != 1) {
            return i2 != 2 ? 104 : 103;
        }
        return 107;
    }

    public void O() {
        int i2;
        int i3;
        int i4;
        int iA;
        int i5;
        int i6;
        int iA2;
        View viewFindViewById;
        View viewFindViewById2;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43290h0.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43289g0.getLayoutParams();
        int i7 = layoutParams2.leftMargin;
        int i8 = layoutParams2.rightMargin;
        int i9 = layoutParams2.topMargin;
        int i10 = layoutParams2.bottomMargin;
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        RelativeLayout.LayoutParams layoutParams3 = basePlayerView != null ? (RelativeLayout.LayoutParams) basePlayerView.getLayoutParams() : null;
        int iE = k.e(getContext());
        if (iE <= 0) {
            iE = k.a(getContext(), 32.0f);
        }
        int i11 = this.f43452D0;
        if (i11 == 1) {
            if (this.f43265F == 2) {
                i3 = (this.f43267H - i9) - i10;
                i4 = (int) (i3 * 1.75f);
                iA = k.a(getContext(), 120.0f);
                if (i9 < iE) {
                    layoutParams2.topMargin = (int) (iE * 1.1f);
                }
                layoutParams2.width = i4;
                this.f43289g0.setLayoutParams(layoutParams2);
            } else if (this.f43217c.j() || this.f43307y0 <= this.f43308z0) {
                i4 = (this.f43266G - i7) - i8;
                i3 = (int) (i4 / 0.5714286f);
                int i12 = this.f43267H;
                int i13 = iE * 4;
                if (i12 - i3 < i13) {
                    i3 = i12 - i13;
                }
                iA = k.a(getContext(), 240.0f);
            } else {
                i4 = (this.f43266G - i7) - i8;
                i3 = (int) (i4 / 1.032258f);
                iA = k.a(getContext(), 120.0f);
            }
            this.f43268I = i4;
            this.f43269J = i3;
        } else {
            if (i11 != 2) {
                View viewFindViewById3 = this.f43290h0.findViewById(k.a(getContext(), "myoffer_panel_view_blank", "id"));
                i2 = viewFindViewById3 != null ? ((RelativeLayout.LayoutParams) viewFindViewById3.getLayoutParams()).topMargin : 0;
                if (this.f43265F == 1) {
                    i4 = (this.f43266G - i7) - i8;
                    float f2 = i4;
                    i5 = (int) (f2 / 1.032258f);
                    this.f43268I = i4;
                    int i14 = (int) (f2 / 2.0f);
                    this.f43269J = i14;
                    iA = (i5 - i14) + i2;
                } else {
                    if (i9 < iE) {
                        i9 = (int) (iE * 1.1f);
                        layoutParams2.topMargin = i9;
                    }
                    i3 = (this.f43267H - i9) - i10;
                    i4 = (int) (i3 * 1.032258f);
                    this.f43268I = i4;
                    int i15 = (int) (i4 / 2.0f);
                    this.f43269J = i15;
                    iA = (i3 - i15) + i2;
                    layoutParams2.width = i4;
                    this.f43289g0.setLayoutParams(layoutParams2);
                }
            } else {
                if (this.f43265F != 1) {
                    if (i9 < iE) {
                        i9 = (int) (iE * 1.1f);
                        layoutParams2.topMargin = i9;
                    }
                    i3 = (this.f43267H - i9) - i10;
                    i4 = (int) (i3 * 1.6f);
                    if (this.f43302t0 != null && (iA2 = this.f43266G - (k.a(getContext(), 116.0f) * 2)) < i4) {
                        i3 = (int) (iA2 / 1.6f);
                        i4 = iA2;
                    }
                    this.f43269J = i3;
                    int i16 = (int) (i3 * 0.56f);
                    this.f43268I = i16;
                    i6 = i4 - i16;
                    layoutParams2.width = i4;
                    this.f43289g0.setLayoutParams(layoutParams2);
                    iA = i3;
                    layoutParams2.width = i4;
                    layoutParams2.height = i3;
                    this.f43289g0.setLayoutParams(layoutParams2);
                    if (layoutParams3 != null && basePlayerView != null) {
                        layoutParams3.width = this.f43268I;
                        layoutParams3.height = this.f43269J;
                        basePlayerView.setLayoutParams(layoutParams3);
                    }
                    layoutParams.width = i6;
                    layoutParams.height = iA;
                    this.f43290h0.setLayoutParams(layoutParams);
                    if (this.f43452D0 == 2 || this.f43265F != 2) {
                        viewFindViewById = findViewById(k.a(getContext(), "myoffer_guide2click_container", "id"));
                        if (viewFindViewById != null && layoutParams3 != null) {
                            viewFindViewById.setLayoutParams(layoutParams3);
                        }
                        viewFindViewById2 = findViewById(k.a(getContext(), "myoffer_guide2click_mask", "id"));
                        if (viewFindViewById2 != null || layoutParams3 == null) {
                        }
                        viewFindViewById2.setLayoutParams(layoutParams3);
                        return;
                    }
                    return;
                }
                View viewFindViewById4 = this.f43290h0.findViewById(k.a(getContext(), "myoffer_panel_view_blank", "id"));
                i2 = viewFindViewById4 != null ? ((RelativeLayout.LayoutParams) viewFindViewById4.getLayoutParams()).topMargin : 0;
                i4 = (this.f43266G - i7) - i8;
                float f3 = i4;
                i5 = (int) (f3 / 0.5714286f);
                int i17 = this.f43267H;
                int i18 = iE * 4;
                if (i17 - i5 < i18) {
                    i5 = i17 - i18;
                }
                iA = (int) (f3 / 1.8181819f);
                this.f43268I = i4;
                this.f43269J = (i5 - iA) + i2;
            }
            i3 = i5;
        }
        i6 = i4;
        layoutParams2.width = i4;
        layoutParams2.height = i3;
        this.f43289g0.setLayoutParams(layoutParams2);
        if (layoutParams3 != null) {
            layoutParams3.width = this.f43268I;
            layoutParams3.height = this.f43269J;
            basePlayerView.setLayoutParams(layoutParams3);
        }
        layoutParams.width = i6;
        layoutParams.height = iA;
        this.f43290h0.setLayoutParams(layoutParams);
        if (this.f43452D0 == 2) {
        }
        viewFindViewById = findViewById(k.a(getContext(), "myoffer_guide2click_container", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setLayoutParams(layoutParams3);
        }
        viewFindViewById2 = findViewById(k.a(getContext(), "myoffer_guide2click_mask", "id"));
        if (viewFindViewById2 != null) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void b() {
        super.b();
        if (!z.a(this.f43217c) || this.f43217c.j()) {
            this.f43452D0 = 1;
        } else if (this.f43217c.j() || this.f43307y0 <= this.f43308z0) {
            this.f43452D0 = 2;
        } else {
            this.f43452D0 = 3;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void e() {
        int i2 = this.f43452D0;
        if (i2 == 1) {
            this.f43451C0 = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_half_screen_empty_info", "layout"), this, isAttachRoot());
        } else if (i2 != 2) {
            this.f43451C0 = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_half_screen_horizontal", "layout"), this, isAttachRoot());
        } else {
            this.f43451C0 = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_half_screen_vertical", "layout"), this, isAttachRoot());
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void getMaterialRealSize() {
        int i2;
        int i3;
        super.getMaterialRealSize();
        c cVar = this.f43217c;
        if (cVar.f41823n != 1 || (i2 = cVar.f41790K) <= 0 || (i3 = cVar.f41791L) <= 0) {
            return;
        }
        this.f43307y0 = i2;
        this.f43308z0 = i3;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public int getPanelViewTypeForShowEndCard() {
        return this.f43275P;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        RelativeLayout relativeLayout = this.f43289g0;
        if (relativeLayout == null || this.f43290h0 == null) {
            return super.getSpecialNoteViewLayoutParams();
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f43290h0.getLayoutParams();
        int i2 = (layoutParams.height * 2) / 3;
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        if (basePlayerView != null) {
            i2 = (((RelativeLayout.LayoutParams) basePlayerView.getLayoutParams()).height * 2) / 3;
        } else {
            BaseEndCardView baseEndCardView = this.f43291i0;
            if (baseEndCardView != null) {
                i2 = (((RelativeLayout.LayoutParams) baseEndCardView.getLayoutParams()).height * 2) / 3;
            }
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, i2, (this.f43452D0 == 2 && this.f43265F == 2) ? layoutParams2.width : 0, 0);
        return layoutParams3;
    }

    public boolean isAttachRoot() {
        return true;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void p() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void t() {
        this.f43275P = N();
        if (getPanelView() != null) {
            getPanelView().setLayoutType(this.f43275P);
            if (b(this.f43275P)) {
                J();
            } else {
                getPanelView().setVisibility(8);
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public void v() {
        super.v();
        try {
            O();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void y() {
        M();
        c(1);
    }

    public HalfScreenATView(Context context, a aVar, c cVar, String str, int i2, int i3) {
        super(context, aVar, cVar, str, i2, i3);
        setId(k.a(getContext(), "myoffer_half_screen_view_id", "id"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public boolean b(int i2) {
        if (this.f43217c.j()) {
            return false;
        }
        return (i2 == 107 && this.f43216b.f41644r.f41927e == 0) ? false : true;
    }
}
