package com.byazt.wx;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1484, 30})
/* loaded from: classes3.dex */
public class jx {
    public WeakReference<l> hp;

    public jx(l lVar) {
        this.hp = new WeakReference<>(lVar);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().adAnalysisData(str);
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<l> weakReference = this.hp;
        return (weakReference == null || weakReference.get() == null) ? "" : this.hp.get().adInfo();
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<l> weakReference = this.hp;
        return (weakReference == null || weakReference.get() == null) ? "" : this.hp.get().appInfo();
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().changeVideoState(str);
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().clickEvent(str);
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().dynamicTrack(str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<l> weakReference = this.hp;
        return (weakReference == null || weakReference.get() == null) ? "" : this.hp.get().getCurrentVideoState();
    }

    @JavascriptInterface
    public String getData(String str) {
        WeakReference<l> weakReference = this.hp;
        return (weakReference == null || weakReference.get() == null) ? "" : this.hp.get().getData(str);
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<l> weakReference = this.hp;
        return (weakReference == null || weakReference.get() == null) ? "" : this.hp.get().getTemplateInfo();
    }

    public void hp(l lVar) {
        if (lVar == null) {
            this.hp = null;
        } else {
            this.hp = new WeakReference<>(lVar);
        }
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().initRenderFinish();
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().muteVideo(str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().renderDidFinish(str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().requestPauseVideo(str);
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<l> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.hp.get().skipVideo();
    }
}
