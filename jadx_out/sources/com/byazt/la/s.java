package com.byazt.la;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.byazt.ay.jx;
import com.byazt.gg.a;
import com.byazt.ql.k;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements vv {
    public Context hp;
    public jx.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xs.jx<View> f22407l;

    public s(Context context) {
        this.hp = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.dy.eb ebVar) throws JSONException {
        v vVar = new v(this.hp);
        k kVar = new k();
        kVar.hp(this.hp);
        vVar.hp("ugen_download_dialog", kVar);
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(jSONObject);
        this.f22407l = jxVarHp;
        if (jxVarHp != null) {
            vVar.hp(this);
            vVar.l(jSONObject2);
        }
        if (ebVar == null) {
            return;
        }
        com.byazt.xs.jx<View> jxVar = this.f22407l;
        if (jxVar == null) {
            ebVar.hp(-1, "UGenWidget is null");
        } else {
            ebVar.hp(jxVar);
        }
    }

    @Override // com.byazt.ql.vv
    public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
    }

    public void hp(jx.hp hpVar) {
        this.jx = hpVar;
    }

    public void hp(final JSONObject jSONObject, final JSONObject jSONObject2, final com.byazt.dy.eb ebVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(jSONObject, jSONObject2, ebVar);
        } else {
            com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.la.s.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    s.this.l(jSONObject, jSONObject2, ebVar);
                }
            });
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    @Override // com.byazt.ql.vv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.ql.u r2, com.byazt.ql.vv.l r3, com.byazt.ql.vv.hp r4) {
        /*
            r1 = this;
            if (r2 == 0) goto L80
            com.byazt.ay.jx$hp r3 = r1.jx
            if (r3 != 0) goto L8
            goto L80
        L8:
            int r3 = r2.l()
            r4 = 1
            if (r3 != r4) goto L80
            org.json.JSONObject r2 = r2.jx()
            if (r2 != 0) goto L17
            goto L80
        L17:
            java.lang.String r3 = "type"
            java.lang.String r2 = r2.optString(r3)
            r2.getClass()
            int r3 = r2.hashCode()
            r0 = -1
            switch(r3) {
                case -1822902106: goto L54;
                case -459025504: goto L4b;
                case -267096736: goto L40;
                case 7917298: goto L35;
                case 1237425033: goto L2a;
                default: goto L28;
            }
        L28:
            r4 = r0
            goto L5e
        L2a:
            java.lang.String r3 = "openAppPolicy"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L33
            goto L28
        L33:
            r4 = 4
            goto L5e
        L35:
            java.lang.String r3 = "downloadEvent"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L3e
            goto L28
        L3e:
            r4 = 3
            goto L5e
        L40:
            java.lang.String r3 = "closeDialog"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L49
            goto L28
        L49:
            r4 = 2
            goto L5e
        L4b:
            java.lang.String r3 = "openAppFunctionDesc"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5e
            goto L28
        L54:
            java.lang.String r3 = "openAppPermission"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5d
            goto L28
        L5d:
            r4 = 0
        L5e:
            r2 = 0
            switch(r4) {
                case 0: goto L7b;
                case 1: goto L75;
                case 2: goto L6f;
                case 3: goto L69;
                case 4: goto L63;
                default: goto L62;
            }
        L62:
            goto L80
        L63:
            com.byazt.ay.jx$hp r3 = r1.jx
            r3.j(r2)
            return
        L69:
            com.byazt.ay.jx$hp r3 = r1.jx
            r3.hp(r2)
            return
        L6f:
            com.byazt.ay.jx$hp r3 = r1.jx
            r3.jx(r2)
            return
        L75:
            com.byazt.ay.jx$hp r3 = r1.jx
            r3.w(r2)
            return
        L7b:
            com.byazt.ay.jx$hp r3 = r1.jx
            r3.l(r2)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.la.s.hp(com.byazt.ql.u, com.byazt.ql.vv$l, com.byazt.ql.vv$hp):void");
    }
}
