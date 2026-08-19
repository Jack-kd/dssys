package com.byazt.jf;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.jdb.j;
import com.byazt.jdb.s;
import com.byazt.jz.d;
import com.byazt.jz.vv;
import com.byazt.rj.jx;
import com.byazt.ymw.l;
import com.byazt.yrp.q;
import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.base.n;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 837, 28})
/* loaded from: classes.dex */
public class hp {
    public String hp = "";

    public hp hp(String str) {
        this.hp = str;
        return this;
    }

    public void hp(final Context context, final Map<String, Object> map, final q qVar) {
        if (qVar == null || qVar.k() == null) {
            return;
        }
        final String strL = qVar.k().l();
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        vv.a().postDelayed(new Runnable() { // from class: com.byazt.jf.hp.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(strL));
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    HashMap map2 = new HashMap();
                    map2.put(n.f36449l, "LiveDoubleOpenProcessor");
                    map2.put(NativeModel.JSON_KEY_SCHEME, strL);
                    j.hp(jx.hp(qVar, (Map<String, Object>) map), hp.this.hp, (Map<String, Object>) map2, false);
                    com.byazt.ymw.l.hp(context, intent, new l.hp() { // from class: com.byazt.jf.hp.1.1
                        @Override // com.byazt.ymw.l.hp
                        public void hp() throws JSONException {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            j.hp(jx.hp(qVar, (Map<String, Object>) map), hp.this.hp, (Throwable) null, false, true);
                            s sVarHp = s.hp();
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            sVarHp.hp(jx.hp(qVar, (Map<String, Object>) map), hp.this.hp, false, false, null);
                        }

                        @Override // com.byazt.ymw.l.hp
                        public void hp(Throwable th) throws JSONException {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            j.hp(jx.hp(qVar, (Map<String, Object>) map), hp.this.hp, th, false, false);
                        }
                    }, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
                } catch (Throwable unused) {
                }
            }
        }, 50L);
    }
}
