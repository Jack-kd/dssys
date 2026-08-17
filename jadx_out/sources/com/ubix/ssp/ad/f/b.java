package com.ubix.ssp.ad.f;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.g.d;
import com.ubix.ssp.ad.g.g;
import com.ubix.ssp.ad.i.c;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class b implements g {

    /* renamed from: a, reason: collision with root package name */
    private d f47979a;

    /* renamed from: b, reason: collision with root package name */
    private c f47980b;

    /* renamed from: c, reason: collision with root package name */
    private AdSize f47981c;

    /* renamed from: d, reason: collision with root package name */
    private SoftReference<Context> f47982d;

    /* renamed from: e, reason: collision with root package name */
    private com.ubix.ssp.ad.f.a f47983e;

    /* renamed from: f, reason: collision with root package name */
    private NativeAd f47984f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f47985g;

    public class a implements e.b {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(e eVar, String str, String str2, boolean z2) throws Throwable {
            b.this.b(str);
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
            b.this.a(adError);
        }
    }

    /* renamed from: com.ubix.ssp.ad.f.b$b, reason: collision with other inner class name */
    public class C0839b implements UBiXNativeInteractionListener {
        public C0839b() {
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClicked(View view) {
            if (b.this.f47979a != null) {
                b.this.f47979a.onAdClicked(view);
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdClosed() {
            if (b.this.f47979a != null) {
                b.this.f47979a.onAdClosed();
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposeFailed(AdError adError) {
            if (b.this.f47979a != null) {
                b.this.f47979a.onAdExposeFailed(adError);
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdExposed() {
            if (b.this.f47979a != null) {
                b.this.f47979a.onAdExposed();
            }
        }

        @Override // com.ubix.ssp.open.nativee.UBiXNativeInteractionListener
        public void onAdStatusChanged() {
        }
    }

    public b(Context context, String str) {
        this(context, str, new AdSize(-1, -2));
    }

    public String b() {
        c cVar = this.f47980b;
        if (cVar != null) {
            return cVar.B();
        }
        return null;
    }

    public View c() {
        return this.f47983e;
    }

    public ParamsReview d() {
        try {
            c cVar = this.f47980b;
            if (cVar == null) {
                return null;
            }
            return this.f47980b.o(cVar.n(0));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public long e() {
        NativeAd nativeAd = this.f47984f;
        if (nativeAd != null) {
            return nativeAd.getPrice();
        }
        return 0L;
    }

    public boolean f() {
        c cVar = this.f47980b;
        return cVar != null && this.f47985g && cVar.s(cVar.n(0));
    }

    public void g() {
        this.f47980b.C();
    }

    @Override // com.ubix.ssp.ad.g.g
    public void onAdLoadFailed(AdError adError) {
        d dVar = this.f47979a;
        if (dVar != null) {
            dVar.onAdLoadFailed(adError);
        }
    }

    public b(Context context, String str, AdSize adSize) {
        this.f47985g = false;
        this.f47982d = new SoftReference<>(context);
        this.f47981c = adSize == null ? new AdSize(-1, -2) : adSize;
        c cVar = new c(context, str, this);
        this.f47980b = cVar;
        cVar.q(3);
    }

    private ArrayList<View> a(ViewGroup viewGroup) {
        ArrayList<View> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt != null) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) throws Throwable {
        this.f47980b.w();
        this.f47980b.D();
        com.ubix.ssp.ad.d.a aVarN = this.f47980b.n(0);
        Bundle bundle = new Bundle();
        bundle.putStringArray("IMAGE_URL", new String[]{str});
        bundle.putInt("AD_WIDTH", this.f47981c.getWidth());
        bundle.putInt("AD_HEIGHT", this.f47981c.getHeight());
        bundle.putInt("TEMPLATE_ID", aVarN.f45774p);
        bundle.putString("AD_SOURCE", aVarN.f45759a.f47442d.f47490t);
        bundle.putBoolean("IS_UNNAMED", aVarN.f45780v);
        com.ubix.ssp.ad.f.a aVar = (com.ubix.ssp.ad.f.a) com.ubix.ssp.ad.b.a(this.f47982d.get(), bundle, 3, true);
        this.f47983e = aVar;
        aVar.b(bundle);
        c cVar = this.f47980b;
        com.ubix.ssp.ad.f.a aVar2 = this.f47983e;
        cVar.b(aVarN, aVar2, a(aVar2), this.f47983e.findViewById(600004), new C0839b());
        this.f47985g = true;
        d dVar = this.f47979a;
        if (dVar != null) {
            dVar.onAdLoadSucceed();
        }
    }

    public void a() {
    }

    public void a(long j2) {
        com.ubix.ssp.ad.d.a aVarN = this.f47980b.n(0);
        if (aVarN != null) {
            this.f47980b.a(aVarN, j2);
        }
    }

    public void a(d dVar) {
        this.f47979a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdError adError) {
        this.f47985g = false;
        this.f47980b.c(adError);
        this.f47980b.e(adError);
    }

    public void a(String str) {
        c cVar = this.f47980b;
        if (cVar != null) {
            cVar.h(str);
        }
    }

    @Override // com.ubix.ssp.ad.g.g
    public void a(ArrayList<NativeAd> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        NativeAd nativeAd = arrayList.get(0);
        this.f47984f = nativeAd;
        String imageUrl = nativeAd.getImageUrl();
        this.f47980b.v();
        e.b().a(imageUrl, new a());
    }

    public void a(HashMap<String, String> map) {
        com.ubix.ssp.ad.d.a aVarN = this.f47980b.n(0);
        if (aVarN != null) {
            this.f47980b.c(aVarN, map);
        }
    }
}
