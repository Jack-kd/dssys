package com.byazt.owd;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.SparseArray;
import com.byazt.jz.AdSdkInitializerHolder;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.jz.wv;
import com.byazt.zn.nu;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1061, 19})
/* loaded from: classes3.dex */
public class jl implements Function<SparseArray<Object>, Object> {
    public com.byazt.lz.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public j f24228j;
    public final com.byazt.jz.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.hde.jx f24229l;

    /* renamed from: w, reason: collision with root package name */
    public Bundle f24230w;

    public jl(Bundle bundle, com.byazt.jz.jx jxVar) {
        this.jx = jxVar;
        this.f24230w = bundle;
    }

    public boolean isInitSuccess() {
        com.byazt.lz.hp hpVar = this.hp;
        if (hpVar != null && hpVar.hp()) {
            com.byazt.jz.jx jxVar = this.jx;
            return jxVar != null && this.f24228j != null && jxVar.isInitSuccess() && this.f24228j.hp();
        }
        com.byazt.jz.jx jxVar2 = this.jx;
        if (jxVar2 != null) {
            return jxVar2.isInitSuccess();
        }
        return false;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        switch (pluginValueSetL.intValue(-99999987)) {
            case -999002:
                return Boolean.valueOf(isInitSuccess());
            case -999001:
                try {
                    com.byazt.lz.hp hpVarHp = com.byazt.lz.hp.hp(pluginValueSetL);
                    this.hp = hpVarHp;
                    if (hpVarHp.j()) {
                        com.byazt.aw.l.hp();
                        com.byazt.oyr.hp.hp();
                    }
                    if (this.hp.jl() && !AdSdkInitializerHolder.isSdkInitSuccess()) {
                        nu.hp();
                    }
                    com.byazt.jz.s.u().jx(pluginValueSetL.stringValue(261001));
                    hp(pluginValueSetL);
                    Context context = (Context) pluginValueSetL.objectValue(-998000, Context.class);
                    sz.hp(context);
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long jLongValue = pluginValueSetL.longValue(25, 0L);
                    a.f24204w = jLongValue;
                    if (jLongValue == 0) {
                        a.f24204w = jElapsedRealtime;
                    }
                    long jLongValue2 = pluginValueSetL.longValue(24, 0L);
                    a.f24199a = jLongValue2;
                    if (jLongValue2 == 0) {
                        a.f24199a = jElapsedRealtime;
                    }
                    long jLongValue3 = pluginValueSetL.longValue(1, 0L);
                    a.eb = jLongValue3;
                    if (jLongValue3 == 0) {
                        a.eb = jElapsedRealtime;
                    }
                    long jLongValue4 = pluginValueSetL.longValue(27, 0L);
                    a.f24203s = jLongValue4;
                    if (jLongValue4 <= 0) {
                        a.f24203s = a.eb;
                    }
                    boolean zSh = sz.l().sh();
                    if (!this.hp.hp() && !zSh) {
                        this.jx.apply(sparseArray);
                        break;
                    } else {
                        com.byazt.ky.hp.hp().l();
                        com.byazt.jz.s.u().a(zSh);
                        com.byazt.jz.s.u().eb(true);
                        hp(context, pluginValueSetL);
                        break;
                    }
                } catch (Throwable th) {
                    com.byazt.lz.hp hpVar = this.hp;
                    if (hpVar != null) {
                        new com.byazt.hde.jx(hpVar.jx()).hp(0, com.byazt.wi.w.hp().hp(false).hp(TTAdConstant.INIT_LOCAL_FAIL_CODE).hp(th.getMessage() != null ? th.getMessage() : "init error").l());
                        break;
                    }
                }
                break;
            case -999000:
                if (this.jx != null) {
                    com.byazt.aw.l.l("TMe", "getManager mediation");
                    wv manager = this.jx.getManager();
                    if (manager != null) {
                        return new gu(manager);
                    }
                }
                break;
        }
        return com.byazt.xi.hp.f27665l.apply(sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, com.byazt.lz.hp hpVar, com.byazt.hde.jx jxVar, long j2, long j3, JSONObject jSONObject) throws JSONException {
        a.hp(jSONObject, "s-init_gm");
        j jVar = new j();
        this.f24228j = jVar;
        jVar.hp(context, hpVar, jxVar, j2, this.jx, j3, jSONObject);
    }

    private void hp(final Context context, final PluginValueSet pluginValueSet) throws JSONException, ClassNotFoundException {
        final JSONObject jSONObject = new JSONObject();
        com.byazt.hde.jx jxVar = new com.byazt.hde.jx(this.hp.jx());
        this.f24229l = jxVar;
        jxVar.hp(new com.byazt.hde.l() { // from class: com.byazt.owd.jl.1
            /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
            /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
            @Override // com.byazt.hde.l
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void hp(boolean r9) {
                /*
                    r8 = this;
                    long r4 = android.os.SystemClock.elapsedRealtime()
                    r0 = 0
                    com.bykv.vk.openvk.api.proto.PluginValueSet r2 = r2     // Catch: java.lang.Exception -> L21
                    long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Exception -> L21
                    r3 = 1
                    long r2 = r2.longValue(r3, r6)     // Catch: java.lang.Exception -> L21
                    int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                    if (r0 == 0) goto L22
                    long r0 = r4 - r2
                    com.byazt.owd.a.hp = r0     // Catch: java.lang.Exception -> L20
                    long r0 = com.byazt.owd.a.f24203s     // Catch: java.lang.Exception -> L20
                    long r0 = r4 - r0
                    com.byazt.owd.a.jx = r0     // Catch: java.lang.Exception -> L20
                    goto L22
                L20:
                    r0 = r2
                L21:
                    r2 = r0
                L22:
                    if (r9 == 0) goto L2d
                    com.byazt.owd.jl$1$1 r0 = new com.byazt.owd.jl$1$1
                    r1 = r8
                    r0.<init>()
                    com.byazt.ami.w.hp(r0)
                L2d:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.owd.jl.AnonymousClass1.hp(boolean):void");
            }
        });
        if (this.jx != null) {
            com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(pluginValueSet, jSONObject);
            this.jx.init(context, pluginValueSet, this.f24229l);
        } else {
            this.f24229l.hp(0, com.byazt.wi.w.hp().hp(false).hp(MediationConstant.ErrorCode.ADN_INIT_FAIL).hp("init error Initializer is null").l());
        }
    }

    private void hp(@ForbidWrapParam PluginValueSet pluginValueSet) {
        try {
            Boolean bool = (Boolean) pluginValueSet.objectValue(14, Boolean.class);
            if (bool != null) {
                d.jx = bool.booleanValue();
            }
        } catch (Exception unused) {
        }
    }
}
