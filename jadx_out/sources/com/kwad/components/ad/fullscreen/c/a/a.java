package com.kwad.components.ad.fullscreen.c.a;

import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.work.WorkRequest;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.utils.cc;

/* loaded from: classes4.dex */
public final class a extends com.kwad.components.ad.reward.presenter.b implements cc.a {
    private cc ca;
    private m kf = new m() { // from class: com.kwad.components.ad.fullscreen.c.a.a.1
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.h
        public final void onLivePlayEnd() {
            super.onLivePlayEnd();
            if (a.this.kx) {
                return;
            }
            a.this.ca.sendEmptyMessageDelayed(1, 500L);
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j2, long j3) {
            if (!a.this.uj.sz.ls()) {
                a.this.a(j2, j3);
                a.this.ky = j3;
            } else if (j3 > 800) {
                a.this.ky = j3;
                if (a.this.ky > j2) {
                    a.this.kv.setVisibility(8);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) a.this.kw.getLayoutParams();
                    marginLayoutParams.leftMargin = com.kwad.sdk.c.a.a.a(a.this.getContext(), 0.0f);
                    a.this.kw.setLayoutParams(marginLayoutParams);
                }
                a.this.a(j2, j3);
                a.a(a.this, true);
            }
        }
    };
    private TextView kv;
    private View kw;
    private boolean kx;
    private long ky;
    private AdInfo mAdInfo;

    private void R(int i2) {
        this.kv.setText(String.valueOf(i2));
    }

    private void ds() {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(this.uj.mAdTemplate);
        this.mAdInfo = adInfoEO;
        this.kv.setText(String.valueOf(com.kwad.sdk.core.response.helper.a.N(adInfoEO)));
        this.kv.setVisibility(0);
        this.uj.sz.a(this.kf);
    }

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.ca = new cc(this);
        ds();
        if (this.uj.sz.ls()) {
            R(30);
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.kv = (TextView) findViewById(R.id.ksad_video_count_down);
        this.kw = findViewById(R.id.ksad_video_sound_switch);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.uj.sz.b(this.kf);
        this.kx = false;
        this.ca.removeCallbacksAndMessages(null);
    }

    public static /* synthetic */ boolean a(a aVar, boolean z2) {
        aVar.kx = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2, long j3) {
        int i2 = (int) (((j2 - j3) / 1000.0f) + 0.5f);
        if (i2 <= 0) {
            i2 = 1;
        }
        R(i2);
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        if (message.what == 1) {
            if (!this.uj.hh() && !this.uj.hg()) {
                long j2 = this.ky + 500;
                this.ky = j2;
                if (j2 > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    this.kv.setVisibility(8);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.kw.getLayoutParams();
                    marginLayoutParams.leftMargin = com.kwad.sdk.c.a.a.a(getContext(), 0.0f);
                    this.kw.setLayoutParams(marginLayoutParams);
                    return;
                }
                a(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, j2);
                this.ca.sendEmptyMessageDelayed(1, 500L);
                return;
            }
            this.ca.sendEmptyMessageDelayed(1, 500L);
        }
    }
}
