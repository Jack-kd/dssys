package com.bytedance.sdk.openadsdk.core.activity.base;

import android.os.Bundle;
import android.view.View;
import com.byazt.nk.TTScrollView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.oh.j;
import com.byazt.su.jx;
import com.byazt.vi.a;
import com.byazt.ymw.u;

/* loaded from: classes3.dex */
public class TTVideoScrollWebPageActivity extends TTVideoWebPageActivity {

    /* renamed from: ms, reason: collision with root package name */
    private TTScrollView f28957ms;

    @Override // com.byazt.gi.BaseLandingPageActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TTScrollView tTScrollView = (TTScrollView) findViewById(2114387873);
        this.f28957ms = tTScrollView;
        tTScrollView.setListener(new TTScrollView.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity.1
            @Override // com.byazt.nk.TTScrollView.hp
            public void hp(boolean z2) {
                try {
                    jx jxVar = ((TTVideoWebPageActivity) TTVideoScrollWebPageActivity.this).xh;
                    if (jxVar != null && (jxVar instanceof j)) {
                        if (!z2 || jxVar.sz()) {
                            ((TTVideoWebPageActivity) TTVideoScrollWebPageActivity.this).xh.a();
                        } else {
                            ((j) ((TTVideoWebPageActivity) TTVideoScrollWebPageActivity.this).xh).a(false);
                        }
                    }
                } catch (Throwable th) {
                    u.hp("TTVideoScrollWebPageActivity", "onCreate isShow error", th);
                }
            }
        });
        jx jxVar = ((TTVideoWebPageActivity) this).xh;
        if (jxVar != null) {
            jxVar.j(false);
        }
        NativeVideoTsView nativeVideoTsView = ((TTVideoWebPageActivity) this).ky;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setVideoAdInteractionListener(new jx.InterfaceC0367jx() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity.2
                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onProgressUpdate(long j2, long j3) {
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdContinuePlay() {
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdPaused() {
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdStartPlay() {
                    jx jxVar2;
                    if (TTVideoScrollWebPageActivity.this.f28957ms == null || TTVideoScrollWebPageActivity.this.f28957ms.hp() || (jxVar2 = ((TTVideoWebPageActivity) TTVideoScrollWebPageActivity.this).xh) == null) {
                        return;
                    }
                    jxVar2.eb();
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoComplete() {
                }
            });
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(a.xh(this));
    }
}
