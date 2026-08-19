package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class q extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String[] f31954a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f31955b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f31956c;

    public q(String[] strArr, int i2, String str) {
        this.f31954a = strArr;
        this.f31955b = i2;
        this.f31956c = str;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            String[] strArr = this.f31954a;
            if (strArr != null) {
                a0.a(strArr[0], Integer.valueOf(this.f31955b), this.f31956c);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
