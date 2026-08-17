package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdChangeCacheData;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class O0 extends AbstractC1182h implements BiddingResult, AdChangeCacheData {

    /* renamed from: c, reason: collision with root package name */
    private M0 f30007c = null;

    /* renamed from: d, reason: collision with root package name */
    private C1188j f30008d;

    /* renamed from: e, reason: collision with root package name */
    private N0 f30009e;

    /* renamed from: f, reason: collision with root package name */
    private InterfaceC1204o0 f30010f;

    public class a implements InterfaceC1204o0 {
        public a() {
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void a(String str) {
            LogcatUtil.d("FLSDK-S2S-Video", "onADClick");
            O0.this.onClickedEvent();
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void b(double d2) {
            O0.this.c();
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void onClose() {
            LogcatUtil.d("FLSDK-S2S-Video", "onADClose");
            O0.this.onClosedEvent();
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void a(double d2) {
            O0.this.d();
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void b(FLError fLError) {
            O0.this.disposeError(fLError);
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void a(FLError fLError) {
            b(fLError);
        }

        @Override // com.fl.saas.InterfaceC1204o0
        public void a(N0 n02) {
            if (n02 == null || n02.b() == null) {
                a(FLError.create(0, "S2SRewardVideoADManager is null"));
                return;
            }
            O0.this.setAdSource(n02.b());
            O0.this.f30009e = n02;
            O0.this.f30008d = n02.b();
            O0.this.f30008d.f30515j0 = O0.this.isHot();
            if (O0.this.f30008d != null && O0.this.f30008d.f30453P0 != null && !TextUtils.isEmpty(O0.this.f30008d.f30453P0.f30573a)) {
                O0.this.getAdSource().f30562z = O0.this.f30008d.f30453P0.f30573a;
            }
            O0.this.onLoadedEvent();
        }
    }

    @Override // com.fl.saas.adx.base.bidding.BiddingResult
    public void biddingResult(boolean z2, int i2, int i3, int i4) {
        C1188j c1188j = this.f30008d;
        if (c1188j == null) {
            return;
        }
        c1188j.f30499e = i3;
        if (!z2) {
            if (i2 > 0) {
                c1188j.f30496d = i2;
            }
            C1230x.a().a(this.f30008d);
        } else {
            if (i2 > 0 && i2 <= c1188j.f30496d) {
                c1188j.f30496d = i2;
            }
            C1230x.a().b(this.f30008d);
        }
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        super.destroy();
        if (this.f30007c == null || isCache()) {
            return;
        }
        this.f30007c.a();
    }

    @Override // com.fl.saas.AbstractC1182h
    public void e() {
        getActivityValid().a(new B() { // from class: com.fl.saas.z1
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                this.f30727a.c((Activity) obj);
            }
        });
    }

    @Override // com.fl.saas.AbstractC1200n
    public void handle(Context context) {
        if (this.f30010f == null) {
            this.f30010f = new a();
        }
        M0 m02 = new M0(this.f30010f, false);
        this.f30007c = m02;
        m02.a(getPlaceId(), getLinkId(), isHot());
    }

    @Override // com.fl.saas.adx.base.interfaces.AdChangeCacheData
    public void setCacheData(String str, C1188j c1188j) {
        C1188j c1188j2 = this.f30008d;
        if (c1188j2 != null) {
            c1188j2.f30538r = str;
            c1188j2.f30482Z = c1188j.f30482Z;
            c1188j2.f30511i = c1188j.f30511i;
            c1188j2.f30490b0 = c1188j.f30508h;
            c1188j2.f30486a0 = c1188j.f30511i;
            c1188j2.f30494c0 = c1188j.f30514j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        onShowEvent();
        if (this.f30009e == null) {
            disposeError(new FLError(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "暂无可用激励视频广告，请等待缓存加载或者重新刷新"));
            return;
        }
        if (getAdSource() != null) {
            getAdSource().f30497d0 = this.f30009e.d() ? 1 : 0;
        }
        this.f30009e.a(activity);
    }
}
