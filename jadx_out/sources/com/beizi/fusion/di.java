package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.rule.TSensorModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.jn;
import com.beizi.fusion.lf;
import com.beizi.fusion.ze;
import com.sigmob.sdk.base.models.SigMacroCommon;

/* loaded from: classes2.dex */
public class di extends wa {

    /* renamed from: A, reason: collision with root package name */
    private String f13427A;

    /* renamed from: B, reason: collision with root package name */
    private String f13428B;

    /* renamed from: C, reason: collision with root package name */
    private String f13429C;

    /* renamed from: D, reason: collision with root package name */
    private String f13430D;

    /* renamed from: E, reason: collision with root package name */
    private String f13431E;

    /* renamed from: F, reason: collision with root package name */
    private String f13432F;

    /* renamed from: G, reason: collision with root package name */
    private String f13433G;

    /* renamed from: H, reason: collision with root package name */
    private String f13434H;

    /* renamed from: I, reason: collision with root package name */
    private String f13435I;

    /* renamed from: J, reason: collision with root package name */
    private String f13436J;

    /* renamed from: K, reason: collision with root package name */
    private String f13437K;

    /* renamed from: L, reason: collision with root package name */
    private String f13438L;

    /* renamed from: M, reason: collision with root package name */
    private String f13439M;

    /* renamed from: N, reason: collision with root package name */
    private String f13440N;

    /* renamed from: O, reason: collision with root package name */
    private String f13441O;

    /* renamed from: P, reason: collision with root package name */
    private String f13442P;

    /* renamed from: Q, reason: collision with root package name */
    private float f13443Q;

    /* renamed from: R, reason: collision with root package name */
    private float f13444R;

    /* renamed from: S, reason: collision with root package name */
    private float f13445S;

    /* renamed from: T, reason: collision with root package name */
    private float f13446T;

    /* renamed from: U, reason: collision with root package name */
    private float f13447U;

    /* renamed from: V, reason: collision with root package name */
    private float f13448V;

    /* renamed from: W, reason: collision with root package name */
    private String f13449W;

    /* renamed from: X, reason: collision with root package name */
    private String f13450X;

    /* renamed from: Y, reason: collision with root package name */
    private String f13451Y;

    /* renamed from: Z, reason: collision with root package name */
    private int f13452Z;

    /* renamed from: a, reason: collision with root package name */
    private final String f13453a = SigMacroCommon.DEFAULT_XY;

    /* renamed from: a0, reason: collision with root package name */
    private long f13454a0;

    /* renamed from: b, reason: collision with root package name */
    private final Context f13455b;

    /* renamed from: c, reason: collision with root package name */
    private int f13456c;

    /* renamed from: d, reason: collision with root package name */
    private final String f13457d;

    /* renamed from: e, reason: collision with root package name */
    private final String f13458e;

    /* renamed from: f, reason: collision with root package name */
    private final String f13459f;

    /* renamed from: g, reason: collision with root package name */
    private final String f13460g;

    /* renamed from: h, reason: collision with root package name */
    private String f13461h;

    /* renamed from: i, reason: collision with root package name */
    private String f13462i;

    /* renamed from: j, reason: collision with root package name */
    private String f13463j;

    /* renamed from: k, reason: collision with root package name */
    private String f13464k;

    /* renamed from: l, reason: collision with root package name */
    private String f13465l;

    /* renamed from: m, reason: collision with root package name */
    private String f13466m;

    /* renamed from: n, reason: collision with root package name */
    private String f13467n;

    /* renamed from: o, reason: collision with root package name */
    private String f13468o;

    /* renamed from: p, reason: collision with root package name */
    private String f13469p;

    /* renamed from: q, reason: collision with root package name */
    private String f13470q;

    /* renamed from: r, reason: collision with root package name */
    private String f13471r;

    /* renamed from: s, reason: collision with root package name */
    private String f13472s;

    /* renamed from: t, reason: collision with root package name */
    private String f13473t;

    /* renamed from: u, reason: collision with root package name */
    private String f13474u;

    /* renamed from: v, reason: collision with root package name */
    private String f13475v;

    /* renamed from: w, reason: collision with root package name */
    private String f13476w;

    /* renamed from: x, reason: collision with root package name */
    private String f13477x;

    /* renamed from: y, reason: collision with root package name */
    private String f13478y;

