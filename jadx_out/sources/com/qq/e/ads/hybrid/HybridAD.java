package com.qq.e.ads.hybrid;

import android.content.Context;
import com.qq.e.ads.AbstractAD;
import com.qq.e.comm.pi.HADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class HybridAD extends AbstractAD<HADI> implements HADI {

    /* renamed from: h, reason: collision with root package name */
    private HybridADListener f35182h;

    /* renamed from: i, reason: collision with root package name */
    private CountDownLatch f35183i = new CountDownLatch(1);

    /* renamed from: j, reason: collision with root package name */
    private HybridADSetting f35184j;

    public HybridAD(Context context, HybridADSetting hybridADSetting, HybridADListener hybridADListener) {
        this.f35184j = hybridADSetting;
        this.f35182h = hybridADListener;
        a(context, "NO_POS_ID");
    }

    @Override // com.qq.e.comm.pi.HADI
    public void loadUrl(final String str) {
        if (a()) {
            if (!b()) {
                new Thread(new Runnable() { // from class: com.qq.e.ads.hybrid.HybridAD.1
                    @Override // java.lang.Runnable
                    public void run() throws InterruptedException {
                        try {
                            HybridAD.this.f35183i.await(30L, TimeUnit.SECONDS);
                            if (HybridAD.this.b() && ((AbstractAD) HybridAD.this).f35123a != null) {
                                ((HADI) ((AbstractAD) HybridAD.this).f35123a).loadUrl(str);
                            } else {
                                GDTLogger.e("初始化错误：广告实例未被初始化");
                                HybridAD.this.a(2001);
                            }
                        } catch (InterruptedException unused) {
                            GDTLogger.e("初始化错误：广告实例未被初始化");
                            HybridAD.this.a(2001);
                        }
                    }
                }).start();
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((HADI) t2).loadUrl(str);
            } else {
                a("loadUrl");
            }
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public HADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getHybridAD(this.f35184j, this.f35182h);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(HADI hadi) {
        this.f35183i.countDown();
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        HybridADListener hybridADListener = this.f35182h;
        if (hybridADListener != null) {
            hybridADListener.onError(AdErrorConvertor.formatErrorCode(i2));
        }
        this.f35183i.countDown();
    }
}
