package com.byazt.du;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xci.mp f19337l;

    public v(com.byazt.jz.ud udVar, com.byazt.xci.mp mpVar) {
        this.hp = new WeakReference<>(udVar);
        this.f19337l = mpVar;
    }

    private JSONObject jx() throws JSONException {
        com.byazt.jz.ud udVar;
        Context context;
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        WeakReference<com.byazt.jz.ud> weakReference = this.hp;
        if (weakReference == null || (udVar = weakReference.get()) == null || (context = udVar.getContext()) == null || !(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (decorView = window.getDecorView()) == null || Build.VERSION.SDK_INT < 28 || (rootWindowInsets = decorView.getRootWindowInsets()) == null) {
            return null;
        }
        DisplayCutout displayCutout = rootWindowInsets.getDisplayCutout();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("top", displayCutout.getSafeInsetTop());
            jSONObject.put("bottom", displayCutout.getSafeInsetBottom());
            jSONObject.put(ScrollClickView.DIR_LEFT, displayCutout.getSafeInsetLeft());
            jSONObject.put(ScrollClickView.DIR_RIGHT, displayCutout.getSafeInsetRight());
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar, com.byazt.jz.ud udVar) {
        xsVar.hp("getDeviceInfo", (com.byazt.oa.w<?, ?>) new v(udVar, mpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.putOpt("safeArea", jx());
        com.byazt.xci.mp mpVar = this.f19337l;
        if (mpVar != null) {
            jSONObject2.put("disableSafeArea", mpVar.ud());
        }
        return jSONObject2;
    }
}
