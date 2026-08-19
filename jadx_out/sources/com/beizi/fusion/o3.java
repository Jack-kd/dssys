package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class o3 extends e2 implements b2 {

    /* renamed from: U, reason: collision with root package name */
    protected Context f15403U;

    /* renamed from: V, reason: collision with root package name */
    protected long f15404V;

    /* renamed from: W, reason: collision with root package name */
    protected float f15405W;

    /* renamed from: X, reason: collision with root package name */
    protected float f15406X;

    /* renamed from: Y, reason: collision with root package name */
    protected NativeUnifiedAdResponse f15407Y;

    /* renamed from: Z, reason: collision with root package name */
    protected FrameLayout f15408Z;

    /* renamed from: a0, reason: collision with root package name */
    protected boolean f15409a0 = false;

    /* renamed from: b0, reason: collision with root package name */
    protected boolean f15410b0 = false;

    public class a implements NativeUnifiedAdResponse {
        public a() {
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getActionText() {
            return o3.this.N0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getAdLogoUrl() {
            return o3.this.U0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getDescription() {
            return o3.this.P0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public UnifiedAdDownloadAppInfo getDownloadAppInfo() {
            return o3.this.Q0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public int getECPM() {
            String strS = o3.this.s();
            if (strS == null) {
                return -1;
            }
            try {
                return Integer.parseInt(strS);
            } catch (Exception unused) {
                return -1;
            }
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getIconUrl() {
            return o3.this.R0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getImageUrl() {
            return o3.this.S0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public List getImgList() {
            return o3.this.T0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public int getMaterialType() {
            return o3.this.V0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public String getTitle() {
            return o3.this.W0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public View getVideoView() {
            return o3.this.X0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public ViewGroup getViewContainer() {
            return o3.this.O0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public boolean isVideo() {
            return o3.this.Z0();
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public void registerDownloadAppInfoClickEvent(View view) {
            o3.this.a(view);
        }

        @Override // com.beizi.fusion.NativeUnifiedAdResponse
        public void registerViewForInteraction(List list) {
            o3.this.a(list);
        }
    }

    public o3(Context context, long j2, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, int i2) {
        this.f15403U = context;
        this.f15404V = j2;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13594D = i2;
        this.f13616f = forwardBean;
        this.f15405W = vo.h(context);
        this.f15406X = vo.e(context);
        C();
    }

    private void a1() {
        n3 n3Var = this.f13614d;
        if (n3Var == null) {
            return;
        }
        Map mapC = n3Var.C();
        x();
        mapC.toString();
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            d1();
            this.f13614d.b(x(), (View) null);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    private void d1() {
        this.f15407Y = new a();
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        b1();
    }

    @Override // com.beizi.fusion.e2
    public void B0() {
        if (this.f13614d == null) {
            return;
        }
        this.f13618h = this.f13615e.getAppId();
        this.f13619i = this.f13615e.getSpaceId();
        this.f13613c = this.f13615e.getBuyerSpaceUuId();
        lk lkVar = this.f13611a;
        if (lkVar != null) {
            EventBean eventBeanB = lkVar.a().b(this.f13613c);
            this.f13612b = eventBeanB;
            if (eventBeanB != null) {
                D();
                Y0();
            }
        }
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    public abstract String N0();

    public abstract ViewGroup O0();

    public abstract String P0();

    public abstract UnifiedAdDownloadAppInfo Q0();

    public abstract String R0();

    public abstract String S0();

    public abstract List T0();

    public abstract String U0();

    public abstract int V0();

    public abstract String W0();

    public abstract View X0();

    public abstract void Y0();

    public abstract boolean Z0();

    public abstract void a(View view);

    public abstract void a(List list);

    public abstract void b1();

    public void c1() {
        try {
            if (W()) {
                a1();
            } else {
                A();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public NativeUnifiedAdResponse q() {
        return this.f15407Y;
    }

    @Override // com.beizi.fusion.e2
    public abstract String x();
}
