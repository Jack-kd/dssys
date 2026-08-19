package com.beizi.fusion.asnp.common.analyse.model;

import com.beizi.fusion.vb;
import com.beizi.fusion.wa;

/* loaded from: classes2.dex */
public abstract class IBaseEventReportModel extends wa implements vb {
    protected final IStringEventEnum event;

    public IBaseEventReportModel(IStringEventEnum iStringEventEnum) {
        this.event = iStringEventEnum;
    }

    public abstract /* synthetic */ vb deepCopy();

    public String getEventCode() {
        IStringEventEnum iStringEventEnum = this.event;
        return iStringEventEnum != null ? iStringEventEnum.getEventCode() : "";
    }
}
