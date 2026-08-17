package com.beizi.fusion.asnp.adn.ad.model.impl.trace;

import com.beizi.fusion.qn;
import com.beizi.fusion.vb;

/* loaded from: classes2.dex */
public class InitTraceModel implements vb {
    private long mInitEndTs;
    private long mInitStartTs;
    private final String mStartID;

    public InitTraceModel() {
        this.mInitStartTs = -1L;
        this.mInitEndTs = -1L;
        this.mStartID = qn.d();
    }

    public long getInitEndTs() {
        return this.mInitEndTs;
    }

    public long getInitStartTs() {
        return this.mInitStartTs;
    }

    public long getRoundTripTime() {
        long j2 = this.mInitStartTs;
        if (j2 == -1) {
            return 0L;
        }
        long j3 = this.mInitEndTs;
        if (j3 != -1) {
            return j3 - j2;
        }
        return 0L;
    }

    public String getStartID() {
        return this.mStartID;
    }

    public void setInitEndTs(long j2) {
        this.mInitEndTs = j2;
    }

    public void setInitStartTs(long j2) {
        this.mInitStartTs = j2;
        this.mInitEndTs = -1L;
    }

    /* renamed from: deepCopy, reason: merged with bridge method [inline-methods] */
    public InitTraceModel m43deepCopy() {
        return new InitTraceModel(this);
    }

    private InitTraceModel(InitTraceModel initTraceModel) {
        this.mInitStartTs = -1L;
        this.mInitEndTs = -1L;
        this.mStartID = initTraceModel.mStartID;
        this.mInitStartTs = initTraceModel.getInitStartTs();
        this.mInitEndTs = initTraceModel.getInitEndTs();
    }
}
