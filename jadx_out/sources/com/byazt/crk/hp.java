package com.byazt.crk;

import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 160, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.ke.hp, com.byazt.ke.l {
    public final com.byazt.ow.jx hp;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f18960l = false;

    public hp(com.byazt.ow.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.ke.hp
    public Map<String, Object> hp(File file) {
        if (file.getName().endsWith(".prop")) {
            return new l(this.hp, this.f18960l).hp(file);
        }
        File file2 = new File(file.getParent(), file.getName() + ".prop");
        return (!file2.exists() || file2.length() <= 0) ? file.getName().endsWith("xml") ? w.hp() ? new w(this.hp, this.f18960l).hp(file) : new a(this.hp, this.f18960l).hp(file) : new ConcurrentHashMap() : new l(this.hp, this.f18960l).hp(file2);
    }

    @Override // com.byazt.ke.l
    public void hp(Map<String, Object> map, File file) throws Throwable {
        if (!file.getName().endsWith(".prop")) {
            file = new File(file.getParent(), file.getName() + ".prop");
        }
        file.setReadable(true, false);
        new l(this.hp, this.f18960l).hp(map, file);
    }
}
