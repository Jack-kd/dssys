package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a5;
import com.smartdigimkt.v1.b0;
import com.smartdigimkt.v1.c0;
import com.smartdigimkt.v1.c5;
import com.smartdigimkt.v1.w4;
import com.smartdigimkt.v1.x4;
import com.smartdigimkt.v1.z4;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class SdkBannerATView extends BaseBannerATView {

    /* renamed from: O, reason: collision with root package name */
    public static final /* synthetic */ int f43573O = 0;

    /* renamed from: J, reason: collision with root package name */
    public String f43574J;

    /* renamed from: K, reason: collision with root package name */
    public int f43575K;

    /* renamed from: L, reason: collision with root package name */
    public SimplePlayerBannerMediaView f43576L;

    /* renamed from: M, reason: collision with root package name */
    public final w4 f43577M;

    /* renamed from: N, reason: collision with root package name */
    public final x4 f43578N;

    public SdkBannerATView(Context context) {
        super(context);
        this.f43577M = new w4(this);
        this.f43578N = new x4(this);
    }

    public final void a(ViewGroup viewGroup, String str) {
        if (viewGroup != null) {
            if (z.h(this.f43217c, this.f43216b)) {
                SimplePlayerBannerMediaView simplePlayerBannerMediaView = new SimplePlayerBannerMediaView(getContext());
                this.f43576L = simplePlayerBannerMediaView;
                simplePlayerBannerMediaView.setmIsPureMode(this.f43575K == 1);
                viewGroup.addView(this.f43576L, 0, new RelativeLayout.LayoutParams(-1, -1));
                this.f43576L.setATImproveClickViewController(this.f43230p);
                this.f43576L.setIsMuted(true);
                this.f43576L.initPlayerView(this.f43217c, this.f43216b, new z4(this), this.f43212A);
                this.f43576L.setPlayerOnClickListener(new a5(this));
            } else {
                if (TextUtils.isEmpty(str)) {
                    str = this.f43217c.a(this.f43216b.f41644r);
                }
                if (TextUtils.isEmpty(str)) {
                    str = this.f43217c.f41814e;
                }
                if (TextUtils.isEmpty(str)) {
                    viewGroup.setVisibility(8);
                    return;
                }
                RecycleImageView recycleImageView = new RecycleImageView(getContext());
                recycleImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                RecycleImageView recycleImageView2 = new RecycleImageView(getContext());
                recycleImageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                viewGroup.addView(recycleImageView2, 0, new RelativeLayout.LayoutParams(-1, -1));
                m.a(getContext()).a(new o(1, str), -1, -1, new c5(this, str, recycleImageView, recycleImageView2));
                viewGroup.addView(recycleImageView, 1, new RelativeLayout.LayoutParams(-1, -1));
                this.f43225k.add(recycleImageView);
            }
            viewGroup.setVisibility(0);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        SimplePlayerBannerMediaView simplePlayerBannerMediaView = this.f43576L;
        if (simplePlayerBannerMediaView != null) {
            simplePlayerBannerMediaView.destroyPlayerView(4);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d4  */
    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.SdkBannerATView.e():void");
    }

    public SdkBannerATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
        w4 w4Var = new w4(this);
        this.f43577M = w4Var;
        x4 x4Var = new x4(this);
        this.f43578N = x4Var;
        int i2 = this.f43216b.f41644r.f41892S;
        a(i2 < 0 ? 100 : i2, new b0(this));
        this.f43243F.setOnTouchListener(new c0(this));
        if (this.f43575K != 1) {
            if (this.f43216b.f41644r.f41927e == 1) {
                View view = this.f43228n;
                if (view != null) {
                    view.setOnClickListener(x4Var);
                }
            } else {
                int size = this.f43225k.size();
                for (int i3 = 0; i3 < size; i3++) {
                    View view2 = (View) this.f43225k.get(i3);
                    if (view2 != null) {
                        view2.setOnClickListener(this.f43578N);
                    }
                }
            }
            if (this.f43216b.f41644r.f41927e == 0) {
                setOnClickListener(this.f43577M);
                return;
            }
            return;
        }
        setOnClickListener(w4Var);
    }
}
