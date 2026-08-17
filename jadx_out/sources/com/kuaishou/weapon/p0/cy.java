package com.kuaishou.weapon.p0;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes4.dex */
public class cy {

    /* renamed from: b, reason: collision with root package name */
    private static volatile cy f31052b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31053a;

    /* renamed from: c, reason: collision with root package name */
    private Application.ActivityLifecycleCallbacks f31054c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f31055d;

    private cy(Context context) {
        this.f31053a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            Context context = this.f31053a;
            if (context == null) {
                return;
            }
            h hVarA = h.a(context, "re_po_rt");
            if (hVarA.b(dd.f31128w, 0) == 0) {
                return;
            }
            final int[] iArr = {0};
            final int[] iArr2 = {hVarA.b(dd.f31116k, 1)};
            if (this.f31053a instanceof Application) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.kuaishou.weapon.p0.cy.2
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        try {
                            int[] iArr3 = iArr;
                            iArr3[0] = iArr3[0] + 1;
                            n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cy.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    if (iArr[0] < 20 && iArr2[0] <= 0) {
                                        ((Application) cy.this.f31053a).unregisterActivityLifecycleCallbacks(cy.this.f31054c);
                                        return;
                                    }
                                    iArr2[0] = r1[0] - 1;
                                    cv.a(cy.this.f31053a).a(106);
                                    db.a(cy.this.f31053a).a(106);
                                    cz.a(cy.this.f31053a).a(106, 0);
                                    cx.a(cy.this.f31053a).a(106);
                                    dc.a(cy.this.f31053a).a(106);
                                }
                            });
                        } catch (Throwable unused) {
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                    }
                };
                this.f31054c = activityLifecycleCallbacks;
                ((Application) this.f31053a).registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            }
        } catch (Throwable unused) {
        }
    }

    public static cy a(Context context) {
        if (f31052b == null) {
            synchronized (cy.class) {
                try {
                    if (f31052b == null) {
                        f31052b = new cy(context);
                    }
                } finally {
                }
            }
        }
        return f31052b;
    }

    public void a() {
        try {
            n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        h hVarA = h.a(cy.this.f31053a, "re_po_rt");
                        boolean zE = hVarA.e("a1_p_s_p_s");
                        boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
                        if ((zE || zE2) && !cy.this.f31055d) {
                            cy.this.f31055d = true;
                            cy.this.b();
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }
}
