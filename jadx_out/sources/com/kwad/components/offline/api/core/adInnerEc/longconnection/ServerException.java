package com.kwad.components.offline.api.core.adInnerEc.longconnection;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public class ServerException extends Exception {
    private static final long serialVersionUID = 2951014432365816643L;
    public final int errorCode;
    public final String errorMessage;
    public final int subCode;

    public ServerException(int i2, int i3, String str) {
        this.errorCode = i2;
        this.subCode = i3;
        this.errorMessage = str;
    }
}
