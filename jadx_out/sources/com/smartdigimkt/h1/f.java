package com.smartdigimkt.h1;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

/* loaded from: classes5.dex */
public final class f implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40429a;

    public f(i iVar) {
        this.f40429a = iVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        i iVar = this.f40429a;
        if (TextUtils.isEmpty(iVar.f40449r) && TextUtils.isEmpty(iVar.f40437f.getText().toString())) {
            iVar.f40439h.setEnabled(false);
        } else {
            iVar.f40439h.setEnabled(true);
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
