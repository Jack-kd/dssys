package com.smartdigimkt.sdk.basead.webtemplet.adformat;

import android.text.TextUtils;
import com.smartdigimkt.c5.d;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.w2.h;
import com.smartdigimkt.x2.b;

/* loaded from: classes5.dex */
public class WTCommonJSBridgePlugin implements b {

    /* renamed from: a, reason: collision with root package name */
    public b f44098a;

    @Override // com.smartdigimkt.x2.b
    public void checkDataFetchState(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        System.currentTimeMillis();
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.checkDataFetchState(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void controlShakeView(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        System.currentTimeMillis();
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.controlShakeView(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void h5ShowException(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.h5ShowException(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void initSuccess(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.initSuccess(obj, str);
        }
    }

    public void initialize(WTWebView wTWebView) {
        try {
            if (wTWebView.getJsCommunicationObject() == null || !(wTWebView.getJsCommunicationObject() instanceof b)) {
                return;
            }
            this.f44098a = (b) wTWebView.getJsCommunicationObject();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void notifyClick(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.notifyClick(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void notifyClose(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.notifyClose(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void notifyReward(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        System.currentTimeMillis();
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.notifyReward(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void openInWebView(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.openInWebView(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewGetProgress(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewGetProgress(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewInit(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewInit(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewMute(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewMute(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewPauseOrResumePlay(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewPauseOrResumePlay(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewRelayout(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewRelayout(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void playerViewRemove(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.playerViewRemove(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void renderSuccess(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.renderSuccess(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void sendEventDA(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.sendEventDA(obj, str);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public void showFeedbackDialog(Object obj, String str) {
        String[] strArr = h.f44887a;
        if (!TextUtils.isEmpty(str)) {
            d.a(str);
        }
        b bVar = this.f44098a;
        if (bVar != null) {
            if (!TextUtils.isEmpty(str)) {
                str = d.a(str);
            }
            bVar.showFeedbackDialog(obj, str);
        }
    }
}