    /* renamed from: z, reason: collision with root package name */
    private String f13479z;

    public di(Context context, za zaVar, AdTraceModel adTraceModel) {
        this.f13455b = context.getApplicationContext();
        StringBuilder sb = new StringBuilder();
        sb.append(zaVar.getEventCode());
        String str = "";
        sb.append("");
        this.f13460g = sb.toString();
        this.f13457d = adTraceModel.getRequestTracSessionID();
        this.f13459f = System.currentTimeMillis() + "";
        this.f13456c = adTraceModel.getInteractiveType();
        this.f13458e = adTraceModel.getCacheRequestTraceSessionID();
        if (this.f13456c != -1) {
            str = this.f13456c + "";
        }
        this.f13461h = str;
        this.f13450X = adTraceModel.getVideoExtUserID();
        this.f13451Y = adTraceModel.getVideoExtCustomData();
        this.f13452Z = adTraceModel.getByCacheAd();
        this.f13454a0 = adTraceModel.getVideoDuration();
        lf.b viewRecorder = adTraceModel.getViewRecorder();
        if (viewRecorder != null) {
            g(viewRecorder);
            h(viewRecorder);
            f(viewRecorder);
            e(viewRecorder);
            a(viewRecorder);
            b(viewRecorder);
            c(viewRecorder);
            d(viewRecorder);
        }
        ze.c sensorRecord = adTraceModel.getSensorRecord();
        if (sensorRecord != null) {
            a(sensorRecord, adTraceModel.getTSensorModel());
            a(this.f13456c, adTraceModel.getTSensorModel());
        }
    }

    private void a(int i2, TSensorModel tSensorModel) {
        if (tSensorModel == null || tSensorModel.getSld() == null) {
            return;
        }
        if (i2 == fd.a.CLICK_INTERACTIVE_TRIGGER.getEventCode() || i2 == fd.a.OPTIMIZE_INTERACTIVE_TRIGGER.getEventCode() || i2 == fd.a.INVOKE_INTERACTIVE_TRIGGER.getEventCode() || i2 == fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13449W = tSensorModel.getSld().getClk();
            return;
        }
        if (i2 == fd.a.GESTURE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13449W = tSensorModel.getSld().getScroll();
            return;
        }
        if (i2 == fd.a.SHAKE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13449W = tSensorModel.getSld().getShake();
        } else if (i2 == fd.a.EULER_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13449W = tSensorModel.getSld().getTurn();
        } else {
            this.f13449W = tSensorModel.getSld().getOther();
        }
    }

    private void b(lf.b bVar) {
        float fE = bVar.e();
        float fB = bVar.b();
        if (this.f13456c != fd.a.CLICK_INTERACTIVE_TRIGGER.getEventCode() && this.f13456c != fd.a.GESTURE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13473t = SigMacroCommon.DEFAULT_XY;
            this.f13436J = SigMacroCommon.DEFAULT_XY;
            this.f13477x = SigMacroCommon.DEFAULT_XY;
            this.f13440N = SigMacroCommon.DEFAULT_XY;
            this.f13469p = SigMacroCommon.DEFAULT_XY;
            this.f13432F = SigMacroCommon.DEFAULT_XY;
            return;
        }
        this.f13473t = fE + "";
        this.f13436J = a(fE);
        this.f13477x = fE + "";
        this.f13440N = a(fE);
        this.f13469p = fB + "";
        this.f13432F = a(fB);
    }

    private void c(lf.b bVar) {
        float fI = bVar.i();
        float f2 = bVar.f();
        if (this.f13456c != fd.a.CLICK_INTERACTIVE_TRIGGER.getEventCode() && this.f13456c != fd.a.GESTURE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13474u = SigMacroCommon.DEFAULT_XY;
            this.f13437K = SigMacroCommon.DEFAULT_XY;
            this.f13478y = SigMacroCommon.DEFAULT_XY;
            this.f13441O = SigMacroCommon.DEFAULT_XY;
            this.f13470q = SigMacroCommon.DEFAULT_XY;
            this.f13433G = SigMacroCommon.DEFAULT_XY;
            return;
        }
        this.f13467n = bVar.h() + "";
        this.f13474u = fI + "";
        this.f13437K = a(fI);
        this.f13478y = fI + "";
        this.f13441O = a(fI);
        this.f13470q = f2 + "";
        this.f13433G = a(f2);
    }

