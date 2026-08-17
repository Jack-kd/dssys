package com.sigmob.sdk.videoAd;

import android.content.Context;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.config.SigmobDialogSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import com.sigmob.sdk.base.views.C1302n;
import java.io.Serializable;

/* renamed from: com.sigmob.sdk.videoAd.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1374a extends C1260i implements Serializable {
    private static final long serialVersionUID = 2;

    /* renamed from: r, reason: collision with root package name */
    private int f38748r;

    /* renamed from: t, reason: collision with root package name */
    private C1376c f38750t;

    /* renamed from: u, reason: collision with root package name */
    private int f38751u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f38752v;

    /* renamed from: m, reason: collision with root package name */
    protected float f38743m = 1.0f;

    /* renamed from: n, reason: collision with root package name */
    protected int f38744n = -1000;

    /* renamed from: o, reason: collision with root package name */
    protected int f38745o = 100;

    /* renamed from: p, reason: collision with root package name */
    protected boolean f38746p = false;

    /* renamed from: q, reason: collision with root package name */
    private int f38747q = -1;

    /* renamed from: s, reason: collision with root package name */
    private boolean f38749s = false;

    /* renamed from: l, reason: collision with root package name */
    protected boolean f38742l = false;

    private C1374a() {
    }

    public static C1374a d(BaseAdUnit baseAdUnit) {
        C1374a c1374a = new C1374a();
        c1374a.c(baseAdUnit.getAd_type() == 1);
        c1374a.d(baseAdUnit.getMaterial().video_reciprocal_millisecond.intValue());
        c1374a.b(baseAdUnit.getMaterial().creative_type.intValue() != EnumC1270n.CreativeTypeVideo_transparent_html.a());
        RvAdSetting rvAdSetting = baseAdUnit.getRvAdSetting();
        SigmobDialogSetting sigmobDialogSettingW = com.sigmob.sdk.base.o.a().w();
        c1374a.a(sigmobDialogSettingW != null ? new C1376c((String) Wire.get(sigmobDialogSettingW.title, ""), (String) Wire.get(sigmobDialogSettingW.body_text, ""), (String) Wire.get(sigmobDialogSettingW.cancel_button_text, ""), (String) Wire.get(sigmobDialogSettingW.close_button_text, "")) : new C1376c(com.sigmob.sdk.base.k.l(), com.sigmob.sdk.base.k.k(), com.sigmob.sdk.base.k.n(), com.sigmob.sdk.base.k.m()));
        if (rvAdSetting != null) {
            c1374a.a(rvAdSetting.enable_exit_on_video_close.booleanValue());
            c1374a.a(rvAdSetting.finished.floatValue());
            c1374a.c(rvAdSetting.end_time.intValue());
        }
        c1374a.b(baseAdUnit);
        return c1374a;
    }

    public void a(float f2) {
        this.f38743m = f2;
    }

    public int b(int i2) {
        int i3 = this.f38751u;
        return (i3 == 0 || i3 * 1000 > i2) ? i2 : i3 * 1000;
    }

    public void c(int i2) {
        this.f38751u = i2;
    }

    public int e(int i2) {
        return (int) (i2 * (this.f38745o / 100.0f));
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public String f() {
        return this.f35925h;
    }

    public int l() {
        return this.f38751u;
    }

    public boolean m() {
        return this.f38749s;
    }

    public float n() {
        return this.f38743m;
    }

    public int o() {
        return this.f38744n;
    }

    public boolean p() {
        return this.f38746p;
    }

    public C1376c q() {
        return this.f38750t;
    }

    public int r() {
        return 0;
    }

    public boolean s() {
        return this.f38742l;
    }

    public int t() {
        return this.f38747q;
    }

    public static C1379f e(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return null;
        }
        MaterialMeta material = baseAdUnit.getMaterial();
        C1302n.a aVar = material.click_type.intValue() == 2 ? C1302n.a.IMAGE : C1302n.a.JAVASCRIPT;
        return new C1379f(768, 1024, baseAdUnit.getInteractionType(), material.landing_page, material.deeplink_url, new C1302n(baseAdUnit.resourcePath(), baseAdUnit.getCreativeResourceType(), aVar, 720, 1024));
    }

    public void a(Context context, int i2) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public String b() {
        return this.f35926i;
    }

    public void c(Context context, int i2, int i3, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public String d() {
        return this.f35923f;
    }

    public void f(int i2) {
        this.f38747q = i2;
    }

    public void a(Context context, int i2, int i3, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void b(Context context, int i2) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void c(String str) {
        if (str == null) {
            return;
        }
        this.f35923f = str;
    }

    public void d(int i2) {
        if (i2 == 0) {
            return;
        }
        this.f38744n = i2;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public String e() {
        return this.f35924g;
    }

    private void c(boolean z2) {
        this.f38742l = z2;
    }

    public void a(C1376c c1376c) {
        this.f38750t = c1376c;
    }

    public void b(Context context, int i2, int i3, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void d(String str) {
        if (str == null) {
            return;
        }
        this.f35924g = str;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void e(String str) {
        if (str == null) {
            return;
        }
        this.f35925h = str;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void a(String str) {
        this.f35926i = str;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void b(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void a(boolean z2) {
        this.f38749s = z2;
    }

    public void b(boolean z2) {
        this.f38746p = z2;
    }

    public void a(boolean z2, int i2, int i3, BaseAdUnit baseAdUnit) {
    }
}
