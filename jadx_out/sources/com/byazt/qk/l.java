package com.byazt.qk;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.xci.mp;
import java.lang.ref.WeakReference;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 64, 34})
/* loaded from: classes3.dex */
public abstract class l extends com.byazt.qt.k {
    public Integer[] hp;

    /* renamed from: q, reason: collision with root package name */
    public Dialog f24866q;

    /* renamed from: s, reason: collision with root package name */
    public hp f24867s;

    @com.byazt.kj.hp(hp = {0, 1, 64, 123})
    public static class hp implements com.byazt.gog.hp {
        public WeakReference<com.byazt.gog.hp> hp;

        /* renamed from: l, reason: collision with root package name */
        public String f24868l;

        public hp(com.byazt.gog.hp hpVar, String str) {
            this.f24868l = "";
            this.hp = new WeakReference<>(hpVar);
            this.f24868l = str;
        }

        public void hp(com.byazt.gog.hp hpVar) {
            this.hp = new WeakReference<>(hpVar);
        }

        @Override // com.byazt.gog.hp
        public void jx(long j2, long j3, String str, String str2) {
            long j4;
            long j5;
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference == null || weakReference.get() == null) {
                j4 = j2;
                j5 = j3;
            } else {
                j4 = j2;
                j5 = j3;
                this.hp.get().jx(j4, j5, str, str2);
            }
            com.byazt.pm.hp.jx(this.f24868l, j4, j5);
        }

        @Override // com.byazt.gog.hp
        public void l(long j2, long j3, String str, String str2) {
            long j4;
            long j5;
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference == null || weakReference.get() == null) {
                j4 = j2;
                j5 = j3;
            } else {
                j4 = j2;
                j5 = j3;
                this.hp.get().l(j4, j5, str, str2);
            }
            com.byazt.pm.hp.l(this.f24868l, j4, j5);
        }

        @Override // com.byazt.gog.hp
        public void hp() {
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference != null && weakReference.get() != null) {
                this.hp.get().hp();
            }
            com.byazt.pm.hp.hp(this.f24868l);
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, long j3, String str, String str2) {
            long j4;
            long j5;
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference == null || weakReference.get() == null) {
                j4 = j2;
                j5 = j3;
            } else {
                j4 = j2;
                j5 = j3;
                this.hp.get().hp(j4, j5, str, str2);
            }
            com.byazt.pm.hp.hp(this.f24868l, j4, j5);
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, String str, String str2) {
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference != null && weakReference.get() != null) {
                this.hp.get().hp(j2, str, str2);
            }
            com.byazt.pm.hp.l(this.f24868l);
        }

        @Override // com.byazt.gog.hp
        public void hp(String str, String str2) {
            WeakReference<com.byazt.gog.hp> weakReference = this.hp;
            if (weakReference != null && weakReference.get() != null) {
                this.hp.get().hp(str, str2);
            }
            com.byazt.pm.hp.jx(this.f24868l);
        }
    }

    @Override // com.byazt.qt.k
    public void destroy() {
        if (getMaterialMeta() != null) {
            com.byazt.jz.n.hp(getMaterialMeta().n());
            com.byazt.jz.n.hp(getMaterialMeta().jm());
        }
    }

    @Override // com.byazt.qt.k
    public com.byazt.qt.eb getDislikeDialog(Activity activity) {
        return null;
    }

    @Override // com.byazt.qt.k
    public com.byazt.qt.j getDislikeInfo() {
        return null;
    }

    @Override // com.byazt.qt.k
    public View getExpressAdView() {
        return null;
    }

    @Override // com.byazt.qt.k
    public int getImageMode() {
        return 0;
    }

    @Override // com.byazt.qt.k
    public int getInteractionType() {
        return 0;
    }

    public abstract mp getMaterialMeta();

    @Override // com.byazt.qt.k
    public Map<String, Object> getMediaExtraInfo() {
        return null;
    }

    public com.byazt.nc.hp getVideoModel() {
        return null;
    }

    public void hp(Dialog dialog) {
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.k
    public void render() {
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        if (getMaterialMeta() != null) {
            com.byazt.jz.n.hp(getMaterialMeta().n(), lVar, com.byazt.gu.l.class);
        }
    }

    @Override // com.byazt.qt.k
    public void setCanInterruptVideoPlay(boolean z2) {
    }

    @Override // com.byazt.qt.k
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
    }

    @Override // com.byazt.qt.k
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        this.f24866q = dialog;
        this.hp = numArr;
        try {
            dialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.qk.l.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (l.this.getMaterialMeta() != null) {
                        l lVar = l.this;
                        lVar.hp(lVar.getMaterialMeta().ju());
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        } catch (Throwable unused) {
        }
        hp(this.f24866q);
    }

    @Override // com.byazt.qt.k
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.hp hpVar) {
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.k
    public void setSlideIntervalTime(int i2) {
    }

    @Override // com.byazt.qt.k
    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
    }

    @Override // com.byazt.qt.k
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    public void hp(com.byazt.bl.l lVar) {
        Dialog dialog;
        if (lVar == null || (dialog = this.f24866q) == null) {
            return;
        }
        com.byazt.ruu.l.hp(lVar, dialog, this.hp);
    }

    @Override // com.byazt.qt.k
    public void setExpressInteractionListener(com.byazt.qrd.l lVar) {
    }
}
