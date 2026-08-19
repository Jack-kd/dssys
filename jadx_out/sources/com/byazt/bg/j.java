package com.byazt.bg;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

@com.byazt.kj.hp(hp = {0, 1, 1230, 38})
/* loaded from: classes2.dex */
public class j implements Result {
    public String hp;

    public j(String str) {
        this.hp = str;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public int code() {
        return 0;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public boolean isSuccess() {
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public String message() {
        return this.hp;
    }

    @Override // com.bykv.vk.openvk.api.proto.Result
    public ValueSet values() {
        return null;
    }
}
