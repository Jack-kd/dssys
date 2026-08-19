package com.byazt.fj;

import android.graphics.Path;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 34})
/* loaded from: classes2.dex */
public class l {
    public final List<n> hp = new ArrayList();

    public void hp(n nVar) {
        this.hp.add(nVar);
    }

    public void hp(Path path) {
        for (int size = this.hp.size() - 1; size >= 0; size--) {
            com.byazt.ze.e.hp(path, this.hp.get(size));
        }
    }
}