    private void d(lf.b bVar) {
        float fJ = bVar.j();
        float fG = bVar.g();
        if (this.f13456c != fd.a.CLICK_INTERACTIVE_TRIGGER.getEventCode() && this.f13456c != fd.a.GESTURE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13475v = SigMacroCommon.DEFAULT_XY;
            this.f13438L = SigMacroCommon.DEFAULT_XY;
            this.f13479z = SigMacroCommon.DEFAULT_XY;
            this.f13442P = SigMacroCommon.DEFAULT_XY;
            this.f13471r = SigMacroCommon.DEFAULT_XY;
            this.f13434H = SigMacroCommon.DEFAULT_XY;
            return;
        }
        this.f13475v = fJ + "";
        this.f13438L = a(fJ);
        this.f13479z = fJ + "";
        this.f13442P = a(fJ);
        this.f13471r = fG + "";
        this.f13434H = a(fG);
    }

    private void e(lf.b bVar) {
        float fK = bVar.k();
        this.f13465l = fK + "";
        this.f13430D = a(fK);
    }

    private void f(lf.b bVar) {
        float fL = bVar.l();
        this.f13464k = fL + "";
        this.f13429C = a(fL);
    }

    private void g(lf.b bVar) {
        float fM = bVar.m();
        this.f13462i = fM + "";
        this.f13427A = a(fM);
    }

    private void h(lf.b bVar) {
        float fN = bVar.n();
        this.f13463j = fN + "";
        this.f13428B = a(fN);
    }

    private void a(ze.c cVar, TSensorModel tSensorModel) {
        if (tSensorModel != null) {
            if (tSensorModel.getType() == 1) {
                this.f13443Q = tSensorModel.getAglx();
                this.f13444R = tSensorModel.getAgly();
                this.f13445S = tSensorModel.getAglz();
                this.f13446T = tSensorModel.getAccx();
                this.f13447U = tSensorModel.getAccy();
                this.f13448V = tSensorModel.getAccz();
            }
            if (tSensorModel.getType() != 2 || cVar == null) {
                return;
            }
            ze.b bVarA = cVar.a(1);
            if (bVarA != null) {
                this.f13446T = bVarA.f17873a > ((float) tSensorModel.getAccx()) ? bVarA.f17873a : ql.a(tSensorModel.getAccx());
                this.f13447U = bVarA.f17874b > ((float) tSensorModel.getAccy()) ? bVarA.f17874b : ql.a(tSensorModel.getAccy());
                this.f13448V = bVarA.f17875c > ((float) tSensorModel.getAccz()) ? bVarA.f17875c : ql.a(tSensorModel.getAccz());
            }
            ze.b bVarA2 = cVar.a(4);
            if (bVarA2 != null) {
                this.f13443Q = bVarA2.f17873a > ((float) tSensorModel.getAglx()) ? bVarA2.f17873a : ql.a(tSensorModel.getAglx());
                this.f13444R = bVarA2.f17874b > ((float) tSensorModel.getAgly()) ? bVarA2.f17874b : ql.a(tSensorModel.getAgly());
                this.f13445S = bVarA2.f17875c > ((float) tSensorModel.getAglz()) ? bVarA2.f17875c : ql.a(tSensorModel.getAglz());
            }
        }
    }

    private void a(lf.b bVar) {
        float fD = bVar.d();
        float fA = bVar.a();
        if (this.f13456c != fd.a.CLICK_INTERACTIVE_TRIGGER.getEventCode() && this.f13456c != fd.a.GESTURE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13472s = SigMacroCommon.DEFAULT_XY;
            this.f13435I = SigMacroCommon.DEFAULT_XY;
            this.f13476w = SigMacroCommon.DEFAULT_XY;
            this.f13439M = SigMacroCommon.DEFAULT_XY;
            this.f13468o = SigMacroCommon.DEFAULT_XY;
            this.f13431E = SigMacroCommon.DEFAULT_XY;
            return;
        }
        this.f13466m = bVar.c() + "";
        this.f13472s = fD + "";
        this.f13435I = a(fD);
        this.f13476w = fD + "";
        this.f13439M = a(fD);
        this.f13468o = fA + "";
        this.f13431E = a(fA);
    }

    private String a(float f2) {
        return jn.a.b(this.f13455b, f2) + "";
    }
}
