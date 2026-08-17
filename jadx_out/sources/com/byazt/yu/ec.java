package com.byazt.yu;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.NoSuchAlgorithmException;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28286w;

    public ec(Context context) {
        super(true, false);
        this.f28286w = context;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException, NoSuchAlgorithmException {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        Signature signature;
        String strL = null;
        try {
            packageInfo = this.f28286w.getPackageManager().getPackageInfo(this.f28286w.getPackageName(), 64);
        } catch (Throwable th) {
            com.byazt.gt.e.l(th);
            packageInfo = null;
        }
        if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
            strL = com.byazt.gt.jx.l(signature.toByteArray());
        }
        if (strL == null) {
            return true;
        }
        jSONObject.put("sig_hash", strL);
        return true;
    }
}
