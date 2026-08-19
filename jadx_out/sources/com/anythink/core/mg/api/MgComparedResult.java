package com.anythink.core.mg.api;

import com.anythink.core.common.h.by;
import com.anythink.core.common.v.o;

/* loaded from: classes2.dex */
public class MgComparedResult {
    private long cpCostTime;
    private double cpPrice;
    private boolean isCompared;
    private boolean isCpTimeout;
    private final boolean isMgWin;
    private final MgAdInfo mgAdInfo;

    private MgComparedResult(boolean z2) {
        this(z2, null);
    }

    public static MgComparedResult create() {
        return create(null, null, 0L, false);
    }

    public long getCpCostTime() {
        return this.cpCostTime;
    }

    public double getCpPrice() {
        return this.cpPrice;
    }

    public MgAdInfo getMgAdInfo() {
        return this.mgAdInfo;
    }

    public boolean isCompared() {
        return this.isCompared;
    }

    public boolean isCpTimeout() {
        return this.isCpTimeout;
    }

    public boolean isMgWin() {
        return this.isMgWin;
    }

    public String toString() {
        return "MgComparedResult{isMgWin=" + this.isMgWin + ", mgAdInfo=" + this.mgAdInfo + ", cpCostTime=" + this.cpCostTime + '}';
    }

    private MgComparedResult(boolean z2, MgAdInfo mgAdInfo) {
        this.isMgWin = z2;
        this.mgAdInfo = mgAdInfo;
    }

    public static MgComparedResult create(by byVar, MgAdInfo mgAdInfo, long j2, boolean z2) {
        try {
            double dA = o.a(byVar);
            boolean z3 = (mgAdInfo != null ? mgAdInfo.getUSDEcpm() : 0.0d) > dA;
            if (byVar != null && byVar.bz()) {
                z3 = false;
            }
            MgComparedResult mgComparedResult = new MgComparedResult(z3, mgAdInfo);
            mgComparedResult.isCompared = MgAdInfo.isMgAdInfoValid(mgAdInfo);
            mgComparedResult.cpCostTime = j2;
            mgComparedResult.isCpTimeout = z2;
            mgComparedResult.cpPrice = dA;
            return mgComparedResult;
        } catch (Throwable unused) {
            return new MgComparedResult(false);
        }
    }
}
