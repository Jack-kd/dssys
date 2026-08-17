package com.sigmob.sdk.base.mta;

/* loaded from: classes4.dex */
public final class PointEntitySigmobError extends PointEntitySigmob {

    /* renamed from: a, reason: collision with root package name */
    private String f36402a;

    public static PointEntitySigmobError SigmobError(String str, int i2, String str2) {
        PointEntitySigmobError pointEntitySigmobError = new PointEntitySigmobError();
        pointEntitySigmobError.setAc_type("9");
        pointEntitySigmobError.setCategory(str);
        pointEntitySigmobError.setError_code(String.valueOf(i2));
        pointEntitySigmobError.setError_message(str2);
        return pointEntitySigmobError;
    }

    @Override // com.sigmob.sdk.base.mta.PointEntitySigmob
    public String getError_message() {
        return this.f36402a;
    }

    @Override // com.sigmob.sdk.base.mta.PointEntitySigmob
    public void setError_message(String str) {
        this.f36402a = str;
    }
}
