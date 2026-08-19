package com.byazt.fy;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.jz.d;
import com.byazt.xci.mp;
import com.byazt.xci.xs;
import com.byazt.zn.ky;
import com.sigmob.sdk.base.n;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 60, 30})
/* loaded from: classes2.dex */
public class jx extends w implements com.byazt.gog.jx {
    public jx(Context context, mp mpVar, String str) {
        super(context, mpVar, str);
    }

    @Override // com.byazt.fy.hp
    public boolean gu() throws JSONException {
        if (this.jx.k() != null) {
            String strL = this.jx.k().l();
            if (TextUtils.isEmpty(strL)) {
                jl();
            } else {
                xs.hp((String) null);
                Uri uri = Uri.parse(strL);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                ky.jx(intent);
                HashMap map = new HashMap();
                map.put(n.f36449l, "AndroidRDMLicManager");
                map.put(NativeModel.JSON_KEY_SCHEME, ky.hp(strL));
                com.byazt.jdb.j.hp(this.jx, this.f20222j, map, this.zy);
                try {
                    Context context = getContext();
                    ky.hp(this.zy, this.jx, this.f20222j, eb());
                    com.byazt.ymw.l.startActivity(context, intent, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
                    com.byazt.jdb.j.hp(this.jx, this.f20222j, (Throwable) null, this.zy, true);
                    com.byazt.jdb.s.hp().hp(this.jx, this.f20222j, this.zy, eb(), null);
                    return true;
                } catch (Throwable th) {
                    com.byazt.jdb.j.jx(this.jx, this.f20222j, "open_fallback_download");
                    com.byazt.jdb.j.hp(this.jx, this.f20222j, th, this.zy, false);
                }
            }
        }
        return false;
    }
}
