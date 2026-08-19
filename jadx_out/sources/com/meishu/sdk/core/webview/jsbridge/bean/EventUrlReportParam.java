package com.meishu.sdk.core.webview.jsbridge.bean;

/* loaded from: classes4.dex */
public class EventUrlReportParam extends UUIDParam {
    private static final long serialVersionUID = 1;
    private int error_code;
    private String error_mesg;
    private int event_id;

    public int getError_code() {
        return this.error_code;
    }

    public String getError_mesg() {
        return this.error_mesg;
    }

    public int getEvent_id() {
        return this.event_id;
    }
}
