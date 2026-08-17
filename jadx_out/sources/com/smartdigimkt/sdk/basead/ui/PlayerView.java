package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.anythink.core.common.inner.b.b;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.j0.j0;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.u1.c;
import com.smartdigimkt.v1.l4;
import com.smartdigimkt.v1.m4;
import com.smartdigimkt.v1.o4;
import com.smartdigimkt.v1.p4;
import com.smartdigimkt.v1.q4;
import com.smartdigimkt.v1.r4;
import com.smartdigimkt.w0.j;
import com.smartdigimkt.w3.d;
import com.smartdigimkt.y0.g;
import com.smartdigimkt.y1.k;
import com.smartdigimkt.z.b0;
import com.smartdigimkt.z0.n;
import com.smartdigimkt.z0.p;
import java.util.List;

/* loaded from: classes5.dex */
public class PlayerView extends BasePlayerView {
    public static final String TAG = "PlayerView";

    /* renamed from: A, reason: collision with root package name */
    public int f43528A;

    /* renamed from: B, reason: collision with root package name */
    public int f43529B;

    /* renamed from: C, reason: collision with root package name */
    public int f43530C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f43531D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f43532E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f43533F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f43534G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f43535H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f43536I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f43537J;

    /* renamed from: K, reason: collision with root package name */
    public final l4 f43538K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f43539L;

    /* renamed from: M, reason: collision with root package name */
    public Thread f43540M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f43541N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f43542O;

    /* renamed from: P, reason: collision with root package name */
    public int f43543P;

    /* renamed from: Q, reason: collision with root package name */
    public int f43544Q;

    /* renamed from: R, reason: collision with root package name */
    public int f43545R;

    /* renamed from: S, reason: collision with root package name */
    public View f43546S;

    /* renamed from: T, reason: collision with root package name */
    public p4 f43547T;

    /* renamed from: U, reason: collision with root package name */
    public q4 f43548U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f43549V;

    /* renamed from: W, reason: collision with root package name */
    public String f43550W;

    /* renamed from: a0, reason: collision with root package name */
    public long f43551a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f43552b0;

    /* renamed from: c0, reason: collision with root package name */
    public c f43553c0;

    /* renamed from: d0, reason: collision with root package name */
    public final Object f43554d0;

    /* renamed from: t, reason: collision with root package name */
    public j0 f43555t;

    /* renamed from: u, reason: collision with root package name */
    public j f43556u;

    /* renamed from: v, reason: collision with root package name */
    public TextureView f43557v;

    /* renamed from: w, reason: collision with root package name */
    public String f43558w;

    /* renamed from: x, reason: collision with root package name */
    public String f43559x;

    /* renamed from: y, reason: collision with root package name */
    public int f43560y;

