package com.meishu.sdk.core.ad.paster;

import android.os.Handler;
import android.os.SystemClock;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.nativ.f;

/* loaded from: classes4.dex */
public class a extends com.meishu.sdk.core.ad.a implements PasterAd {

    /* renamed from: a, reason: collision with root package name */
    public f f31496a;

    /* renamed from: com.meishu.sdk.core.ad.paster.a$a, reason: collision with other inner class name */
    public class C0648a extends l {
        public C0648a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            ((NormalMediaView) a.this.getAdView()).replay();
        }
    }

    public a(f fVar) {
        super(null, "MS");
        this.f31496a = fVar;
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void destroy() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).d();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public long getCurrentPosition() {
        try {
            if (getAdView() instanceof NormalMediaView) {
                return ((NormalMediaView) getAdView()).getCurrentPosition();
            }
            return 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        try {
            resultBean.setCid(this.f31496a.getCid());
            resultBean.setCat(this.f31496a.getCat());
            resultBean.setAderId(this.f31496a.getAder_id());
            resultBean.setFromId(this.f31496a.getFromId());
            resultBean.setDrawing(this.f31496a.getDrawing());
            resultBean.setPid(this.f31496a.getPosId());
            resultBean.setReqId(this.f31496a.getReq_id());
            resultBean.setPrice(this.f31496a.getEcpm());
            resultBean.setEcpm(String.valueOf(this.f31496a.getEcpm()));
            resultBean.setS_ext(this.f31496a.getS_ext());
            resultBean.setS_code(this.f31496a.getS_code());
            resultBean.setSdkName("MS");
            resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f31496a));
            return resultBean;
        } catch (Exception e2) {
            e2.printStackTrace();
            return resultBean;
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public long getDuration() {
        try {
            if (getAdView() instanceof NormalMediaView) {
                return ((NormalMediaView) getAdView()).getDuration();
            }
            return 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        try {
            int expire_timestamp = this.f31496a.getExpire_timestamp();
            return SystemClock.uptimeMillis() - this.f31496a.getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void mute() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).g();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void onPause() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).pause();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void onResume() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).resume();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void pause() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).pause();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void replay() {
        if (getAdView() instanceof NormalMediaView) {
            new Handler().postDelayed(new C0648a(), 300L);
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void resume() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).resume();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void setOnPreparedListener(NormalMediaView.d dVar) {
        try {
            if (getAdView() instanceof NormalMediaView) {
                ((NormalMediaView) getAdView()).setOnPreparedListener(dVar);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void start() {
        try {
            p1.b(this.f31496a.getEventUrl());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).start();
        }
    }

    @Override // com.meishu.sdk.core.ad.paster.PasterAd
    public void unmute() {
        if (getAdView() instanceof NormalMediaView) {
            ((NormalMediaView) getAdView()).j();
        }
    }
}
