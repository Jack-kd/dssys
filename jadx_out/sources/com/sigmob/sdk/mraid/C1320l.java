package com.sigmob.sdk.mraid;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.views.am;
import com.sigmob.sdk.base.views.ap;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1320l extends o {

    /* renamed from: e, reason: collision with root package name */
    private final String f37978e;

    /* renamed from: f, reason: collision with root package name */
    private com.sigmob.sdk.base.views.v f37979f;

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1320l(android.content.Context r1, java.lang.String r2, int r3, com.sigmob.sdk.base.models.BaseAdUnit r4) {
        /*
            r0 = this;
            r0.<init>(r2)
            java.lang.Class<com.sigmob.sdk.mraid.l> r2 = com.sigmob.sdk.mraid.C1320l.class
            java.lang.String r2 = r2.getSimpleName()
            r0.f37978e = r2
            if (r3 == 0) goto L2b
            r2 = 1
            if (r3 == r2) goto L25
            r2 = 2
            if (r3 == r2) goto L1f
            r2 = 3
            if (r3 == r2) goto L17
            goto L31
        L17:
            com.sigmob.sdk.base.views.ap r2 = new com.sigmob.sdk.base.views.ap
            r2.<init>(r1)
        L1c:
            r0.f37979f = r2
            goto L31
        L1f:
            com.sigmob.sdk.base.views.am r2 = new com.sigmob.sdk.base.views.am
            r2.<init>(r1)
            goto L1c
        L25:
            com.sigmob.sdk.base.views.aw r2 = new com.sigmob.sdk.base.views.aw
            r2.<init>(r1)
            goto L1c
        L2b:
            com.sigmob.sdk.base.views.ac r2 = new com.sigmob.sdk.base.views.ac
            r2.<init>(r1)
            goto L1c
        L31:
            r0.a(r1, r3)
            com.sigmob.sdk.base.views.v r1 = r0.f37979f
            boolean r1 = com.sigmob.sdk.base.utils.v.b(r1)
            if (r1 == 0) goto L41
            com.sigmob.sdk.base.views.v r1 = r0.f37979f
            r1.a()
        L41:
            com.sigmob.sdk.base.common.am$a r1 = r0.f37988c
            boolean r1 = com.sigmob.sdk.base.utils.v.b(r1)
            if (r1 == 0) goto L52
            com.sigmob.sdk.base.common.am$a r1 = r0.f37988c
            com.sigmob.sdk.base.models.SensorEntity r2 = com.sigmob.sdk.base.models.SensorEntity.format(r4)
            r1.a(r2)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid.C1320l.<init>(android.content.Context, java.lang.String, int, com.sigmob.sdk.base.models.BaseAdUnit):void");
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public View a() {
        return this.f37979f;
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public void b() {
        if (com.sigmob.sdk.base.utils.v.b(this.f37979f)) {
            com.sigmob.sdk.base.utils.w.a(this.f37979f);
            this.f37979f = null;
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f37988c)) {
            this.f37988c.c();
        }
    }

    @Override // com.sigmob.sdk.mraid.o
    public void a(float f2) {
        com.sigmob.sdk.base.views.v vVar = this.f37979f;
        if (vVar != null && (vVar instanceof ap)) {
            ((ap) vVar).a(f2);
            SigmobLogger.d(this.f37978e, "onMotionViewUpdateProcess: progress = " + f2, new Object[0]);
        }
    }

    @Override // com.sigmob.sdk.mraid.o
    public void b(float f2) {
        com.sigmob.sdk.base.views.v vVar = this.f37979f;
        if (vVar != null && (vVar instanceof am)) {
            ((am) vVar).a(f2);
            SigmobLogger.d(this.f37978e, "onMotionViewUpdateScreen: progress = " + f2, new Object[0]);
        }
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (this.f37979f == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("frame")) == null) {
            return;
        }
        Context contextE = com.sigmob.sdk.b.e();
        int iOptDouble = (int) jSONObjectOptJSONObject.optDouble("x", 0.0d);
        int iOptDouble2 = (int) jSONObjectOptJSONObject.optDouble("y", 0.0d);
        int iOptDouble3 = (int) jSONObjectOptJSONObject.optDouble("w", -1.0d);
        int iOptDouble4 = (int) jSONObjectOptJSONObject.optDouble("h", -1.0d);
        if (iOptDouble3 > 0) {
            iOptDouble3 = Dips.dipsToIntPixels(iOptDouble3, contextE);
        }
        if (iOptDouble4 > 0) {
            iOptDouble4 = Dips.dipsToIntPixels(iOptDouble4, contextE);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOptDouble3, iOptDouble4);
        this.f37979f.setX(Dips.dipsToIntPixels(iOptDouble, contextE));
        this.f37979f.setY(Dips.dipsToIntPixels(iOptDouble2, contextE));
        this.f37979f.setLayoutParams(layoutParams);
        this.f37979f.requestLayout();
    }

    public void a(boolean z2) {
        com.sigmob.sdk.base.views.v vVar = this.f37979f;
        if (vVar == null || this.f37988c == null) {
            return;
        }
        if (z2) {
            vVar.setVisibility(4);
            this.f37988c.b();
        } else {
            vVar.setVisibility(0);
            this.f37988c.a();
        }
    }
}
