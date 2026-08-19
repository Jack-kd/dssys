package org.fourthline.cling.controlpoint.event;

import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;

/* loaded from: classes5.dex */
public class Search {
    protected int mxSeconds;
    protected UpnpHeader searchType;

    public Search() {
        this.searchType = new STAllHeader();
        this.mxSeconds = MXHeader.DEFAULT_VALUE.intValue();
    }

    public int getMxSeconds() {
        return this.mxSeconds;
    }

    public UpnpHeader getSearchType() {
        return this.searchType;
    }

    public Search(UpnpHeader upnpHeader) {
        this.searchType = new STAllHeader();
        this.mxSeconds = MXHeader.DEFAULT_VALUE.intValue();
        this.searchType = upnpHeader;
    }

    public Search(UpnpHeader upnpHeader, int i2) {
        this.searchType = new STAllHeader();
        MXHeader.DEFAULT_VALUE.intValue();
        this.searchType = upnpHeader;
        this.mxSeconds = i2;
    }

    public Search(int i2) {
        this.searchType = new STAllHeader();
        MXHeader.DEFAULT_VALUE.intValue();
        this.mxSeconds = i2;
    }
}
