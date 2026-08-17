package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.utils.f0;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class s0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f31996a;

    public class a implements f0.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CountDownLatch f31997a;

        public a(s0 s0Var, CountDownLatch countDownLatch) {
            this.f31997a = countDownLatch;
        }

        public void a(boolean z2) {
            try {
                this.f31997a.countDown();
            } catch (Throwable unused) {
            }
        }
    }

    public s0(List list) {
        this.f31996a = list;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        int i2 = 0;
        while (i2 < this.f31996a.size()) {
            String str = (String) this.f31996a.get(i2);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            f0.a(str, i2 == 0, new a(this, countDownLatch));
            try {
                if (countDownLatch.getCount() > 0) {
                    countDownLatch.await(10L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
            i2++;
        }
    }
}
