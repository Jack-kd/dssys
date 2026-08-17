package com.kwad.sdk.core.network;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class c {
    public int aSW = -1;
    public Exception aSX;
    public String aSY;
    public int code;

    public final boolean Mf() {
        return this.code == 200;
    }

    @NonNull
    public final String toString() {
        return "BaseResponse{code=" + this.code + ", rawCode=" + this.aSW + ", rawException=" + this.aSX + ", body='" + this.aSY + "'}";
    }
}
