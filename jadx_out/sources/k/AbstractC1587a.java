package k;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.interstitial.api.ATInterstitial;
import com.anythink.interstitial.api.ATInterstitialExListener;
import h.AbstractC1423a;
import h.AbstractC1424b;
import h.AbstractC1425c;

/* renamed from: k.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1587a implements ATInterstitialExListener {

    /* renamed from: a, reason: collision with root package name */
    public ATInterstitial f51258a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f51259b;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f51260c;

    /* renamed from: d, reason: collision with root package name */
    public Integer f51261d = 0;

    /* renamed from: e, reason: collision with root package name */
    public Integer f51262e = 2;

    public AbstractC1587a(ATInterstitial aTInterstitial, Activity activity) {
        this.f51258a = aTInterstitial;
        this.f51259b = activity;
        this.f51260c = activity.getSharedPreferences("gap", 0);
    }

    public final void a() {
        this.f51261d = Integer.valueOf(this.f51260c.getInt(AbstractC1425c.f50723b, 0));
        SharedPreferences.Editor editorEdit = this.f51260c.edit();
        Integer numValueOf = Integer.valueOf(this.f51261d.intValue() + 1);
        this.f51261d = numValueOf;
        editorEdit.putInt(AbstractC1425c.f50723b, numValueOf.intValue());
        editorEdit.commit();
    }

    public final void b(String str) {
        c();
    }

    public final void c() {
        a();
        if (System.currentTimeMillis() > this.f51260c.getLong(AbstractC1425c.f50725d, 0L)) {
            AbstractC1424b.a(AbstractC1425c.a() + AbstractC1423a.f50718a, this.f51260c);
        }
        this.f51262e = Integer.valueOf(this.f51260c.getInt(AbstractC1425c.f50724c, 0));
    }

    public abstract void d(ATAdInfo aTAdInfo);

    public abstract void e(ATAdInfo aTAdInfo);

    public abstract void f(ATAdInfo aTAdInfo);

    public abstract void g(AdError adError);

    public abstract void h();

    public abstract void i(ATAdInfo aTAdInfo);

    public abstract void j(ATAdInfo aTAdInfo);

    public Boolean k() {
        return this.f51262e.intValue() == 0 ? Boolean.FALSE : this.f51261d.intValue() % (this.f51262e.intValue() + 1) == 0 ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdClicked(ATAdInfo aTAdInfo) {
        d(aTAdInfo);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdClose(ATAdInfo aTAdInfo) {
        if (k().booleanValue()) {
            this.f51258a.load();
        }
        e(aTAdInfo);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdLoaded() {
        b(AbstractC1423a.f50719b);
        h();
        ATInterstitial aTInterstitial = this.f51258a;
        if (aTInterstitial == null || !aTInterstitial.isAdReady()) {
            return;
        }
        this.f51258a.show(this.f51259b);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdShow(ATAdInfo aTAdInfo) {
        j(aTAdInfo);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdVideoEnd(ATAdInfo aTAdInfo) {
        f(aTAdInfo);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdVideoError(AdError adError) {
        g(adError);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialListener
    public void onInterstitialAdVideoStart(ATAdInfo aTAdInfo) {
        i(aTAdInfo);
    }

    @Override // com.anythink.interstitial.api.ATInterstitialExListener
    public void onDeeplinkCallback(ATAdInfo aTAdInfo, boolean z2) {
    }

    @Override // com.anythink.interstitial.api.ATInterstitialExListener
    public void onDownloadConfirm(Context context, ATAdInfo aTAdInfo, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
    }
}
