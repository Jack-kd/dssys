package com.byazt.im;

import android.util.SparseArray;
import com.byazt.gpb.jx;
import com.byazt.wi.j;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1907, 28})
/* loaded from: classes.dex */
public class hp {
    public static jx hp(final Function<SparseArray<Object>, Object> function) {
        if (function != null) {
            return new jx() { // from class: com.byazt.im.hp.1
                @Override // com.byazt.qjq.w
                public void hp(long j2) {
                    function.apply(j.hp().hp(8166).hp(Void.class).hp(8074, Long.valueOf(j2)).l());
                }

                @Override // com.byazt.qjq.w
                public void jx(long j2) {
                    function.apply(j.hp().hp(8169).hp(Void.class).hp(8074, Long.valueOf(j2)).l());
                }

                @Override // com.byazt.qjq.w
                public void l(long j2) {
                    function.apply(j.hp().hp(8167).hp(Void.class).hp(8074, Long.valueOf(j2)).l());
                }

                @Override // com.byazt.qjq.w
                public void hp() {
                    function.apply(j.hp().hp(8168).hp(Void.class).l());
                }

                @Override // com.byazt.qjq.w
                public void l() {
                    function.apply(j.hp().hp(8170).hp(Void.class).l());
                }

                @Override // com.byazt.qjq.w
                public void hp(int i2, int i3) {
                    function.apply(j.hp().hp(8171).hp(Void.class).hp(8014, Integer.valueOf(i2)).hp(8075, Integer.valueOf(i3)).l());
                }

                @Override // com.byazt.qjq.w
                public void hp(long j2, int i2, int i3) {
                    function.apply(j.hp().hp(8172).hp(Void.class).hp(8014, Integer.valueOf(i2)).hp(8075, Integer.valueOf(i3)).hp(8074, Long.valueOf(j2)).l());
                }
            };
        }
        return null;
    }
}
