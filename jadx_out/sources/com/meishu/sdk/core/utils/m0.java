package com.meishu.sdk.core.utils;

import android.app.Activity;

/* loaded from: classes4.dex */
public class m0 extends com.meishu.sdk.core.service.a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f31931a;

    /* renamed from: b, reason: collision with root package name */
    public long f31932b;

    /* renamed from: c, reason: collision with root package name */
    public long f31933c;

    /* renamed from: d, reason: collision with root package name */
    public long f31934d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f31935e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Boolean f31936f;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            super.safeRun();
            StringBuilder sbA = com.meishu.sdk.activity.a.a("dialog state 0 ：");
            sbA.append(m0.this.f31932b);
            sbA.append(" ");
            sbA.append(com.meishu.sdk.core.service.d.a());
            LogUtil.dev("OpenAppDialogStateChecker", sbA.toString());
            long j2 = m0.this.f31932b;
            if (j2 == 0) {
                LogUtil.dev("OpenAppDialogStateChecker", "dialog state 1");
                m0.this.f31936f = Boolean.FALSE;
                m0 m0Var = m0.this;
                m0.a(m0Var, m0Var.f31936f.booleanValue());
                return;
            }
            if (j2 > 0) {
                if (com.meishu.sdk.core.service.d.a()) {
                    m0.this.f31935e = true;
                    return;
                }
                LogUtil.dev("OpenAppDialogStateChecker", "dialog state 2");
                m0.this.f31936f = Boolean.TRUE;
                m0 m0Var2 = m0.this;
                m0.a(m0Var2, m0Var2.f31936f.booleanValue());
            }
        }
    }

    public m0(long j2) {
        this(j2, true);
    }

    public static void a(m0 m0Var, boolean z2) {
        if (m0Var.f31931a) {
            if (m0Var.f31934d > 0) {
                z2 = true;
            }
            if (com.meishu.sdk.core.service.d.f31731e) {
                p0.a(z2);
            } else {
                com.meishu.sdk.core.service.d.a(new o0(z2));
            }
        }
        com.meishu.sdk.core.service.d.b(m0Var);
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityPause(Activity activity) {
        this.f31932b = System.currentTimeMillis();
        LogUtil.dev("OpenAppDialogStateChecker", "onActivityPause");
    }

    @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
    public void onActivityResume(Activity activity) {
        this.f31933c = System.currentTimeMillis();
        LogUtil.dev("OpenAppDialogStateChecker", "onActivityResume");
        long j2 = this.f31932b;
        if (j2 <= 0 || this.f31933c <= j2 || this.f31936f != null) {
            com.meishu.sdk.core.service.d.b(this);
        } else {
            LogUtil.dev("OpenAppDialogStateChecker", "dialog close");
            SdkHandler.getInstance().postDelay(new n0(this), 150L);
        }
    }

    @Override // com.meishu.sdk.core.service.e
    public boolean onAppStateUpdate(boolean z2) {
        LogUtil.dev("OpenAppDialogStateChecker", "onAppStateUpdate:" + z2);
        if (z2) {
            System.currentTimeMillis();
            return true;
        }
        this.f31934d = System.currentTimeMillis();
        return true;
    }

    public m0(long j2, boolean z2) {
        this.f31931a = true;
        this.f31932b = 0L;
        this.f31933c = 0L;
        this.f31934d = 0L;
        this.f31935e = false;
        this.f31936f = null;
        this.f31931a = z2;
        SdkHandler.getInstance().postDelay(new a(), j2 <= 0 ? 900L : j2);
    }
}
