package com.fl.saas;

import android.content.Context;
import com.anythink.core.common.d.i;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.innterNative.NativeStyle;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.k0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1192k0 implements InterfaceC1189j0, NativeLoadListener {

    /* renamed from: b, reason: collision with root package name */
    private Context f30595b;

    /* renamed from: c, reason: collision with root package name */
    private NativeLoadListener f30596c;

    /* renamed from: d, reason: collision with root package name */
    private String f30597d;

    /* renamed from: e, reason: collision with root package name */
    private String f30598e;

    /* renamed from: f, reason: collision with root package name */
    private String f30599f;

    /* renamed from: g, reason: collision with root package name */
    private C1188j f30600g;

    /* renamed from: h, reason: collision with root package name */
    private AdParams f30601h;

    /* renamed from: a, reason: collision with root package name */
    private final String f30594a = CommConstant.getObjTag(i.o.f2697a, this);

    /* renamed from: i, reason: collision with root package name */
    private NativeStyle f30602i = NativeStyle.NONE;

    /* renamed from: j, reason: collision with root package name */
    private boolean f30603j = false;

    /* renamed from: k, reason: collision with root package name */
    private boolean f30604k = false;

    public AdParams a() {
        return this.f30601h;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public void clearCache() {
        this.f30603j = false;
    }

    public String d() {
        return this.f30599f;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public void destroy() {
        this.f30596c = null;
    }

    public String e() {
        return this.f30598e;
    }

    public boolean f() {
        return this.f30604k;
    }

    public abstract void g();

    @Override // com.fl.saas.InterfaceC1189j0
    public C1188j getAdSource() {
        return this.f30600g;
    }

    @Override // com.fl.saas.adx.base.interfaces.AdViewListener
    public void onAdFailed(final FLError fLError) {
        LogcatUtil.d(this.f30594a, "onAdFailed:" + fLError);
        a(new B() { // from class: com.fl.saas.w2
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeLoadListener) obj).onAdFailed(fLError);
            }
        });
    }

    @Override // com.fl.saas.adx.api.mixNative.NativeLoadListener
    public void onNativeAdLoaded(final NativeAd nativeAd) {
        LogcatUtil.d(this.f30594a, "onNativeAdLoaded");
        a(new B() { // from class: com.fl.saas.v2
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeLoadListener) obj).onNativeAdLoaded(nativeAd);
            }
        });
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public void setCache() {
        this.f30603j = true;
        this.f30596c = null;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public InterfaceC1189j0 setContext(Context context) {
        this.f30595b = context;
        return this;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public InterfaceC1189j0 setLinkId(String str) {
        this.f30599f = str;
        return this;
    }

    private void a(B b3) {
        C1207p0.b(this.f30596c).a(b3);
    }

    public NativeStyle b() {
        if (this.f30602i == NativeStyle.NONE) {
            this.f30602i = NativeStyle.create(this.f30600g.c());
        }
        return this.f30602i;
    }

    public Context c() {
        return this.f30595b;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public void a(Context context) {
        if (this.f30595b == null) {
            a("mContext is null");
            return;
        }
        try {
            g();
        } catch (Throwable th) {
            a(th.getMessage());
            LogcatUtil.debug(th);
        }
    }

    public void a(String str) {
        LogcatUtil.e(this.f30594a, str);
        onAdFailed(FLError.create(ErrorCodeConstant.NETWORK_ERROR, str));
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public InterfaceC1189j0 a(String str, String str2) {
        this.f30597d = str;
        this.f30598e = str2;
        return this;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public InterfaceC1189j0 a(AdParams adParams) {
        this.f30601h = adParams;
        return this;
    }

    public InterfaceC1189j0 a(C1188j c1188j) {
        this.f30600g = c1188j;
        this.f30597d = c1188j.f30489b;
        this.f30598e = c1188j.f30502f;
        this.f30602i = NativeStyle.create(c1188j.c());
        return this;
    }

    public AbstractC1192k0 a(NativeStyle nativeStyle) {
        this.f30602i = nativeStyle;
        return this;
    }

    public void a(boolean z2) {
        this.f30604k = z2;
    }

    @Override // com.fl.saas.InterfaceC1189j0
    public InterfaceC1189j0 a(NativeLoadListener nativeLoadListener) {
        this.f30596c = nativeLoadListener;
        return this;
    }
}
