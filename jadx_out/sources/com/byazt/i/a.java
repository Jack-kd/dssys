package com.byazt.i;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.b.ec;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 54})
/* loaded from: classes.dex */
public class a {
    public final AtomicInteger hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public static a hp = new a();
    }

    private a() {
        this.hp = new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String l() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.hp.get() < 3 ? "https://apps.bytesfield.com" : "https://apps.bytesfield-b.com");
        sb.append("/customer/api/app/deep_link");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@NonNull final com.byazt.w.w wVar, final String str, final byte[] bArr, final s sVar) {
        jl.j().hp(str, bArr, "application/json; charset=utf-8", 0, new ec() { // from class: com.byazt.i.a.2
            @Override // com.byazt.b.ec
            public void hp(String str2) throws JSONException {
                a.this.hp(wVar, str2, sVar);
            }

            @Override // com.byazt.b.ec
            public void hp(Throwable th) throws JSONException {
                a.this.hp(wVar, str, bArr, sVar);
            }
        });
    }

    public static a hp() {
        return hp.hp;
    }

    public void hp(final com.byazt.w.w wVar, final s sVar) {
        if (jl.j() == null) {
            com.byazt.u.jx.hp().hp("getDownloadNetworkFactory == NULL");
            hp(401, wVar);
        } else {
            com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.i.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    aVar.l(wVar, aVar.l(), a.this.hp(wVar, true, 4), sVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.w.w wVar, String str, byte[] bArr, s sVar) throws JSONException {
        if (this.hp.get() < 6) {
            this.hp.incrementAndGet();
            l(wVar, str, bArr, sVar);
        } else {
            hp("当前网络不佳，请稍后再试");
            this.hp.set(0);
            hp(402, wVar);
        }
    }

    private void hp(final String str) {
        com.byazt.l.s.hp().l().post(new Runnable() { // from class: com.byazt.i.a.3
            @Override // java.lang.Runnable
            public void run() {
                jl.jx().hp(6, jl.getContext(), null, str, null, 0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] hp(com.byazt.w.w wVar, boolean z2, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("download_url", wVar.hp());
            jSONObject.put("package_name", wVar.w());
            jSONObject.put("call_scene", 50);
            if (z2) {
                jSONObject.put("sender_package_name", jl.getContext().getPackageName());
                jSONObject.put("sender_version", jl.e().f26504w);
                if (i2 > 0) {
                    jSONObject.put("store", i2);
                }
            } else {
                jSONObject.put("id", String.valueOf(wVar.l()));
                if (wVar.n().getDeepLink() != null) {
                    if (TextUtils.isEmpty(wVar.n().getDeepLink().getWebUrl())) {
                        com.byazt.u.jx.hp().hp("web_url is null");
                    }
                    jSONObject.put("web_url", wVar.n().getDeepLink().getWebUrl());
                } else {
                    com.byazt.u.jx.hp().hp("deeplink is null");
                }
            }
        } catch (Exception unused) {
            com.byazt.u.jx.hp().hp("param build error");
        }
        return jSONObject.toString().getBytes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(@NonNull com.byazt.w.w wVar, String str, s sVar) throws JSONException {
        try {
            if (TextUtils.isEmpty(str)) {
                com.byazt.u.jx.hp().hp("response content is null");
                hp(404, wVar);
                sVar.hp();
                return;
            }
            this.hp.set(0);
            w wVarEb = w.eb(str);
            if (wVarEb.hp() != 0) {
                hp(403, wVar);
                sVar.hp();
            } else if (TextUtils.isEmpty(wVarEb.l())) {
                hp(405, wVar);
                sVar.hp();
            } else {
                sVar.hp(wVarEb.l());
            }
        } catch (Exception e2) {
            com.byazt.u.jx.hp().hp(e2, "DownloadMiuiMarketHelper parseResponse");
        }
    }

    public void hp(int i2, com.byazt.w.w wVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_miui_market_fail_code", Integer.valueOf(i2));
        } catch (Exception unused) {
        }
        com.byazt.r.hp.hp().hp("get_miui_market_compliance_error", jSONObject, wVar);
    }

    public void hp(int i2, com.byazt.w.w wVar, JSONObject jSONObject) {
        try {
            jSONObject.putOpt("download_miui_market_success_result", Integer.valueOf(i2));
        } catch (Exception unused) {
        }
        com.byazt.r.hp.hp().hp("get_miui_market_compliance_success", jSONObject, wVar);
    }
}
