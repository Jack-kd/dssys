package com.byazt.gog;

/* loaded from: classes2.dex */
public interface hp {

    @com.byazt.kj.hp(hp = {0, 1, 1654, 170})
    /* renamed from: com.byazt.gog.hp$hp, reason: collision with other inner class name */
    public static final class C0257hp {
        public static hp hp(final com.byazt.gu.jx jxVar) {
            return new hp() { // from class: com.byazt.gog.hp.hp.1
                @Override // com.byazt.gog.hp
                public void hp() {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp();
                    }
                }

                @Override // com.byazt.gog.hp
                public void jx(long j2, long j3, String str, String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.jx(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.gog.hp
                public void l(long j2, long j3, String str, String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.l(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, long j3, String str, String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.gog.hp
                public void hp(long j2, String str, String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, str, str2);
                    }
                }

                @Override // com.byazt.gog.hp
                public void hp(String str, String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(str, str2);
                    }
                }
            };
        }
    }

    void hp();

    void hp(long j2, long j3, String str, String str2);

    void hp(long j2, String str, String str2);

    void hp(String str, String str2);

    void jx(long j2, long j3, String str, String str2);

    void l(long j2, long j3, String str, String str2);
}
