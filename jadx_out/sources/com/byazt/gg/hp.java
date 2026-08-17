package com.byazt.gg;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 748, 28})
/* loaded from: classes2.dex */
public class hp implements s {
    @Override // com.byazt.gg.s
    public List<eb> hp() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new eb("slide") { // from class: com.byazt.gg.hp.1
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.j(context);
            }
        });
        arrayList.add(new eb("tap") { // from class: com.byazt.gg.hp.2
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.w(context);
            }
        });
        arrayList.add(new eb("timer") { // from class: com.byazt.gg.hp.3
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.a(context);
            }
        });
        arrayList.add(new eb("touchStart") { // from class: com.byazt.gg.hp.4
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.e(context);
            }
        });
        arrayList.add(new eb("touchEnd") { // from class: com.byazt.gg.hp.5
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.q(context);
            }
        });
        arrayList.add(new eb("animateState") { // from class: com.byazt.gg.hp.6
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.hp(context);
            }
        });
        arrayList.add(new eb("timerState") { // from class: com.byazt.gg.hp.7
            @Override // com.byazt.gg.eb
            public com.byazt.it.l hp(Context context) {
                return new com.byazt.it.s(context);
            }
        });
        return arrayList;
    }
}
