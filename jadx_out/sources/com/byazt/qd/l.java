package com.byazt.qd;

import android.app.Activity;
import android.content.Context;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.b.n;
import com.byazt.b.q;

@com.byazt.kj.hp(hp = {0, 1, 1524, 34})
/* loaded from: classes3.dex */
public class l implements q {
    public n hp;

    @Override // com.byazt.b.q
    public void hp(@NonNull Activity activity, @NonNull String[] strArr, n nVar) {
        this.hp = nVar;
        activity.requestPermissions(strArr, 1);
    }

    @Override // com.byazt.b.q
    public boolean hp(@Nullable Context context, @NonNull String str) {
        return (context == null || str == null || context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) ? false : true;
    }

    @Override // com.byazt.b.q
    public void hp(@NonNull Activity activity, int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        n nVar;
        if (iArr.length <= 0 || (nVar = this.hp) == null) {
            return;
        }
        int i3 = iArr[0];
        if (i3 == -1) {
            nVar.hp(strArr[0]);
        } else if (i3 == 0) {
            nVar.hp();
        }
    }
}
