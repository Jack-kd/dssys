package com.anythink.core.common.j;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.anythink.core.api.ATDebuggerConfig;
import com.anythink.core.common.d.s;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static volatile d f5344a;

    /* renamed from: b, reason: collision with root package name */
    private final ConsentInformation f5345b;

    /* renamed from: com.anythink.core.common.j.d$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f5352a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f5353b;

        public AnonymousClass3(Activity activity, a aVar) {
            this.f5352a = activity;
            this.f5353b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            UserMessagingPlatform.showPrivacyOptionsForm(this.f5352a, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.anythink.core.common.j.d.3.1
                public final void onConsentFormDismissed(@Nullable FormError formError) {
                    if (formError != null) {
                        AnonymousClass3.this.f5353b.a("UMP Consent failed to show form.");
                    } else {
                        AnonymousClass3.this.f5353b.a(true);
                    }
                }
            });
        }
    }

    public interface a {
        void a(String str);

        void a(boolean z2);
    }

    private d(Context context) {
        this.f5345b = UserMessagingPlatform.getConsentInformation(context);
    }

    private void b(Activity activity, a aVar) {
        try {
            if (!a()) {
                aVar.a("isPrivacyOptionsRequired is not.");
            } else {
                s.b();
                s.b(new AnonymousClass3(activity, aVar));
            }
        } catch (Throwable th) {
            aVar.a("secondAdsConsent:" + th.getMessage());
        }
    }

    public static d a(Context context) {
        if (f5344a == null) {
            synchronized (d.class) {
                try {
                    if (f5344a == null) {
                        f5344a = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5344a;
    }

    public final boolean b() {
        return this.f5345b.canRequestAds();
    }

    public final void a(final Activity activity, final a aVar) {
        ConsentRequestParameters consentRequestParametersBuild;
        Context applicationContext = activity.getApplicationContext();
        ATDebuggerConfig aTDebuggerConfigB = s.b().B();
        if (aTDebuggerConfigB != null && !TextUtils.isEmpty(aTDebuggerConfigB.getUMPTestDeviceId())) {
            consentRequestParametersBuild = new ConsentRequestParameters.Builder().setConsentDebugSettings(new ConsentDebugSettings.Builder(applicationContext).setDebugGeography(1).addTestDeviceHashedId(aTDebuggerConfigB.getUMPTestDeviceId()).build()).build();
        } else {
            consentRequestParametersBuild = new ConsentRequestParameters.Builder().build();
        }
        this.f5345b.requestConsentInfoUpdate(activity, consentRequestParametersBuild, new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.anythink.core.common.j.d.1
            public final void onConsentInfoUpdateSuccess() {
                if (!d.this.f5345b.isConsentFormAvailable()) {
                    aVar.a("UMP Consent failed to load form.");
                } else if (d.this.f5345b.getConsentStatus() != 2) {
                    aVar.a(false);
                } else {
                    UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.anythink.core.common.j.d.1.1
                        public final void onConsentFormDismissed(@Nullable FormError formError) {
                            if (formError != null) {
                                aVar.a("UMP Consent failed to show form.");
                            } else {
                                aVar.a(true);
                            }
                        }
                    });
                }
            }
        }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.anythink.core.common.j.d.2
            public final void onConsentInfoUpdateFailure(@NonNull FormError formError) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    if (formError == null) {
                        aVar2.a("UMP Consent InfoUpdateFailure");
                        return;
                    }
                    StringBuilder sb = new StringBuilder("UMP Consent InfoUpdateFailure,error:");
                    sb.append(formError.getErrorCode());
                    sb.append(",");
                    sb.append(formError.getMessage());
                    aVar2.a(sb.toString() != null ? formError.getMessage() : "");
                }
            }
        });
    }

    public final boolean a() {
        return this.f5345b.getPrivacyOptionsRequirementStatus() == ConsentInformation.PrivacyOptionsRequirementStatus.REQUIRED;
    }
}
