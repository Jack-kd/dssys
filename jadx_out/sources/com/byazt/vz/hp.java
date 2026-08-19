package com.byazt.vz;

import android.webkit.JavascriptInterface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public final Object hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f26842l;

    public hp(Object obj, String str) {
        this.hp = obj;
        this.f26842l = str;
    }

    @JavascriptInterface
    public void adAnalysisData(String str) throws NoSuchMethodException, SecurityException {
        hp("adAnalysisData", str);
    }

    @JavascriptInterface
    public String adInfo() throws NoSuchMethodException, SecurityException {
        Object objHp = hp("adInfo", new Object[0]);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public String appInfo() throws NoSuchMethodException, SecurityException {
        Object objHp = hp("appInfo", new Object[0]);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public void changeVideoState(String str) throws NoSuchMethodException, SecurityException {
        hp("changeVideoState", str);
    }

    @JavascriptInterface
    public void clickEvent(String str) throws NoSuchMethodException, SecurityException {
        hp("clickEvent", str);
    }

    @JavascriptInterface
    public void dynamicTrack(String str) throws NoSuchMethodException, SecurityException {
        hp("dynamicTrack", str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() throws NoSuchMethodException, SecurityException {
        Object objHp = hp("getCurrentVideoState", new Object[0]);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public String getData(String str) throws NoSuchMethodException, SecurityException {
        Object objHp = hp("getData", str);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public int getNetOperatorType() throws NoSuchMethodException, SecurityException {
        Object objHp = hp("getNetOperatorType", new Object[0]);
        if (objHp instanceof Integer) {
            return ((Integer) objHp).intValue();
        }
        return -3;
    }

    @JavascriptInterface
    public String getTemplateInfo() throws NoSuchMethodException, SecurityException {
        Object objHp = hp("getTemplateInfo", new Object[0]);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public void getUrl(String str) throws NoSuchMethodException, SecurityException {
        hp("getUrl", str);
    }

    public Object hp() {
        return this.hp;
    }

    @JavascriptInterface
    public void initRenderFinish() throws NoSuchMethodException, SecurityException {
        hp("initRenderFinish", new Object[0]);
    }

    @JavascriptInterface
    public Object invokeMethod(String str) {
        return hp("invokeMethod", str);
    }

    public String l() {
        return this.f26842l;
    }

    @JavascriptInterface
    public void muteVideo(String str) throws NoSuchMethodException, SecurityException {
        hp("muteVideo", str);
    }

    @JavascriptInterface
    public void readHtml(String str, String str2) throws NoSuchMethodException, SecurityException {
        hp("readHtml", str, str2);
    }

    @JavascriptInterface
    public void readPercent(String str) throws NoSuchMethodException, SecurityException {
        hp("readPercent", str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) throws NoSuchMethodException, SecurityException {
        hp("renderDidFinish", str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) throws NoSuchMethodException, SecurityException {
        hp("requestPauseVideo", str);
    }

    @JavascriptInterface
    public String sendNetworkSwitch(String str) throws NoSuchMethodException, SecurityException {
        Object objHp = hp("sendNetworkSwitch", str);
        return objHp != null ? objHp.toString() : "";
    }

    @JavascriptInterface
    public void skipVideo() throws NoSuchMethodException, SecurityException {
        hp("skipVideo", new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023 A[Catch: Exception -> 0x0038, TryCatch #0 {Exception -> 0x0038, blocks: (B:4:0x0003, B:6:0x0006, B:7:0x000a, B:9:0x000d, B:10:0x0018, B:12:0x002d, B:11:0x0023), top: B:15:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object hp(java.lang.String r5, java.lang.Object... r6) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            r4 = this;
            r0 = 0
            if (r6 == 0) goto L23
            int r1 = r6.length     // Catch: java.lang.Exception -> L38
            if (r1 <= 0) goto L23
            int r1 = r6.length     // Catch: java.lang.Exception -> L38
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L38
            r2 = 0
        La:
            int r3 = r6.length     // Catch: java.lang.Exception -> L38
            if (r2 >= r3) goto L18
            r3 = r6[r2]     // Catch: java.lang.Exception -> L38
            java.lang.Class r3 = r3.getClass()     // Catch: java.lang.Exception -> L38
            r1[r2] = r3     // Catch: java.lang.Exception -> L38
            int r2 = r2 + 1
            goto La
        L18:
            java.lang.Object r2 = r4.hp     // Catch: java.lang.Exception -> L38
            java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Exception -> L38
            java.lang.reflect.Method r5 = r2.getDeclaredMethod(r5, r1)     // Catch: java.lang.Exception -> L38
            goto L2d
        L23:
            java.lang.Object r1 = r4.hp     // Catch: java.lang.Exception -> L38
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Exception -> L38
            java.lang.reflect.Method r5 = r1.getDeclaredMethod(r5, r0)     // Catch: java.lang.Exception -> L38
        L2d:
            r1 = 1
            r5.setAccessible(r1)     // Catch: java.lang.Exception -> L38
            java.lang.Object r1 = r4.hp     // Catch: java.lang.Exception -> L38
            java.lang.Object r5 = r5.invoke(r1, r6)     // Catch: java.lang.Exception -> L38
            return r5
        L38:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vz.hp.hp(java.lang.String, java.lang.Object[]):java.lang.Object");
    }
}
