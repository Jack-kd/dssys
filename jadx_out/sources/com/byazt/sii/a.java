package com.byazt.sii;

import com.byazt.jz.vv;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1175, 54})
/* loaded from: classes3.dex */
public abstract class a {
    public static final String hp = "a";

    /* renamed from: l, reason: collision with root package name */
    public final Set<String> f25467l = new HashSet(1);

    @com.byazt.kj.hp(hp = {0, 1, 1175, 735})
    /* renamed from: com.byazt.sii.a$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[j.values().length];
            hp = iArr;
            try {
                iArr[j.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[j.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[j.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public abstract void hp();

    public abstract void hp(String str);

    public final synchronized boolean hp(String str, int i2) {
        if (i2 == 0) {
            return hp(str, j.GRANTED);
        }
        return hp(str, j.DENIED);
    }

    public synchronized boolean l(String str) {
        return true;
    }

    public final synchronized boolean hp(final String str, j jVar) {
        this.f25467l.remove(str);
        int i2 = AnonymousClass5.hp[jVar.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                vv.a().post(new Runnable() { // from class: com.byazt.sii.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.hp(str);
                    }
                });
                return true;
            }
            if (i2 == 3) {
                if (l(str)) {
                    if (this.f25467l.isEmpty()) {
                        vv.a().post(new Runnable() { // from class: com.byazt.sii.a.3
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.hp();
                            }
                        });
                        return true;
                    }
                } else {
                    vv.a().post(new Runnable() { // from class: com.byazt.sii.a.4
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.hp(str);
                        }
                    });
                    return true;
                }
            }
        } else if (this.f25467l.isEmpty()) {
            vv.a().post(new Runnable() { // from class: com.byazt.sii.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.hp();
                }
            });
            return true;
        }
        return false;
    }

    public final synchronized void hp(String[] strArr) {
        Collections.addAll(this.f25467l, strArr);
    }
}
