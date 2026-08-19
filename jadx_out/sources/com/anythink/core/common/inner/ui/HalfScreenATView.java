package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class HalfScreenATView extends BaseScreenATView {
    public static final String TAG = "HalfScreenATView";

    /* renamed from: K, reason: collision with root package name */
    protected View f5001K;

    /* renamed from: L, reason: collision with root package name */
    protected final int f5002L;

    /* renamed from: M, reason: collision with root package name */
    protected final int f5003M;

    /* renamed from: N, reason: collision with root package name */
    protected final int f5004N;

    /* renamed from: O, reason: collision with root package name */
    protected int f5005O;

    public HalfScreenATView(Context context) {
        super(context);
        this.f5002L = 1;
        this.f5003M = 2;
        this.f5004N = 3;
    }

    private boolean A() {
        return !com.anythink.core.common.inner.a.a.a(this.f4825g);
    }

    private void B() {
        int i2;
        int i3;
        int i4;
        int iA;
        int i5;
        int i6;
        int i7;
        int iA2;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f4881w.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f4880v.getLayoutParams();
        int i8 = layoutParams2.leftMargin;
        int i9 = layoutParams2.rightMargin;
        int i10 = layoutParams2.topMargin;
        int i11 = layoutParams2.bottomMargin;
        View viewFindViewById = findViewById(p.a(getContext(), "myoffer_player_view_id", "id"));
        RelativeLayout.LayoutParams layoutParams3 = viewFindViewById != null ? (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams() : null;
        int iB = p.b(getContext());
        if (iB <= 0) {
            iB = p.a(getContext(), 32.0f);
        }
        int i12 = this.f5005O;
        if (i12 != 1) {
            if (i12 != 2) {
                View viewFindViewById2 = this.f4881w.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
                i2 = viewFindViewById2 != null ? ((RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams()).topMargin : 0;
                if (this.f4867b == 1) {
                    int i13 = this.f4868c;
                    int i14 = (i13 - i8) - i9;
                    int i15 = (int) (i14 / 1.032258f);
                    this.f4870l = i14;
                    int i16 = (int) (i14 / 2.0f);
                    this.f4871m = i16;
                    int i17 = (i15 - i16) + i2;
                    if (this.nativeTemplateRatio == 2) {
                        i4 = (i13 - i8) - i9;
                        i3 = ((int) (i4 / 0.6666667f)) - i2;
                        this.f4870l = i4;
                        this.f4871m = i4;
                        iA = (i3 - i4) + i2;
                    } else {
                        i4 = i14;
                        i5 = i4;
                        i3 = i15;
                        iA = i17;
                    }
                } else {
                    if (i10 < iB) {
                        i10 = (int) (iB * 1.1f);
                        layoutParams2.topMargin = i10;
                    }
                    i3 = (this.f4869d - i10) - i11;
                    i4 = (int) (i3 * 1.032258f);
                    this.f4870l = i4;
                    int i18 = (int) (i4 / 2.0f);
                    this.f4871m = i18;
                    iA = (i3 - i18) + i2;
                    layoutParams2.width = i4;
                    this.f4880v.setLayoutParams(layoutParams2);
                }
            } else if (this.f4867b == 1) {
                View viewFindViewById3 = this.f4881w.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
                i2 = viewFindViewById3 != null ? ((RelativeLayout.LayoutParams) viewFindViewById3.getLayoutParams()).topMargin : 0;
                i4 = (this.f4868c - i8) - i9;
                float f2 = i4;
                int i19 = (int) (f2 / 0.5714286f);
                if (this.nativeTemplateRatio == 2) {
                    i19 = ((int) (f2 / 0.6451613f)) - i2;
                }
                int i20 = this.f4869d;
                int i21 = iB * 4;
                if (i20 - i19 < i21) {
                    i19 = i20 - i21;
                }
                iA = (int) (f2 / 1.8181819f);
                this.f4870l = i4;
                this.f4871m = (i19 - iA) + i2;
                i3 = i19;
            } else {
                if (i10 < iB) {
                    i10 = (int) (iB * 1.1f);
                    layoutParams2.topMargin = i10;
                }
                i3 = (this.f4869d - i10) - i11;
                i4 = (int) (i3 * 1.6f);
                this.f4871m = i3;
                int i22 = (int) (i3 * 0.56f);
                this.f4870l = i22;
                i5 = i4 - i22;
                layoutParams2.width = i4;
                this.f4880v.setLayoutParams(layoutParams2);
                iA = i3;
            }
            layoutParams2.width = i4;
            layoutParams2.height = i3;
            this.f4880v.setLayoutParams(layoutParams2);
            if (layoutParams3 != null && viewFindViewById != null) {
                layoutParams3.width = this.f4870l;
                layoutParams3.height = this.f4871m;
                viewFindViewById.setLayoutParams(layoutParams3);
            }
            layoutParams.width = i5;
            layoutParams.height = iA;
            this.f4881w.setLayoutParams(layoutParams);
        }
        if (this.f4867b == 2) {
            i3 = (this.f4869d - i10) - i11;
            i4 = (int) (i3 * 1.75f);
            iA = p.a(getContext(), 120.0f);
            if (i10 < iB) {
                layoutParams2.topMargin = (int) (iB * 1.1f);
            }
            layoutParams2.width = i4;
            this.f4880v.setLayoutParams(layoutParams2);
        } else {
            if (z()) {
                i6 = (this.f4868c - i8) - i9;
                i7 = (int) (i6 / 0.5714286f);
                int i23 = this.f4869d;
                int i24 = iB * 4;
                if (i23 - i7 < i24) {
                    i7 = i23 - i24;
                }
                iA2 = p.a(getContext(), 240.0f);
            } else {
                i6 = (this.f4868c - i8) - i9;
                i7 = (int) (i6 / 1.032258f);
                iA2 = p.a(getContext(), 120.0f);
            }
            if (this.nativeTemplateRatio == 2) {
                i3 = (this.f4868c - i8) - i9;
                iA = p.a(getContext(), 120.0f);
                i4 = i3;
            } else {
                i4 = i6;
                i3 = i7;
                iA = iA2;
            }
        }
        this.f4870l = i4;
        this.f4871m = i3;
        i5 = i4;
        layoutParams2.width = i4;
        layoutParams2.height = i3;
        this.f4880v.setLayoutParams(layoutParams2);
        if (layoutParams3 != null) {
            layoutParams3.width = this.f4870l;
            layoutParams3.height = this.f4871m;
            viewFindViewById.setLayoutParams(layoutParams3);
        }
        layoutParams.width = i5;
        layoutParams.height = iA;
        this.f4881w.setLayoutParams(layoutParams);
    }

    private int y() {
        int i2 = this.f5005O;
        if (i2 != 1) {
            return i2 != 2 ? 4 : 3;
        }
        return 7;
    }

    private boolean z() {
        return this.f4857G <= this.f4858H;
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public void a() {
        int i2 = this.f5005O;
        if (i2 == 1) {
            this.f5001K = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_half_screen_empty_info", "layout"), this, isAttachRoot());
        } else if (i2 != 2) {
            this.f5001K = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_half_screen_horizontal", "layout"), this, isAttachRoot());
        } else {
            this.f5001K = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_half_screen_vertical", "layout"), this, isAttachRoot());
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void b() {
        int i2;
        int i3;
        int i4;
        int iA;
        int i5;
        int i6;
        int i7;
        int i8;
        int iA2;
        super.b();
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f4881w.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f4880v.getLayoutParams();
            int i9 = layoutParams2.leftMargin;
            int i10 = layoutParams2.rightMargin;
            int i11 = layoutParams2.topMargin;
            int i12 = layoutParams2.bottomMargin;
            View viewFindViewById = findViewById(p.a(getContext(), "myoffer_player_view_id", "id"));
            RelativeLayout.LayoutParams layoutParams3 = viewFindViewById != null ? (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams() : null;
            int iB = p.b(getContext());
            if (iB <= 0) {
                iB = p.a(getContext(), 32.0f);
            }
            int i13 = this.f5005O;
            if (i13 != 1) {
                if (i13 != 2) {
                    View viewFindViewById2 = this.f4881w.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
                    i2 = viewFindViewById2 != null ? ((RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams()).topMargin : 0;
                    if (this.f4867b == 1) {
                        int i14 = this.f4868c;
                        int i15 = (i14 - i9) - i10;
                        int i16 = (int) (i15 / 1.032258f);
                        this.f4870l = i15;
                        int i17 = (int) (i15 / 2.0f);
                        this.f4871m = i17;
                        i5 = (i16 - i17) + i2;
                        if (this.nativeTemplateRatio == 2) {
                            i4 = (i14 - i9) - i10;
                            i3 = ((int) (i4 / 0.6666667f)) - i2;
                            this.f4870l = i4;
                            this.f4871m = i4;
                            iA = (i3 - i4) + i2;
                        } else {
                            i4 = i15;
                            i6 = i4;
                            i3 = i16;
                        }
                    } else {
                        if (i11 < iB) {
                            i11 = (int) (iB * 1.1f);
                            layoutParams2.topMargin = i11;
                        }
                        i3 = (this.f4869d - i11) - i12;
                        i4 = (int) (i3 * 1.032258f);
                        this.f4870l = i4;
                        int i18 = (int) (i4 / 2.0f);
                        this.f4871m = i18;
                        iA = (i3 - i18) + i2;
                        layoutParams2.width = i4;
                        this.f4880v.setLayoutParams(layoutParams2);
                    }
                } else if (this.f4867b == 1) {
                    View viewFindViewById3 = this.f4881w.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
                    i2 = viewFindViewById3 != null ? ((RelativeLayout.LayoutParams) viewFindViewById3.getLayoutParams()).topMargin : 0;
                    i4 = (this.f4868c - i9) - i10;
                    float f2 = i4;
                    int i19 = (int) (f2 / 0.5714286f);
                    if (this.nativeTemplateRatio == 2) {
                        i19 = ((int) (f2 / 0.6451613f)) - i2;
                    }
                    int i20 = this.f4869d;
                    int i21 = iB * 4;
                    if (i20 - i19 < i21) {
                        i19 = i20 - i21;
                    }
                    int i22 = (int) (f2 / 1.8181819f);
                    this.f4870l = i4;
                    this.f4871m = (i19 - i22) + i2;
                    i5 = i22;
                    i3 = i19;
                    i6 = i4;
                } else {
                    if (i11 < iB) {
                        i11 = (int) (iB * 1.1f);
                        layoutParams2.topMargin = i11;
                    }
                    i3 = (this.f4869d - i11) - i12;
                    i4 = (int) (i3 * 1.6f);
                    this.f4871m = i3;
                    int i23 = (int) (i3 * 0.56f);
                    this.f4870l = i23;
                    i6 = i4 - i23;
                    layoutParams2.width = i4;
                    this.f4880v.setLayoutParams(layoutParams2);
                    i5 = i3;
                }
                layoutParams2.width = i4;
                layoutParams2.height = i3;
                this.f4880v.setLayoutParams(layoutParams2);
                if (layoutParams3 != null && viewFindViewById != null) {
                    layoutParams3.width = this.f4870l;
                    layoutParams3.height = this.f4871m;
                    viewFindViewById.setLayoutParams(layoutParams3);
                }
                layoutParams.width = i6;
                layoutParams.height = i5;
                this.f4881w.setLayoutParams(layoutParams);
            }
            if (this.f4867b == 2) {
                i3 = (this.f4869d - i11) - i12;
                i4 = (int) (i3 * 1.75f);
                iA = p.a(getContext(), 120.0f);
                if (i11 < iB) {
                    layoutParams2.topMargin = (int) (iB * 1.1f);
                }
                layoutParams2.width = i4;
                this.f4880v.setLayoutParams(layoutParams2);
            } else {
                if (z()) {
                    i7 = (this.f4868c - i9) - i10;
                    i8 = (int) (i7 / 0.5714286f);
                    int i24 = this.f4869d;
                    int i25 = iB * 4;
                    if (i24 - i8 < i25) {
                        i8 = i24 - i25;
                    }
                    iA2 = p.a(getContext(), 240.0f);
                } else {
                    i7 = (this.f4868c - i9) - i10;
                    i8 = (int) (i7 / 1.032258f);
                    iA2 = p.a(getContext(), 120.0f);
                }
                int i26 = i8;
                int i27 = i7;
                i3 = i26;
                if (this.nativeTemplateRatio == 2) {
                    i3 = (this.f4868c - i9) - i10;
                    iA = p.a(getContext(), 120.0f);
                    i4 = i3;
                } else {
                    i4 = i27;
                    iA = iA2;
                }
            }
            this.f4870l = i4;
            this.f4871m = i3;
            i5 = iA;
            i6 = i4;
            layoutParams2.width = i4;
            layoutParams2.height = i3;
            this.f4880v.setLayoutParams(layoutParams2);
            if (layoutParams3 != null) {
                layoutParams3.width = this.f4870l;
                layoutParams3.height = this.f4871m;
                viewFindViewById.setLayoutParams(layoutParams3);
            }
            layoutParams.width = i6;
            layoutParams.height = i5;
            this.f4881w.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView, com.anythink.core.common.inner.ui.BaseATView
    public final void d() {
        super.d();
        if (!com.anythink.core.common.inner.a.a.a(this.f4825g)) {
            this.f5005O = 1;
        } else if (z()) {
            this.f5005O = 2;
        } else {
            this.f5005O = 3;
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final int g() {
        return this.f4874p;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void h() {
        super.h();
        if (this.f4825g.u() != 1 || this.f4825g.G() <= 0 || this.f4825g.H() <= 0) {
            return;
        }
        this.f4857G = this.f4825g.G();
        this.f4858H = this.f4825g.H();
    }

    public boolean isAttachRoot() {
        return true;
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void j() {
        super.j();
        int i2 = this.f5005O;
        this.f4874p = i2 != 1 ? i2 != 2 ? 4 : 3 : 7;
        if (t() != null) {
            t().setLayoutType(this.f4874p);
            if (a(this.f4874p)) {
                o();
            } else {
                t().setVisibility(8);
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public final void l() {
        super.m();
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public void q() {
        BaseEndCardView baseEndCardView;
        View viewFindViewById = findViewById(p.a(getContext(), "myoffer_player_view_id", "id"));
        if (this.f4880v == null || (baseEndCardView = this.f4882x) == null || baseEndCardView.getParent() != null || viewFindViewById == null) {
            return;
        }
        this.f4880v.addView(this.f4882x, 1, viewFindViewById.getLayoutParams());
    }

    public HalfScreenATView(Context context, x xVar, w wVar, String str, int i2, int i3) {
        super(context, xVar, wVar, str, i2, i3);
        this.f5002L = 1;
        this.f5003M = 2;
        this.f5004N = 3;
        setId(p.a(getContext(), "myoffer_half_screen_view_id", "id"));
    }

    @Override // com.anythink.core.common.inner.ui.BaseScreenATView
    public boolean a(int i2) {
        if (this.f4825g.e()) {
            return false;
        }
        return (i2 == 7 && this.f4824f.f4500t.q() == 0) ? false : true;
    }
}
