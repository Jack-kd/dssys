package com.sigmob.sdk.base.common;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.utils.o;
import com.sigmob.sdk.videoplayer.C1383c;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class AdActivity extends BaseAdActivity implements InterfaceC1264k {

    /* renamed from: k, reason: collision with root package name */
    private static final String f35567k = "AdActivity";

    /* renamed from: l, reason: collision with root package name */
    private AbstractC1262j f35568l;

    /* renamed from: m, reason: collision with root package name */
    private String f35569m;

    /* renamed from: n, reason: collision with root package name */
    private BaseAdUnit f35570n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f35571o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f35572p;

    private AbstractC1262j a(BaseAdUnit baseAdUnit, Bundle bundle) throws IllegalStateException {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("ad_view_class_name");
        Bundle extras = intent.getExtras();
        if (stringExtra == null) {
            return null;
        }
        this.f35570n = baseAdUnit;
        switch (stringExtra) {
            case "LandNative":
                if (extras != null) {
                    break;
                }
                break;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        BaseAdUnit baseAdUnit;
        if (isFinishing() || isDestroyed() || (baseAdUnit = this.f35570n) == null || this.f35568l == null || baseAdUnit.getAd_type() != 6) {
            return;
        }
        if (this.f35571o || this.f35572p) {
            if (com.sigmob.sdk.base.utils.v.b(Boolean.valueOf(this.f35568l instanceof com.sigmob.sdk.newInterstitial.i))) {
                com.sigmob.sdk.base.network.h.a(this.f35570n, C1244a.f35693u);
                ad.a(C1244a.f35693u, (String) null, this.f35570n, new ad.a() { // from class: com.sigmob.sdk.base.common.D
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        AdActivity.a(obj);
                    }
                });
                this.f35570n.setSessionManager(null);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        abstractC1262j.a(i2, i3, intent);
    }

    @Override // android.app.Activity, com.sigmob.sdk.base.common.InterfaceC1264k
    public void onBackPressed() {
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null || !abstractC1262j.j()) {
            return;
        }
        super.onBackPressed();
        this.f35568l.i();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        abstractC1262j.a(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws NoSuchFieldException, SecurityException {
        C1383c.e((Activity) this);
        super.onCreate(bundle);
        this.f35569m = a(getIntent());
        String stringExtra = getIntent().getStringExtra("adUnit_requestId_key");
        try {
            if (ClientMetadata.getInstance() == null || TextUtils.isEmpty(stringExtra)) {
                SigmobLog.e("uuid is empty");
                HashMap<String, Object> map = new HashMap<>();
                map.put("error", "uuid is empty");
                a(map);
            } else {
                BaseAdUnit baseAdUnitC = C1258h.c(stringExtra);
                if (this.f35569m.equals("dislike_broadcastIdentifier") || baseAdUnitC != null) {
                    AbstractC1262j abstractC1262jA = a(baseAdUnitC, bundle);
                    this.f35568l = abstractC1262jA;
                    if (abstractC1262jA == null) {
                        return;
                    }
                    abstractC1262jA.e();
                    if (com.sigmob.sdk.base.utils.v.a(baseAdUnitC.allowClickToAutoClose())) {
                        this.f35568l.a(new AbstractC1262j.a() { // from class: com.sigmob.sdk.base.common.B
                            @Override // com.sigmob.sdk.base.common.AbstractC1262j.a
                            public final void onAdClicked() {
                                this.f35573a.d();
                            }
                        });
                    }
                    Integer numAllowCountdownEndsClose = baseAdUnitC.allowCountdownEndsClose();
                    if (com.sigmob.sdk.base.utils.v.a((Number) numAllowCountdownEndsClose)) {
                        AbstractC1262j abstractC1262j = this.f35568l;
                        if (abstractC1262j instanceof com.sigmob.sdk.newInterstitial.i) {
                            ((com.sigmob.sdk.newInterstitial.i) abstractC1262j).a(numAllowCountdownEndsClose.intValue(), new o.a() { // from class: com.sigmob.sdk.base.common.C
                                @Override // com.sigmob.sdk.base.utils.o.a
                                public final void onTimerFinished() {
                                    this.f35579a.c();
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                HashMap<String, Object> map2 = new HashMap<>();
                map2.put("error", "playAdUnit is null");
                a(map2);
            }
            finish();
        } catch (Throwable th) {
            SigmobLog.e("AdActivity onCreate Throwable: " + th.getMessage(), th);
            HashMap<String, Object> map3 = new HashMap<>();
            map3.put("error", th.getMessage());
            a(map3);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        SigmobLog.d("RewardVideoAdPlayerActivity onDestroy() called");
        if (com.sigmob.sdk.base.utils.v.b(this.f35568l)) {
            this.f35568l.h();
        }
        this.f35568l = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        try {
            abstractC1262j.f();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            HashMap<String, Object> map = new HashMap<>();
            map.put("error", th.getMessage());
            a(map);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        b();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        try {
            abstractC1262j.g();
        } catch (Throwable th) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("error", th.getMessage());
            a(map);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        abstractC1262j.a(bundle);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1264k
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        AbstractC1262j abstractC1262j = this.f35568l;
        if (abstractC1262j == null) {
            return;
        }
        try {
            abstractC1262j.o();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i2) {
        try {
            if (Build.VERSION.SDK_INT == 26 && C1383c.g((Activity) this)) {
                return;
            }
            super.setRequestedOrientation(i2);
        } catch (Exception e2) {
            SigmobLog.e("setRequestedOrientation: " + e2.getMessage());
        }
    }

    private static String a(Intent intent) {
        return intent.getStringExtra(Constants.BROADCAST_IDENTIFIER_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        SigmobLogger.d(f35567k, "onCreate#onTimerFinished", new Object[0]);
        this.f35572p = true;
        runOnUiThread(new Runnable() { // from class: com.sigmob.sdk.base.common.A
            @Override // java.lang.Runnable
            public final void run() {
                this.f35565b.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f35571o = true;
        BaseAdUnit baseAdUnit = this.f35570n;
        if (baseAdUnit == null) {
            return;
        }
        int interactionType = baseAdUnit.getInteractionType();
        boolean zEnableSmallWindow = this.f35570n.enableSmallWindow(Integer.valueOf(interactionType));
        if (interactionType == 2 || zEnableSmallWindow) {
            b();
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1264k
    public void a() {
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1264k
    public void a(int i2) {
        setRequestedOrientation(i2);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1264k
    public void a(Class<? extends Activity> cls, int i2, Bundle bundle) {
        if (cls == null) {
            return;
        }
        try {
            startActivityForResult(com.sigmob.sdk.base.utils.h.a(this, cls, bundle), i2);
        } catch (Throwable unused) {
            SigmobLog.d("Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
    }

    private void a(HashMap<String, Object> map) {
        BaseBroadcastReceiver.a(this, this.f35569m, map, IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
    }
}
