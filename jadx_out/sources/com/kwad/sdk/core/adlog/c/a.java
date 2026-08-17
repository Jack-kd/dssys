package com.kwad.sdk.core.adlog.c;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.report.h;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.al;
import org.json.JSONObject;

@KsJson
/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.core.response.a.a {
    public String QY;
    public a.C0601a QZ;
    public long RD;
    public int aKI;
    public int aMA;
    public String aMB;
    public String aMC;
    public int aMD;
    public int aME;
    public long aMF;
    public long aMG;
    public int aMJ;
    public int aMK;
    public String aMM;
    public int aMO;
    public int aMP;
    public int aMQ;
    public int aMR;
    public String aMT;
    public JSONObject aMe;
    public int aMf;
    public int aMg;
    public int aMh;
    public int aMi;
    public String aMj;
    public String aMn;
    public String aMo;
    public String aMp;
    public int aMq;
    public int aMr;
    public int aMt;
    public String aMu;
    public int aMv;
    public int aMw;
    public String aMy;
    public int aMz;

    @NonNull
    public AdTemplate adTemplate;
    public int adnMaterialType;
    public String adnMaterialUrl;
    public String adnName;
    public int adnType;
    public int ads;
    public int downloadSource;
    public int nm;
    public al.a no;
    public double np;
    public long zV;
    public long aMk = -1;
    public int aMl = -1;
    public long aMm = -1;
    public int aMs = -1;
    public int Ra = 0;
    public String aMx = "";
    public int aMH = -1;
    public int aMI = -1;
    public int downloadStatus = 0;
    public int aML = -1;
    public int QX = -1;
    public int aMN = -1;
    public int adxResult = -1;
    public int Rb = -1;
    public int aMS = 0;

    public static a Jf() {
        return new a();
    }

    public final a.C0601a Jg() {
        return this.QZ;
    }

    public final void a(@Nullable h hVar) {
        if (hVar != null) {
            this.aMT = hVar.Nb();
        }
    }

    public final a aA(long j2) {
        this.zV = j2;
        return this;
    }

    public final a aB(long j2) {
        this.RD = j2;
        return this;
    }

    public final void cF(AdTemplate adTemplate) {
        AdMatrixInfo.MatrixTemplate matrixTemplateBB;
        if (com.kwad.sdk.core.h.a.Oy() && (matrixTemplateBB = e.bB(adTemplate)) != null) {
            String str = matrixTemplateBB.templateId;
            String strValueOf = String.valueOf(matrixTemplateBB.templateVersionCode);
            int i2 = matrixTemplateBB.publishType;
            if (this.QZ == null) {
                this.QZ = new a.C0601a();
            }
            a.C0601a c0601a = this.QZ;
            c0601a.tkPublishType = i2;
            c0601a.aLi = str;
            c0601a.aLj = strValueOf;
        }
    }

    public final void dV(int i2) {
        if (i2 == 0) {
            this.aMP = 1;
        } else if (i2 == 1) {
            this.aMP = 2;
        } else {
            if (i2 != 2) {
                return;
            }
            this.aMP = 3;
        }
    }

    public final a dW(int i2) {
        this.nm = i2;
        return this;
    }

    public final a dX(int i2) {
        this.Ra = i2;
        return this;
    }

    public final a dY(int i2) {
        this.Rb = i2;
        return this;
    }

    public final a dZ(int i2) {
        this.QX = i2;
        return this;
    }

    public final void e(AdTemplate adTemplate, String str, String str2) {
        a.C0601a c0601a = this.QZ;
        if (c0601a == null) {
            a.C0601a c0601a2 = new a.C0601a();
            this.QZ = c0601a2;
            c0601a2.a(adTemplate, null, null, null);
        } else if (c0601a.aLF == null) {
            c0601a.a(adTemplate, null, null, null);
        }
    }

    public final a ea(int i2) {
        this.ads = i2;
        return this;
    }

    public final a eb(String str) {
        this.QY = str;
        return this;
    }

    public final a a(a.C0601a c0601a) {
        this.QZ = c0601a;
        return this;
    }

    public final a eb(int i2) {
        this.aMz = i2;
        return this;
    }

    public final a e(al.a aVar) {
        this.no = aVar;
        return this;
    }
}