    /* renamed from: z, reason: collision with root package name */
    public int f43561z;

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43558w = "";
        this.f43559x = "";
        this.f43560y = -1;
        this.f43534G = false;
        this.f43535H = false;
        this.f43536I = false;
        this.f43537J = false;
        this.f43544Q = 0;
        this.f43545R = 0;
        this.f43549V = false;
        this.f43550W = "";
        this.f43551a0 = 0L;
        this.f43554d0 = new Object();
        this.f43552b0 = true;
        setSaveEnabled(true);
        this.f43538K = new l4(this, Looper.getMainLooper());
        setBackgroundColor(-16777216);
    }

    private String getValidVideoPath() {
        return !TextUtils.isEmpty(this.f43558w) ? this.f43558w : this.f43559x;
    }

    public final void a() {
        this.f43534G = false;
        this.f43540M = null;
        this.f43551a0 = 0L;
    }

    public void autoFitVideoSize(int i2, int i3, View view) {
        float fMax = Math.max(i2 / view.getMeasuredWidth(), i3 / view.getMeasuredHeight());
        int iCeil = (int) Math.ceil(r4 / fMax);
        int iCeil2 = (int) Math.ceil(r5 / fMax);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = iCeil;
        layoutParams.height = iCeil2;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public long getCurrentPosition() {
        return Math.max(this.f43560y, 0);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public long getVideoLength() {
        j0 j0Var = this.f43555t;
        return j0Var != null ? j0Var.h() : this.f43561z;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean hasVideo() {
        return this.f43541N;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(com.smartdigimkt.m3.c cVar, a aVar, boolean z2, List<Bitmap> list, c cVar2) {
        super.init(cVar, aVar, z2, list, cVar2);
        this.f43553c0 = cVar2;
        a(z2);
        initMuteStatus(z2);
        e eVar = cVar.f41832w;
        setVideoRateConfig(eVar.f41895T, eVar.f41898U);
        load(cVar.f41818i, false);
    }

    public void initMuteStatus(boolean z2) {
        this.f43539L = z2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean isMute() {
        return this.f43539L;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean isPlaying() {
        j0 j0Var = this.f43555t;
        return j0Var != null && j0Var.i();
    }

    public void load(String str, boolean z2) {
        this.f43559x = str;
        if (this.f43545R > 0) {
            b0.a().getClass();
            this.f43558w = b0.a(4, str);
        }
        if (TextUtils.isEmpty(this.f43558w) && TextUtils.isEmpty(this.f43559x)) {
            a(new f(b.f4594k, b.f4573P));
            return;
        }
        this.f43541N = true;
        if (this.f43557v == null) {
            TextureView textureView = new TextureView(getContext());
            this.f43557v = textureView;
            textureView.setKeepScreenOn(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            removeAllViews();
            addView(this.f43557v, layoutParams);
        }
        if (this.f43555t == null) {
            j0 j0Var = new j0(new com.smartdigimkt.j0.f(getContext()), new g(), new com.smartdigimkt.j0.c());
            this.f43555t = j0Var;
            p4 p4Var = new p4(this);
            this.f43547T = p4Var;
            j0Var.f40899b.f40917g.add(p4Var);
            q4 q4Var = new q4(this);
            this.f43548U = q4Var;
            this.f43555t.f40902e.add(q4Var);
            this.f43555t.a(this.f43539L ? 0.0f : 1.0f);
            this.f43555t.a(z2);
            a(getValidVideoPath(), false);
        }
        setOnClickListener(new m4(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f43707r) {
            return;
        }
        release(5);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        try {
            Bundle bundle = (Bundle) parcelable;
            Parcelable parcelable2 = bundle.getParcelable("superState");
            if (parcelable2 == null) {
                super.onRestoreInstanceState(parcelable);
                return;
            }
            super.onRestoreInstanceState(parcelable2);
            this.f43560y = bundle.getInt("savePosition");
            this.f43531D = bundle.getBoolean("saveVideoPlay25");
            this.f43532E = bundle.getBoolean("saveVideoPlay50");
            this.f43533F = bundle.getBoolean("saveVideoPlay75");
            this.f43535H = bundle.getBoolean("saveIsVideoStart");
            this.f43701l = bundle.getBoolean("saveIsVideoPlayCompletion");
            this.f43539L = bundle.getBoolean("saveIsMute");
            this.f43542O = bundle.getBoolean("saveVideoNeedResumeByCdRate");
            j0 j0Var = this.f43555t;
            if (j0Var != null) {
                j0Var.a(this.f43539L ? 0.0f : 1.0f);
            }
            bundle.toString();
        } catch (Throwable unused) {
            super.onRestoreInstanceState(parcelable);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        try {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
            Bundle bundle = new Bundle();
            bundle.putParcelable("superState", parcelableOnSaveInstanceState);
            bundle.putInt("savePosition", this.f43560y);
            bundle.putBoolean("saveVideoPlay25", this.f43531D);
            bundle.putBoolean("saveVideoPlay50", this.f43532E);
            bundle.putBoolean("saveVideoPlay75", this.f43533F);
            bundle.putBoolean("saveIsVideoStart", this.f43535H);
            bundle.putBoolean("saveIsVideoPlayCompletion", this.f43701l);
            bundle.putBoolean("saveIsMute", this.f43539L);
            bundle.putBoolean("saveVideoNeedResumeByCdRate", this.f43542O);
            bundle.toString();
            return bundle;
        } catch (Throwable unused) {
            return super.onSaveInstanceState();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        try {
            if (isPlaying()) {
                a(207);
            }
            a();
            j0 j0Var = this.f43555t;
            if (j0Var != null) {
                j0Var.a(false);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void rePlayVideo() {
        if (this.f43555t != null) {
            this.f43560y = 0;
            this.f43535H = false;
            this.f43701l = false;
            synchronized (this.f43554d0) {
                this.f43553c0 = null;
            }
            a(getValidVideoPath(), true);
            start();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void release(int i2) {
        com.smartdigimkt.w3.b bVar;
        long currentPosition = getCurrentPosition();
        long videoLength = getVideoLength();
        a();
        this.f43704o = null;
        if (!this.f43701l) {
            a(211);
        }
        j0 j0Var = this.f43555t;
        if (j0Var != null) {
            if (j0Var.i()) {
                this.f43555t.k();
            }
            p4 p4Var = this.f43547T;
            if (p4Var != null) {
                this.f43555t.f40899b.f40917g.remove(p4Var);
            }
            q4 q4Var = this.f43548U;
            if (q4Var != null) {
                this.f43555t.f40902e.remove(q4Var);
            }
            this.f43555t.j();
            this.f43555t = null;
        }
        l4 l4Var = this.f43538K;
        if (l4Var != null) {
            l4Var.removeCallbacksAndMessages(null);
        }
        this.f43536I = false;
        if (!this.f43552b0) {
            d dVarA = d.a();
            String str = this.f43559x;
            synchronized (dVarA) {
                if (!TextUtils.isEmpty(str) && (bVar = (com.smartdigimkt.w3.b) dVarA.f44940a.get(str)) != null) {
                    bVar.f44930k = false;
                    bVar.f44926g = 0;
                }
            }
        }
        com.smartdigimkt.b4.e.a().a(new r4(this, i2, currentPosition, videoLength), 0L, 8);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void setListener(k kVar) {
        this.f43704o = kVar;
    }

    public void setLoadingView(View view) {
        this.f43546S = view;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void setMute(boolean z2) {
        this.f43539L = z2;
        if (z2) {
            j0 j0Var = this.f43555t;
            if (j0Var != null) {
                j0Var.a(0.0f);
            }
            k kVar = this.f43704o;
            if (kVar != null) {
                kVar.b();
            }
        } else {
            j0 j0Var2 = this.f43555t;
            if (j0Var2 != null) {
                j0Var2.a(1.0f);
            }
            k kVar2 = this.f43704o;
            if (kVar2 != null) {
                kVar2.d();
            }
        }
        a(z2);
        a(212);
    }

    public void setVideoRateConfig(int i2, int i3) {
        this.f43545R = i2;
        this.f43544Q = i3;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void start() {
        View view = this.f43546S;
        if (view != null) {
            view.setVisibility(8);
        }
        if (!isPlaying()) {
            a(208);
        }
        j0 j0Var = this.f43555t;
        if (j0Var != null) {
            j0Var.a(true);
        }
        if (this.f43540M != null) {
            return;
        }
        this.f43534G = true;
        this.f43551a0 = 0L;
        Thread thread = new Thread(new o4(this));
        this.f43540M = thread;
        thread.setName("sdm_type_player_progress");
        this.f43540M.start();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        j0 j0Var = this.f43555t;
        if (j0Var != null) {
            j0Var.k();
        }
        k kVar = this.f43704o;
        if (kVar != null) {
            kVar.c();
        }
        this.f43704o = null;
    }

    public static void a(PlayerView playerView, long j2) {
        k kVar;
        if (playerView.f43552b0) {
            return;
        }
        int i2 = playerView.f43545R;
        if (i2 > 0 && i2 < 100) {
            if (playerView.f43544Q > i2) {
                playerView.f43544Q = i2 / 2;
            }
            int i3 = playerView.f43544Q;
            if (i3 == 0) {
                playerView.f43543P = 0;
                playerView.f43542O = true;
            } else if (j2 > 0) {
                playerView.f43543P = Math.round(((i3 * 1.0f) / 100.0f) * j2) + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth;
                playerView.f43542O = true;
            }
            if (playerView.f43543P > 0 || !playerView.f43542O || (kVar = playerView.f43704o) == null) {
                return;
            }
            playerView.f43542O = false;
            kVar.e();
            return;
        }
        playerView.f43542O = false;
    }

    public final void a(String str, boolean z2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f43555t == null) {
                a(new f(b.f4594k, "Player show fail with some internal error"));
                return;
            }
            this.f43549V = TextUtils.equals(str, this.f43558w);
            Uri uri = Uri.parse(str);
            if (str.toLowerCase().startsWith("http")) {
                this.f43556u = new j(uri, new p(), new com.smartdigimkt.o0.c());
                this.f43552b0 = true;
            } else {
                this.f43556u = new j(uri, new n(getContext()), new com.smartdigimkt.o0.c());
                this.f43552b0 = false;
            }
            this.f43555t.a(this.f43557v);
            this.f43555t.a(this.f43556u);
        } catch (Throwable th) {
            th.printStackTrace();
            if (!TextUtils.equals(str, this.f43559x) && !z2) {
                th.getMessage();
                a(this.f43559x, true);
            } else {
                a(new f(b.f4594k, th.getMessage()));
            }
        }
    }

    public final void a(int i2) {
        synchronized (this.f43554d0) {
            try {
                c cVar = this.f43553c0;
                if (cVar != null) {
                    cVar.a(null, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(boolean z2) {
        synchronized (this.f43554d0) {
        }
    }
}
