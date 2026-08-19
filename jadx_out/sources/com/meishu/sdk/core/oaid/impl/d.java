package com.meishu.sdk.core.oaid.impl;

import com.meishu.sdk.core.oaid.OAIDException;

/* loaded from: classes4.dex */
public class d implements com.meishu.sdk.core.oaid.b {
    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        return false;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (aVar == null) {
            return;
        }
        ((com.meishu.sdk.core.utils.l) aVar).a(new OAIDException("Unsupported"));
    }
}
