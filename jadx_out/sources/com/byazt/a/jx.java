package com.byazt.a;

import com.byazt.f.e;
import com.byazt.f.gu;
import com.byazt.fu.DownloadInfo;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 54, 30})
/* loaded from: classes2.dex */
public class jx implements gu {
    public static volatile jx hp;

    /* renamed from: l, reason: collision with root package name */
    public List<gu> f17949l;

    private jx() {
        ArrayList arrayList = new ArrayList();
        this.f17949l = arrayList;
        arrayList.add(new l());
        this.f17949l.add(new hp());
    }

    public static jx hp() {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.f.gu
    public void hp(DownloadInfo downloadInfo, e eVar) {
        if (downloadInfo != null && this.f17949l.size() != 0) {
            hp(downloadInfo, 0, eVar);
        } else if (eVar != null) {
            eVar.hp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final DownloadInfo downloadInfo, final int i2, final e eVar) {
        if (i2 != this.f17949l.size() && i2 >= 0) {
            this.f17949l.get(i2).hp(downloadInfo, new e() { // from class: com.byazt.a.jx.1
                @Override // com.byazt.f.e
                public void hp() {
                    jx.this.hp(downloadInfo, i2 + 1, eVar);
                }
            });
        } else {
            eVar.hp();
        }
    }
}
