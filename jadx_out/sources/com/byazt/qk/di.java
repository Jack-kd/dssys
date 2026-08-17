package com.byazt.qk;

import android.content.Context;
import com.byazt.su.jx;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes3.dex */
public class di extends cx {
    public di(Context context, mp mpVar, com.byazt.jt.l lVar, int i2) {
        super(context, mpVar, lVar, i2);
    }

    @Override // com.byazt.qk.l
    public com.byazt.nc.hp getVideoModel() {
        WeakReference<zy> weakReference = this.f24828w;
        if (weakReference != null && weakReference.get() != null) {
            return this.f24828w.get().getVideoModel();
        }
        NativeExpressView nativeExpressView = ((cx) this).hp;
        if (!(nativeExpressView instanceof NativeExpressVideoView)) {
            return null;
        }
        ((NativeExpressVideoView) nativeExpressView).k();
        return ((NativeExpressVideoView) ((cx) this).hp).getVideoModel();
    }

    @Override // com.byazt.qk.cx
    public void initExpressView(Context context, mp mpVar, com.byazt.jt.l lVar) {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(context, mpVar, lVar, com.byazt.ih.l.AD_TAG_FEED);
        ((cx) this).hp = nativeExpressVideoView;
        hp(nativeExpressVideoView, this.jx);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setVideoAdListener(final com.byazt.qrd.jx jxVar) {
        NativeExpressView nativeExpressView = ((cx) this).hp;
        if (nativeExpressView != null) {
            nativeExpressView.setVideoAdListener(new jx.j() { // from class: com.byazt.qk.di.1
                @Override // com.byazt.su.jx.j
                public void onVideoError(int i2, int i3) {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(i2, i3);
                    }
                }

                @Override // com.byazt.su.jx.j
                public void onVideoLoad() {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp();
                    }
                }
            });
            ((cx) this).hp.setVideoAdInteractionListener(new jx.InterfaceC0367jx() { // from class: com.byazt.qk.di.2
                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onProgressUpdate(long j2, long j3) {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, j3);
                    }
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdContinuePlay() {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.j();
                    }
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdPaused() {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.jx();
                    }
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoAdStartPlay() {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.l();
                    }
                }

                @Override // com.byazt.su.jx.InterfaceC0367jx
                public void onVideoComplete() {
                    com.byazt.qrd.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.w();
                    }
                }
            });
        }
    }
}
