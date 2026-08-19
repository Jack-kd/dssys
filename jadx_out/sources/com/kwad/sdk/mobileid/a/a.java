package com.kwad.sdk.mobileid.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.l;
import com.kwad.sdk.core.network.o;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.mobileid.d;
import com.kwad.sdk.mobileid.model.CMTokenResponse;
import com.kwad.sdk.mobileid.model.UaidTokenResponse;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ai;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a extends com.kwad.sdk.mobileid.b {
    private l<b, CMTokenResponse> aqr;
    private int retryCount = 0;
    private int aUX = 3;

    public static /* synthetic */ int c(a aVar) {
        int i2 = aVar.retryCount;
        aVar.retryCount = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cE(final Context context) {
        new l<c, UaidTokenResponse>() { // from class: com.kwad.sdk.mobileid.a.a.3
            @NonNull
            private static c Sq() {
                return new c();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.kwad.sdk.core.network.l
            @NonNull
            /* renamed from: hg, reason: merged with bridge method [inline-methods] */
            public UaidTokenResponse parseData(String str) throws Throwable {
                UaidTokenResponse uaidTokenResponse = new UaidTokenResponse();
                uaidTokenResponse.parseJson(new JSONObject(str));
                if (!TextUtils.isEmpty(uaidTokenResponse.uaid)) {
                    ai.af(ServiceProvider.Ud(), uaidTokenResponse.uaid);
                    ai.e(ServiceProvider.Ud(), System.currentTimeMillis());
                }
                ai.ag(ServiceProvider.Ud(), "");
                com.kwad.sdk.mobileid.c.a(context, uaidTokenResponse);
                return uaidTokenResponse;
            }

            @Override // com.kwad.sdk.core.network.a
            @NonNull
            public final /* synthetic */ f createRequest() {
                return Sq();
            }
        }.request(new o<c, UaidTokenResponse>() { // from class: com.kwad.sdk.mobileid.a.a.4
            private void C(int i2, String str) {
                com.kwad.sdk.mobileid.a.Sg();
                com.kwad.sdk.mobileid.c.c(context, i2, str);
            }

            private static void Sr() {
                com.kwad.sdk.mobileid.a.Sg();
            }

            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            public final /* synthetic */ void onError(@NonNull f fVar, int i2, String str) {
                C(i2, str);
            }

            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            public final /* synthetic */ void onSuccess(@NonNull f fVar, @NonNull BaseResultData baseResultData) {
                Sr();
            }
        });
    }

    @Override // com.kwad.sdk.mobileid.b
    public final void cD(Context context) {
        d(context, false);
    }

    @SuppressLint({"CheckResult"})
    public final void d(final Context context, final boolean z2) {
        com.kwad.sdk.mobileid.c.b(context, z2 ? new d(true, "uaidTokenCanRequestByWifi") : new d(true, "uaidTokenCanRequest"));
        l<b, CMTokenResponse> lVar = new l<b, CMTokenResponse>() { // from class: com.kwad.sdk.mobileid.a.a.1
            @NonNull
            private static b Sp() {
                return new b();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.kwad.sdk.core.network.l
            @NonNull
            /* renamed from: hf, reason: merged with bridge method [inline-methods] */
            public CMTokenResponse parseData(String str) throws Throwable {
                CMTokenResponse cMTokenResponse = new CMTokenResponse();
                cMTokenResponse.parseJson(new JSONObject(str));
                ai.ag(context, cMTokenResponse.getResultToken());
                com.kwad.sdk.mobileid.a.Sg();
                com.kwad.sdk.mobileid.c.a(context, cMTokenResponse);
                return cMTokenResponse;
            }

            @Override // com.kwad.sdk.core.network.a
            @NonNull
            public final /* synthetic */ f createRequest() {
                return Sp();
            }
        };
        this.aqr = lVar;
        lVar.request(new o<b, CMTokenResponse>() { // from class: com.kwad.sdk.mobileid.a.a.2
            private void B(int i2, String str) {
                com.kwad.sdk.mobileid.c.b(context, i2, str);
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onSuccess(@NonNull b bVar, @NonNull CMTokenResponse cMTokenResponse) {
                d dVar;
                super.onSuccess(bVar, cMTokenResponse);
                boolean zIsEmpty = TextUtils.isEmpty(ai.m62do(context));
                boolean z3 = a.this.retryCount < a.this.aUX;
                if (zIsEmpty || !z3) {
                    dVar = zIsEmpty ? new d(false, "noRequestUaidTokenEmpty") : new d(false, "noRequestUaidRetry");
                } else {
                    a.c(a.this);
                    dVar = z2 ? new d(true, "uaidTokenCanRequestByWifi") : new d(true, "uaidTokenCanRequest");
                    a.this.cE(context);
                }
                com.kwad.sdk.mobileid.c.c(context, dVar);
            }

            @Override // com.kwad.sdk.core.network.o, com.kwad.sdk.core.network.g
            public final /* synthetic */ void onError(@NonNull f fVar, int i2, String str) {
                B(i2, str);
            }
        });
    }
}
